package com.sellerNet.backManagement.config;

import com.sellerNet.backManagement.entity.Result;
import com.sellerNet.backManagement.utils.StringUtil;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import org.apache.log4j.Logger;

public class ErrCodeConfig{
  private static Logger logger = Logger.getLogger(ErrCodeConfig.class);
  private static HashMap<String, String> ERROR_CODE_MAP;
  public static final String CODE_ILLPARAMERROR = "SE1000";
  public static final String CODE_EXCEPTION = "SE1001";
  public static final String CODE_TIMEDOUT = "SE1002";
  public static final String CODE_HTTP_STATUSCODE = "SE1003";
  public static final String CODE_PARSEEXCEPTION = "SE1004";
  public static final String CODE_INVALIDPARAMS = "SE1007";
  public static final String DB_EXCEPTION = "SE1008";
  public static final String URI_SYNTAX_EXCEPTION = "SE1009";
  public static final String RSV_DATA_UNIQUE_EXCEPTION = "BE1000";
  public static final String RSV_DATA_ISEMPTY_EXCEPTION = "BE1001";
  public static final String RSV_CTRL_NOT_FOUND_EXCEPTION = "BE1002";
  public static final String RSV_CTRL_NAME_EXISTED = "BE1003";
  public static final String RSV_CTRL_BACKUP_EXCEPTION = "BE1004";
  public static final String RSV_DATA_EXPORT_EXCEPTION = "BE1005";
  public static final String CODE_UNLOGIN = "BE1006";
  public static final String CODE_LIMITED = "BE1007";
  public static final String TIP_ID_EXISTED = "BE1008";
  public static final String IP_CITYCODE_UNKNOWN = "BE1009";
  public static final String RCT_DATA_IS_NULL_EXCEPTION = "BE1010";
  public static final String RCT_STATUS_ERROR = "BE1011";
  public static final String RCT_UPLOAD_FILE_ERROR = "BE1012";
  public static final String RCT_ANALYSIS_FILE_ERROR = "BE1013";
  public static final String RCT_ACTIVE_DATA_EMPTY = "BE1014";
  public static final String BASEDATA_PRODUCT_NO_FOUND = "BE1015";
  public static final String WRONG_CAPTCHA = "BE1016";
  public static final String UPLOAD_FILE_TYPE_ERROR = "BE1017";

  public static <T extends Result> T injectError(T result, String errorCode){
    result.setCode(errorCode);
    result.setErrorDescription(getErrorMesByCode(errorCode));
    return result;
  }

  public static String getErrorMesByCode(String ErrorCode){
    String errorMsg = (String)ERROR_CODE_MAP.get(ErrorCode);
    return StringUtil.empty(errorMsg) ? "未知错误" : errorMsg;
  }

  public static void init() throws IOException, SQLException{
    logger.info("本地初始化errorCodeMap信息");

    ERROR_CODE_MAP = new HashMap();
    ERROR_CODE_MAP.put("SE1000", "请求参数非法");
    ERROR_CODE_MAP.put("SE1001", "系统忙，请稍后重试");
    ERROR_CODE_MAP.put("SE1002", "接口调用超时错误码");
    ERROR_CODE_MAP.put("SE1003", "调用接口返回http状态码错误");
    ERROR_CODE_MAP.put("SE1004", "解析流错误");
    ERROR_CODE_MAP.put("SE1007", "无效入参错误");
    ERROR_CODE_MAP.put("SE1008", "数据库异常");
    ERROR_CODE_MAP.put("SE1009", "构造接口地址异常");

    ERROR_CODE_MAP.put("BE1000", "预约数据唯一性约束异常");
    ERROR_CODE_MAP.put("BE1001", "预约数据字段非空异常");
    ERROR_CODE_MAP.put("BE1002", "预约规则不存在");
    ERROR_CODE_MAP.put("BE1003", "预约规则名称已存在");
    ERROR_CODE_MAP.put("BE1004", "预约规则归档失败");
    ERROR_CODE_MAP.put("BE1005", "预约数据导出异常");
    ERROR_CODE_MAP.put("BE1006", "用户未登录");
    ERROR_CODE_MAP.put("BE1007", "用户类型不符");
    ERROR_CODE_MAP.put("BE1008", "错误编码已经存在");
    ERROR_CODE_MAP.put("BE1009", "未分配或者内网IP");
    ERROR_CODE_MAP.put("BE1010", "没有查到数据文件上传表中的对应的数据");
    ERROR_CODE_MAP.put("BE1011", "数据导入,数据激活状态不正确");
    ERROR_CODE_MAP.put("BE1012", "excel文件上传失败");
    ERROR_CODE_MAP.put("BE1013", "excel文件解析失败");
    ERROR_CODE_MAP.put("BE1014", "要激活的数据为空!!");
    ERROR_CODE_MAP.put("BE1015", "销售品不存在");
    ERROR_CODE_MAP.put("BE1016", "验证码输入有误");
    ERROR_CODE_MAP.put("BE1017", "上传文件类型错误");

    ERROR_CODE_MAP.put("117", "用户名与手机号码不匹配");
    ERROR_CODE_MAP.put("760", "当前号码有在途变更请求中");

    logger.info("本地初始化errorCodeMap信息完毕");
  }

  public static void init(Connection conn)throws IOException, SQLException{
	  
  }
}