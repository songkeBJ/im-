package com.sellerNet.backManagement.controller.imApp;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.alipay.util.AliPayMsg;
import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.dto.RechargeRecordDto;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Payment;
import com.sellerNet.backManagement.entity.RechargeRecord;
import com.sellerNet.backManagement.entity.Set;
import com.sellerNet.backManagement.entity.TransferAccount;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserCash;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.CertificationService;
import com.sellerNet.backManagement.service.CodeService;
import com.sellerNet.backManagement.service.PaymentService;
import com.sellerNet.backManagement.service.RechargeRecordService;
import com.sellerNet.backManagement.service.SetService;
import com.sellerNet.backManagement.service.TransferAccountService;
import com.sellerNet.backManagement.service.UserCashService;
import com.sellerNet.backManagement.service.im.ImFriendService;
import com.sellerNet.backManagement.utils.Constant;
import com.sellerNet.backManagement.utils.NumberUtil;
import com.sellerNet.backManagement.utils.StringUtil;
/**
 * 钱包相关接口
 * 1、绑定银行卡
 * 2、充值
 * 3、提现
 * 5、发送短信验证码
 * 6、修改个人信息
 * 7、根据手机号获取用户信息
 * 8、设置支付密码
 * 9、验证支付密码
 * 10、根据用户id和好友id获取用户信息
 * 11、零钱明细
 * 
 */
@RestController
@RequestMapping({"api/users/banks"})
public class PaymentManagerController extends BaseController
{
  private static final Logger LOGGER = LoggerFactory.getLogger(PaymentManagerController.class);

  @Resource
  private PaymentService paymentService;

  @Resource
  private CodeService codeService;

  @Resource
  private ImFriendService imFriendService;
  
  @Resource
  private UserCashService userCashService;
  
  @Resource
  private TransferAccountService transferAccountService;
  
  @Resource
  private RechargeRecordService rechargeRecordService;
  
  @Resource
  private AppUserOneService userOneService;
  
  @Resource
  private AppUserService userService;
  
  @Resource
  private CertificationService certificationService;
  
  @Resource
  private SetService setService;
  
	

  /**
   * 绑定银行卡
   */
  @ResponseBody
  @RequestMapping(value={"bindCard.do"}, method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult bindCard(@RequestParam(value="id", required=false) Long userId,
		  					 @RequestParam(value="username", required=false) String username,
		                     @RequestParam(value="idcard", required=false) String idcard,
		                     @RequestParam(value="bankName", required=false) String bankName,
		  					 @RequestParam(value="cardNo", required=false) String cardNo
		  				     ) { 
	  JsonResult jsonResult = new JsonResult();
	  //<editor-fold desc="step1 : 校验入参>
	  if (userId == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("用户id不能为空");
		  return jsonResult;
	  }
	  if (username == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("用户名不能为空");
		  return jsonResult;
	  }
	  if (idcard == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("身份证号不能为空");
		  return jsonResult;
	  }
	  if (bankName == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("银行名称不能为空");
		  return jsonResult;
	  }
	  if (cardNo == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("卡号不能为空");
		  return jsonResult;
	  }
	  //验证银行卡是否重复绑定
	  Map map = new HashMap();
	  map.put("cardNo", cardNo);
	  List<Payment> payments =  paymentService.selectParam(map);
	  if(payments.size()>0){
		  jsonResult.setErrorDescription("该银行卡已经被绑定,不能重复绑定");
		  return jsonResult;
	  }
	  //<editor-fold desc="step3 : 创建用户对象>
	  Payment payment = new Payment();
	  payment.setBankName(bankName);
	  payment.setIdcard(idcard);
	  payment.setCardNo(cardNo);
	  payment.setDayusername("5000");
	  payment.setOneOuota("5000");
	  payment.setUsername(username);
	  payment.preCreate(userId);
	  paymentService.insert(payment);
	  Map map2 = new HashMap();
	  map2.put("idcard", idcard);
	  jsonResult.setDataObject(paymentService.selectParam(map2));
	  //<editor-fold >
	  //<editor-fold desc="step4 : 注册用户并返回注册信息>
	  jsonResult.setErrorDescription("绑定银行卡成功");
	  return jsonResult;
	  //<editor-fold >
  }
  
  /**
   * 删除银行卡
   * @param phoneNumber
   * @param code
   * @param password
   * @return
   */
  @ResponseBody
  @RequestMapping(value={"deleteCard.do"}, method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult deleteCard(@RequestParam(value="bankId", required=false) Long bankId) { 
	  JsonResult jsonResult = new JsonResult();
	  //<editor-fold desc="step1 : 校验入参>
	  if (bankId == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("银行卡id不能为空");
		  return jsonResult;
	  }
	  //<editor-fold >
	  paymentService.delete(bankId);
	  //<editor-fold desc="step4 : 注册用户并返回注册信息>
	  jsonResult.setErrorDescription("删除银行卡成功");
	  return jsonResult;
	  //<editor-fold >
  }
  
  /**
   * 获取绑定的银行卡号码
   * @param phoneNumber
   * @param code
   * @param password
   * @return
   */
  @ResponseBody
  @RequestMapping(value="getbindCard.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult bindCard(@RequestParam(value="id", required=false) Long id) { 
	  JsonResult jsonResult = new JsonResult();
	  //<editor-fold desc="step1 : 校验入参>
	  if (id == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("用户Id不能为空");
		  return jsonResult;
	  }
	  Map map2 = new HashMap();
	  map2.put("creator", id);
	  jsonResult.setDataObject(paymentService.selectParam(map2));
	  jsonResult.setErrorDescription("获取银行卡成功");
	  return jsonResult;
	  //<editor-fold >
  }
  
  /**
   * 钱包提现
   */
  @ResponseBody
  @RequestMapping(value="withdrawals.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult Withdrawals(@RequestParam(value="id", required=false) String id,
	 							@RequestParam(value="money", required=false) String money,
	  							@RequestParam(value="bankName", required=false) String bankName,
	  							@RequestParam(value="bankNum", required=false) String bankNum,
	  							@RequestParam(value="bankRealname", required=false) String bankRealname,
	  							@RequestParam(value="weixinAccount", required=false) String weixinAccount,
	  							@RequestParam(value="zfbAccount", required=false) String zfbAccount,
	  							@RequestParam(value="token",required=false) String token) { 
	  JsonResult jsonResult = new JsonResult();
	  //检验用户是否实名认证
	  if(!certificationService.checkPass(id)){
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("该用户未实名认证通过");
		  return jsonResult;
	  }
	  if(Long.valueOf(money)<=0){
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("提现金额非法");
		  return jsonResult;
	  }
	  //<editor-fold desc="step1 : 校验入参>
	  if((!StringUtil.isNotEmpty(weixinAccount)) &&  (!StringUtil.isNotEmpty(zfbAccount))){
		  if (id == null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("用户Id不能为空");
			  return jsonResult;
		  }
		  if (money == null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("提现金额不能为空");
			  return jsonResult;
		  }
	  }
	  if(token==null){
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("token秘钥不能为空");
	        return jsonResult;  
		}else if(token!=null){
			UserOne userOne = userOneService.get(Integer.parseInt(id.toString()));
			User user = userService.byPhoneNumber(userOne.getPhoneNumber());
			if(!user.getToken().equals(token)){
				jsonResult.setCode(Constant.RESUT_FAIL);
				jsonResult.setErrorDescription("token秘钥异常");
		        return jsonResult; 
			}
			if(userOne.getMoneylock()==1){
				jsonResult.setCode("1");
				jsonResult.setErrorDescription("余额暂时被冻结,请联系客服！");
				return jsonResult;
			}
		}

	  
	  //检测金额是否正确
	  UserOne userOne2 = userOneService.get(Integer.parseInt(id.toString()));
	  BigDecimal money1 =userOne2.getBalance();
	  BigDecimal money2 = new BigDecimal(money);
	  BigDecimal redMoney =new BigDecimal(0);
	  //判断余额是否够提现
	  if(money2.compareTo(money1)==1){
		  jsonResult.setCode("1");
		  jsonResult.setErrorDescription("您的余额不足以提现!");
		  return jsonResult;
	  }
	  //扣除提现手续费
	  Set set = setService.get(2L);
		if(set!=null){
		    String cashFee = set.getContent();
		    BigDecimal cashFeeMoney = new BigDecimal(cashFee);
			BigDecimal rate =cashFeeMoney.divide(new BigDecimal(100));;
			redMoney =money2.multiply(rate);
		}
	  UserCash userCash = new UserCash();
	  userCash.setUserId(Integer.parseInt(id));
	  userCash.setMoney(money2.subtract(redMoney));
	  userCash.setRealmoney(redMoney);
	  userCash.setPoundage(redMoney);
	  userCash.setStatus(0);//0提现申请 1已汇款 2驳回
	  userCash.setBankName(bankName);
	  userCash.setBankNum(bankNum);
	  userCash.setBankRealname(bankRealname);
	  Date date = new Date();
	  userCash.setAddtime(date);
	  if(weixinAccount!=null){
		  userCash.setWeixinAccount(weixinAccount);
	  }
	  if(zfbAccount!=null){
		  userCash.setZfbAccount(zfbAccount);
	  }
	  userCashService.insert(userCash);

	  
	  userOne2.setBalance(money1.subtract(money2));
	  userOneService.update(userOne2);//余额减去提现的金额
	  
      //确认转账
      RechargeRecord rechargeRecord = new RechargeRecord();
	  rechargeRecord.preCreate(Long.valueOf(id));
	  rechargeRecord.setAmount(money);
	  rechargeRecord.setActive("7");
	  rechargeRecordService.insert(rechargeRecord);
	  //<editor-fold >
	  //<editor-fold desc="step4 : 注册用户并返回注册信息>
	  jsonResult.setErrorDescription("提现成功");
	  return jsonResult;
	  //<editor-fold >
  }
  
  /**
   * 根据用户id获取提现记录
   * @param phoneNumber
   * @param code
   * @param password
   * @return
   */
  @ResponseBody
  @RequestMapping(value="withdrawalsById.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult withdrawalsById(@RequestParam(value="id", required=false) Long id,
		                            @RequestParam(value="page", required=false,defaultValue="1") String page,
		                            @RequestParam(value="startTime", required=false) String startTime, 
									@RequestParam(value="endTime", required=false) String endTime
		  ) { 
	  JsonResult jsonResult = new JsonResult();
	  //<editor-fold desc="step1 : 校验入参>
	  if (id == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("用户Id不能为空");
		  return jsonResult;
	  }
	  UserCash userCash = new UserCash();
	  Map map = new HashMap<>();
	  map.put("start",NumberUtil.countOffset(Integer.valueOf(page)));
      map.put("end",15);
      map.put("userId", id);
      if(StringUtils.isNotBlank(startTime)){
    	  //添加日期过滤条件
    	  map.put("startTime", startTime);
      }
      if(StringUtils.isNotBlank(endTime)){
    	  //添加日期过滤条件
    	  map.put("endTime", endTime);
      }
      List<UserCash> userCashs = userCashService.selectParam(map);
      BigDecimal aa =new BigDecimal(0);
      if(userCashs!=null){
    	  for (UserCash userCash2 : userCashs) {
//    		  if(userCash2.getRealmoney()!=null){
//    			  aa =userCash2.getRealmoney();
//    		  }
    		  
    		 // userCash2.setMoney(userCash2.getMoney().add(aa));
    		   userCash2.setMoney(userCash2.getMoney());
    	  }
      }
	  //<editor-fold >
      jsonResult.setDataObject(userCashs);
	  jsonResult.setErrorDescription("提现成功");
	  return jsonResult;
	  //<editor-fold >
  }
  
  /**
   * 根据用户id获取推送提现记录
   * @param phoneNumber
   * @param code
   * @param password
   * @return
   */
  @ResponseBody
  @RequestMapping(value="getWithdrawalsMessage.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult getWithdrawalsMessage(@RequestParam(value="id", required=false) Long id,
		  								  @RequestParam(value="page", required=false) String page, 
  											@RequestParam(value="startTime", required=false) String startTime,
											@RequestParam(value="endTime", required=false) String endTime){ 
	  JsonResult jsonResult = new JsonResult();
	  //<editor-fold desc="step1 : 校验入参>
	  if (id == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("用户Id不能为空");
		  return jsonResult;
	  }
	  if (page == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("当前页不能为空");
		  return jsonResult;
	  }
	  UserCash userCash = new UserCash();
	  Map map = new HashMap<>();
	  map.put("start",NumberUtil.countOffset(Integer.valueOf(page)));
	  map.put("end",15);
	  map.put("userId", id);
	  //添加时间条件过滤
	  map.put("startTime", startTime);
	  map.put("endTime", endTime);
	  List<UserCash> userCashs = userCashService.selectParam(map);
	  //<editor-fold >
	  //<editor-fold desc="step4 : 注册用户并返回注册信息>
	  jsonResult.setDataObject(userCashs);
	  jsonResult.setErrorDescription("获取提现记录成功");
	  return jsonResult;
	  //<editor-fold >
  }
  
  /**
   * 钱包转账
   * @param phoneNumber
   * @param code
   * @param password
   * @return
   */
  @ResponseBody
  @RequestMapping(value="transferAccounts.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult transferAccounts(@RequestParam(value="id", required=false) Long id,
		  							 @RequestParam(value="toUser", required=false) Long toUser,
		  							 @RequestParam(value="weixinAccount", required=false) String weixinAccount,
		  							 @RequestParam(value="remark", required=false) String remark,
		  							 @RequestParam(value="zfbaoAccount", required=false) String zfbaoAccount,
		  							 @RequestParam(value="explain", required=false) String explain,//转账说明
	  								 @RequestParam(value="amount", required=false) String amount,
	  								 @RequestParam(value="payPassword", required=false) String payPassword,
	  								 @RequestParam(value="token",required=false) String token) { 
	  JsonResult jsonResult = new JsonResult();
	  //<editor-fold desc="step1 : 校验入参>
	  if (id == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("用户Id不能为空");
		  return jsonResult;
	  }
	  if (payPassword == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("支付密码不能为空");
		  return jsonResult;
	  }else{
		  //校验支付密码
		  User user = userService.byUserId(id);
		  String _paypassword = user.getPaypassword();
		  if(StringUtils.isBlank(_paypassword)){
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("未设置支付密码");
			  return jsonResult;
		  }else{
			  if(!_paypassword.equals(payPassword)){
				  jsonResult.setCode(Constant.RESUT_FAIL);
				  jsonResult.setErrorDescription("支付密码不正确");
				  return jsonResult;
			  }
		  }
	  }
	  if (amount == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("用户amount不能为空");
		  return jsonResult;
	  }
	  if (toUser == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("被转账人id不能为空");
		  return jsonResult;
	  }
	  if(token==null){
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("token秘钥不能为空");
	        return jsonResult;  
		}else if(token!=null){
			UserOne userOne = userOneService.get(Integer.parseInt(id.toString()));
			User user = userService.byUserId(id);
			if(!user.getToken().equals(token)){
				AliPayMsg apm = new AliPayMsg();
				jsonResult.setCode(Constant.RESUT_FAIL);
				jsonResult.setErrorDescription("token秘钥异常");
		        return jsonResult; 
			}
			if(userOne.getMoneylock()==1){
				jsonResult.setCode("1");
				jsonResult.setErrorDescription("余额暂时被冻结,请联系客服！");
				return jsonResult;
			}
		}
	  //查询转账余额
	  UserOne userOne2 = userOneService.get(Integer.parseInt(id.toString()));
	  BigDecimal money1 = userOne2.getBalance();
	  BigDecimal money2 = new BigDecimal(amount);
	  BigDecimal money3 = new BigDecimal(0);
	  
	  if(money2.compareTo(money3)==-1||money2.compareTo(money3)==0){
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("非法转账金额");
		  return jsonResult; 
	  }
	  if(money1.compareTo(money2)==-1){
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("钱包余额不足");
	      return jsonResult; 
	  }
	  if(money2.compareTo(new BigDecimal(10000))==1){
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("单日最高转账额度不能超过1000000元");
	      return jsonResult; 
	  }
	  TransferAccount account = new TransferAccount();
	  account.preCreate(id);
	  account.setToUser(toUser);
	  account.setAmount(amount);
	  account.setRemark(remark);
//	  account.setWeixinAccount(weixinAccount);
	  //account.setZfbaoAccount(zfbaoAccount);
	  transferAccountService.insert(account);
//	  if(zfbaoAccount!=null){
	  UserOne userOne = userOneService.get(Integer.parseInt(id.toString()));
	//  UserOne toUserOne = userOneService.get(Integer.parseInt(toUser.toString()));
	  BigDecimal userMoney =userOne.getBalance();
	 // BigDecimal toUserMoney =userOne.getBalance();
      BigDecimal b2 = new BigDecimal(amount);
      userOne.setBalance(userMoney.subtract(b2));//转账的人钱数减少
	 // toUserOne.setBalance(toUserMoney.add(b2));//被转账的人钱数增加
      userOneService.update(userOne);
      //userOneService.update(toUserOne); 
//	  }
	  //转账记录
      RechargeRecord rechargeRecord = new RechargeRecord();
	  rechargeRecord.setAmount(amount);
	  rechargeRecord.preCreate(id);
	  rechargeRecord.setActive("15");
	  rechargeRecordService.insert(rechargeRecord);
		  jsonResult.setErrorDescription("转账成功");
		  jsonResult.setDataObject(account);
	  return jsonResult;
	  //<editor-fold >
  }
  /**
   * 判断是否已经收款
   * @param phoneNumber
   * @param code
   * @param password
   * @return
   */
  @ResponseBody
  @RequestMapping(value="sureIfTrans.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult sureIfTrans(@RequestParam(value="id", required=false) Long id,
		  						 @RequestParam(value="transferId", required=false) Long transferId) { 
	  JsonResult jsonResult = new JsonResult();
	  if (id == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("用户Id不能为空");
		  return jsonResult;
	  }
	  if (transferId == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("转账Id不能为空");
		  return jsonResult;
	  }
	  TransferAccount transferAccount = transferAccountService.get(transferId);
	  if(transferAccount==null){
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("转账不存在");
		  return jsonResult;
	  }
	  if(transferAccount.getIsLocked()==true){
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("已过期");
		  return jsonResult;
	  }
	  if(transferAccount.isStatus()==true){
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("转账已经确认转账");
		  return jsonResult;
	  }else{
		  jsonResult.setCode(Constant.RESUT_SUCCESS);
	  }
	return jsonResult;
  }
  
  /**
   * 确实转账收钱
   */
  @ResponseBody
  @RequestMapping(value="transferSure.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult transferSure(@RequestParam(value="id", required=false) Long id,
		  						 @RequestParam(value="transferId", required=false) Long transferId) { 
	  JsonResult jsonResult = new JsonResult();
	  //<editor-fold desc="step1 : 校验入参>
	  if (id == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("用户Id不能为空");
		  return jsonResult;
	  }
	  if (transferId == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("转账Id不能为空");
		  return jsonResult;
	  }
	  TransferAccount transferAccount = transferAccountService.get(transferId);
	  if(transferAccount.getIsLocked()==true){
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("已过期");
		  return jsonResult;
	  }
	  if(transferAccount.isStatus()==true){
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("转账已经确认转账");
		  return jsonResult;
	  }
	  transferAccount.setStatus(true);
	  transferAccount.setToUser(id);
	  transferAccountService.update(transferAccount);
//	  UserOne userOne = userOneService.get(Integer.parseInt(transferAccount.getCreator().toString()));
	  UserOne toUserOne = userOneService.get(Integer.parseInt(transferAccount.getToUser().toString()));
//	  BigDecimal userMoney = new BigDecimal(userOne.getBalance());
	  BigDecimal toUserMoney = toUserOne.getBalance();
      BigDecimal b2 = new BigDecimal(transferAccount.getAmount());
//      userOne.setBalance(userMoney.subtract(b2).toString());//转账的人钱数减少
      toUserOne.setBalance(toUserMoney.add(b2));//被转账的人钱数增加
//      userOneService.update(userOne);
      userOneService.update(toUserOne);
      //确认转账
      RechargeRecord rechargeRecord = new RechargeRecord();
	  rechargeRecord.preCreate(Long.valueOf(toUserOne.getUser_id()));
	  rechargeRecord.setAmount(transferAccount.getAmount());
	  rechargeRecord.setActive("16");
	  rechargeRecordService.insert(rechargeRecord);
	  jsonResult.setErrorDescription("确认转账成功");
	  return jsonResult;
	  //<editor-fold >
  }
  
  /**
   * 查询最近转账记录
   * @param phoneNumber
   * @param code
   * @param password
   * @return
   */
  @ResponseBody
  @RequestMapping(value="transferNear.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult transferNear(@RequestParam(value="id", required=false) Long id) { 
	  List<UserOne> users  = new ArrayList<>();
	  JsonResult jsonResult = new JsonResult();
	  if (id == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("用户Id不能为空");
		  return jsonResult;
	  }
	  Map map = new HashMap<>();
	  map.put("start", NumberUtil.countOffset(Integer.valueOf(1)));
      map.put("end", 15);
      map.put("userId", id);
      map.put("createdTime", "1");
	  List<TransferAccount> transferAccounts = transferAccountService.selectParam(map);
	  for(int i=0;i<transferAccounts.size();i++){
		  TransferAccount transferAccount =  transferAccounts.get(i);
		  UserOne userOne = userOneService.get(Integer.parseInt(transferAccount.getCreator().toString()));
		  users.add(userOne);
	  }
	  jsonResult.setDataObject(transferAccounts);
	  jsonResult.setErrorDescription("转账记录");
	  return jsonResult;
	  //<editor-fold >
  }
  
  /**
   * 根据用户id查询转账记录
   * @param phoneNumber
   * @param code
   * @param password
   * @return
   */
  @ResponseBody
  @RequestMapping(value="transferById.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult transferAccountsById(@RequestParam(value="id", required=false) Long id,
		  								 @RequestParam(value="page", required=false) String page) { 
	  JsonResult jsonResult = new JsonResult();
	  if (id == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("用户Id不能为空");
		  return jsonResult;
	  }
	  if (page == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("当前页面不能为空");
		  return jsonResult;
	  }
	  List<UserOne> users  = new ArrayList<>();
	  Map map = new HashMap<>();
	  map.put("start", 0);
      map.put("end", NumberUtil.countOffset(Integer.valueOf(page)));
      map.put("userId", id);
	  List<TransferAccount> transferAccounts = transferAccountService.selectParam(map);
	  for(int i=0;i<transferAccounts.size();i++){
		  TransferAccount transferAccount =  transferAccounts.get(i);
		  UserOne userOne = userOneService.get(Integer.parseInt(transferAccount.getCreator().toString()));
		  users.add(userOne);
	  }
	  jsonResult.setDataObject(users);
	  jsonResult.setErrorDescription("转账记录");
	  return jsonResult;
	  //<editor-fold >
  }
  
  /**
   * 根据用户id和状态获取相应的充值记录
   * @param phoneNumber
   * @param code
   * @param password
   * @return
   */
  @ResponseBody
  @RequestMapping(value="getRecharge.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult transferAccounts(@RequestParam(value="id", required=false) Long id,
		  							 @RequestParam(value="type", required=false) String type,
		  							@RequestParam(value="page", required=false) String page) { 
	  JsonResult jsonResult = new JsonResult();
	  //<editor-fold desc="step1 : 校验入参>
	  if (id == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("用户Id不能为空");
		  return jsonResult;
	  }
	  if (type == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("充值类型不能为空");
		  return jsonResult;
	  }
	  if (page == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("当前页面不能为空");
		  return jsonResult;
	  }
	  Map map = new HashMap<>();
	  map.put("usrId", id);
	  map.put("active", type);
	  map.put("start", NumberUtil.countOffset(Integer.valueOf(page)));
	  map.put("end", 15);
	  List<RechargeRecord> rechargeRecords = rechargeRecordService.selectParam(map);
	  jsonResult.setDataObject(rechargeRecords);
	  jsonResult.setErrorDescription("获取充值记录成功");
	  return jsonResult;
	  //<editor-fold >
  }
  
  
  
  /**
   * 获取资金明细
   * @param phoneNumber
   * @param code
   * @param password
   * @return
   */
  @ResponseBody
  @RequestMapping(value="getMyCashDetial.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult getMyCashDetial(@RequestParam(value="id", required=false) Long id,
		                            @RequestParam(value="page", required=false,defaultValue="1") String page, 
									  @RequestParam(value="startTime", required=false) String startTime, 
									@RequestParam(value="endTime", required=false) String endTime)
  { 
	  JsonResult jsonResult = new JsonResult();
	  //<editor-fold desc="step1 : 校验入参>
	  if (id == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("用户Id不能为空");
		  return jsonResult;
	  }
	  UserCash userCash = new UserCash();
	  Map map = new HashMap<>();
	  map.put("start",NumberUtil.countOffset(Integer.valueOf(page)));
      map.put("end",15);
      map.put("userId", id);
      //添加日期过滤条件
      map.put("startTime", startTime);
      map.put("endTime", endTime);
      List<RechargeRecord> list= rechargeRecordService.selectParam(map);
      
      List<RechargeRecordDto> rrdList=new ArrayList<RechargeRecordDto>();
      for (RechargeRecord rechargeRecord : list) {
    	  RechargeRecordDto rrd =new RechargeRecordDto();
    	  if(rechargeRecord.getActive().equals("1")){
    		  rrd.setName("添加好友支付");
    		  rrd.setMoney("-"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("2")){
    		  rrd.setName("发布资讯");
    		  rrd.setMoney("-"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("3")){
    		  rrd.setName("支付诚意金");
    		  rrd.setMoney("-"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("4")){
    		  rrd.setName("被添加好友");
    		  rrd.setMoney("+"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("5")){
    		  rrd.setName("获得诚意金");
    		  rrd.setMoney("+"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("6")){
    		  rrd.setName("充值");
    		  rrd.setMoney("+"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("7")){
    		  rrd.setName("申请提现");
    		  rrd.setMoney("-"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("8")){
    		  rrd.setName("广告红包");
    		  rrd.setMoney("+"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("9")){
    		  rrd.setName("发布邀请支付");
    		  rrd.setMoney("-"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("10")){
    		  rrd.setName("邀请收入");
    		  rrd.setMoney("+"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("11")){
    		  rrd.setName("邀请失效退款");
    		  rrd.setMoney("+"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("12")){
    		  rrd.setName("人工充值");
    		  rrd.setMoney("+"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("13")){
    		  rrd.setName("人工扣款");
    		  rrd.setMoney("-"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("14")){
    		  rrd.setName("红包失效退还");
    		  rrd.setMoney("+"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("15")){
    		  rrd.setName("转账支出");
    		  rrd.setMoney("-"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("16")){
    		  rrd.setName("转账收入");
    		  rrd.setMoney("+"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("17")){
    		  rrd.setName("转账过期退还");
    		  rrd.setMoney("+"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("18")){
    		  rrd.setName("添加好友退款");
    		  rrd.setMoney("+"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("19")){
    		  rrd.setName("提现失败");
    		  rrd.setMoney("+"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("20")){
    		  rrd.setName("爽约扣除");
    		  rrd.setMoney("-"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("21")){
    		  //发红包
    		  rrd.setName("红包");
    		  rrd.setMoney("-"+rechargeRecord.getAmount());
    	  }
    	  if(rechargeRecord.getActive().equals("22")){
    		  //抢红包
    		  rrd.setName("红包");
    		  rrd.setMoney("+"+rechargeRecord.getAmount());
    	  }
    	  rrd.setTime(rechargeRecord.getCreatedTime());
    	  rrdList.add(rrd);
      }
      
      jsonResult.setDataObject(rrdList);
	  jsonResult.setErrorDescription("获取资金明细成功");
	  return jsonResult;
	  //<editor-fold >
  }
  
  
  
  
  

  
}