package com.sellerNet.backManagement.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.AppUserOneMapper;
import com.sellerNet.backManagement.dto.UserOneCountDto;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;

@Repository
public class AppUserOneMapperImpl extends BaseDaoImpl<UserOne, Integer> implements AppUserOneMapper{
  
	public static final String SQLID_PHONENUMBER = "byPhoneNumber";
	public static final String SQLID_BYINVITE6 = "byInvite6";

	  @Resource
	  private AppUserService appUserService;
	  
	  @Resource
	  private AppUserOneService appUserOneService;
	
	public AppUserOneMapperImpl() {
		this.namespace = getClass().getName();
	}

	@Override
	public UserOne byPhoneNumber(String phoneNumber) {
		try
	    {
	      return getSqlSession().selectOne(getClass().getName() + "." + "byPhoneNumber", phoneNumber);
	    } catch (Exception e) {
	      e.printStackTrace();
	      Map map =new HashMap();
			map.put("phoneNumber", phoneNumber);
			List<UserOne> list =appUserOneService.selectParam(map);
			if(list.size()>1){
				for (UserOne userOne : list) {
					appUserOneService.delete(userOne.getUser_id());
				}
			}
			List<User> list2 =appUserService.selectParam(map);
			for (User user : list2) {
				appUserService.delete(user.getId());
			}
	    }return null;
	}

	@Override
	public List<UserOne> byUserIdAndTerms(Map map) {
		try
	    {
	      return getSqlSession().selectList(this.namespace + "." + "byUserIdAndTerms", map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
		return null;
	}

	@Override
	public List<UserOne> byInvite6(Integer userId) {
		try
	    {
	      return getSqlSession().selectList(this.namespace + "." + SQLID_BYINVITE6, userId);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
		return null;
	}


	@Override
	public Integer countCustomerServcice(Map map) {
		try
	    {
	      return getSqlSession().selectOne(this.namespace + "." + "countCustomerServiceList",map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
		return null;
	}

	@Override
	public int deleteCustomerService(List<Long> idList) {
		try
	    {
	      return getSqlSession().selectOne(this.namespace + "." + "deleteCustomerService",idList);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
		return 0;
	}

	@Override
	public Integer findmySpreadNumOne(int userId) {
		try
	    {
	      return getSqlSession().selectOne(this.namespace + "." + "findmySpreadNumOne",userId);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
		return null;
	}

	@Override
	public Integer findmySpreadNumTwo(int userId) {
		try
	    {
	      return getSqlSession().selectOne(this.namespace + "." + "findmySpreadNumTwo",userId);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
		return null;
	}

	@Override
	public Integer findmySpreadNumThree(int userId) {
		try
	    {
	      return getSqlSession().selectOne(this.namespace + "." + "findmySpreadNumThree",userId);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
		return null;
	}

	@Override
	public  List<UserOneCountDto> dayCashCount(Map map) {
		try
	    {
	      return getSqlSession().selectList(this.namespace + "." + "dayCashCount", map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
		return null;
	}

	@Override
	public Integer monthCount(Map map) {
		try
	    {
	      return getSqlSession().selectOne(getClass().getName() + "." + "monthCount",map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}

	@Override
	public Integer dayCount(Map map) {
		try
	    {
	      return getSqlSession().selectOne(getClass().getName() + "." + "dayCount",map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}

	@Override
	public Integer allCount(Map map) {
		try
	    {
	      return getSqlSession().selectOne(getClass().getName() + "." + "allCount",map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}

	@Override
	public String allPay() {
		try
	    {
	      return getSqlSession().selectOne(getClass().getName() + "." + "allUserPay");
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}
	@Override
	public String allMonthUserPay() {
		try
		{
			return getSqlSession().selectOne(getClass().getName() + "." + "allMonthUserPay");
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
	}
	@Override
	public String allDayUserPay() {
		try
		{
			return getSqlSession().selectOne(getClass().getName() + "." + "allDayUserPay");
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
	}

	@Override
	public Integer allCountBySex(Map map) {
		try
	    {
	      return getSqlSession().selectOne(getClass().getName() + "." + "allCountBySex",map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}

	@Override
	public List<Map<String, Object>> countByMonth(Map map) {
		try
	    {
	      return getSqlSession().selectList(getClass().getName() + "." + "countByMonth",map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}
  
}