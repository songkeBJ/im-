package com.sellerNet.backManagement.dao.impl.im;

import com.sellerNet.backManagement.dao.ImRequestMapper;
import com.sellerNet.backManagement.dao.impl.BaseDaoImpl;
import com.sellerNet.backManagement.dto.im.ImRequestDTO;
import com.sellerNet.backManagement.entity.im.ImRequest;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ImRequestMapperImpl extends BaseDaoImpl<ImRequest, Long>
  implements ImRequestMapper
{
  public static final String SQLID_FINDALLREQUESTS = "findAllRequests";
  public static final String SQLID_FINDNOTHANDLEDGROUPREQUESTS = "findNotHandledGroupRequests";
  public static final String SQLID_CLEARHISTORYREQUESTS = "clearHistoryRequests";
  public static final String SQLID_FINDACCEPTEDORNOHANDLEDFRIENDREQUEST = "findAcceptedOrNoHandledFriendRequest";

  public ImRequestMapperImpl()
  {
    this.namespace = getClass().getName();
  }

  public List<ImRequestDTO> findAllRequests(Map param)
  {
    try {
      return getSqlSession().selectList(this.namespace + "." + "findAllRequests", param);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public List<ImRequest> findNotHandledGroupRequests(Map param)
  {
    try
    {
      return getSqlSession().selectList(this.namespace + "." + "findNotHandledGroupRequests", param);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public int clearHistoryRequests(Map param)
  {
    int rows = 0;
    try {
      rows = getSqlSession().update(this.namespace + "." + "clearHistoryRequests", 
        param);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return rows;
  }

  public List<ImRequest> findAcceptedOrNoHandledFriendRequest(Map param)
  {
    try
    {
      return getSqlSession().selectList(this.namespace + "." + "findAcceptedOrNoHandledFriendRequest", param);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

@Override
public Integer countAllAdd(Map map) {
	 try
	    {
	      return getSqlSession().selectOne(this.namespace + "." + "countAllAdd", map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
}

@Override
public int delHistoryRequests(Map paramMap) {
	   int rows = 0;
	    try {
	      rows = getSqlSession().update(this.namespace + "." + "delHistoryRequests", 
	    		  paramMap);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	    return rows;
}

@Override
public String countBydis(Map map) {
	 try
	    {
	      return getSqlSession().selectOne(this.namespace + "." + "countBydis", map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
}

@Override
public List<ImRequest> selHistoryRequests(Map map) {
	  try
	    {
	      return getSqlSession().selectList(this.namespace + "." + "selHistoryRequests", map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
}

@Override
public List<ImRequestDTO> SayHelloRequests(Map map) {
	  try
	    {
	      return getSqlSession().selectList(this.namespace + "." + "SayHelloRequests", map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
}

@Override
public List<ImRequest> findOutTimeAccept() {
	  try
	    {
	      return getSqlSession().selectList(this.namespace + "." + "findOutTimeAccept");
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
}
}