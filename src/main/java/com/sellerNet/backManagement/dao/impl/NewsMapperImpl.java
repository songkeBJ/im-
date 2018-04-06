package com.sellerNet.backManagement.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.NewsMapper;
import com.sellerNet.backManagement.dto.NewsDto;
import com.sellerNet.backManagement.entity.News;
import com.sellerNet.backManagement.entity.NewsIndex;
import com.sellerNet.backManagement.entity.NewsIndexDetail;
import com.sellerNet.backManagement.entity.NewsType;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.entity.User;

@Repository
public class NewsMapperImpl extends BaseDaoImpl<News, Long> implements NewsMapper{

  public NewsMapperImpl(){
	  this.namespace = getClass().getName();
  }
  
  @Override
	public List<Map<String, Object>> countByMonth(Map map) {
		try
	    {
	      return getSqlSession().selectList(this.namespace + "." + "countByMonth", map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
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
	public List<Map<String, Object>> countByMonthMoney(Map map) {
		try
		{
			return getSqlSession().selectList(this.namespace + "." + "countByMonthMoney", map);
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
	}
	
	@Override
	public Double monthCountMoney(Map map) {
		try
		{
			return getSqlSession().selectOne(getClass().getName() + "." + "monthCountMoney",map);
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
	}
	
	@Override
	public Double dayCountMoney(Map map) {
		try
		{
			return getSqlSession().selectOne(getClass().getName() + "." + "dayCountMoney",map);
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
	}
	
	@Override
	public Double allCountMoney(Map map) {
		try
		{
			return getSqlSession().selectOne(getClass().getName() + "." + "allCountMoney",map);
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
	}
  @Override
  public PagingResult<NewsDto> selectParamForBack(PageEntity pageEntity)
  {
	  try
	    {
	      int page = (pageEntity.getPage() == null) || ("".equals(pageEntity.getPage())) ? 1 : pageEntity.getPage().intValue();
	      int size = (pageEntity.getSize() == null) || ("".equals(pageEntity.getSize())) ? 15 : pageEntity.getSize().intValue();

	      RowBounds rowBounds = new RowBounds((page - 1) * size, size);

	      Map param = pageEntity.getParams();
	      if (param != null) {
	        param.put("orderColumn", pageEntity.getOrderColumn());
	        param.put("orderTurn", pageEntity.getOrderTurn());
	      } else {
	        param = new HashMap();
	        param.put("orderColumn", pageEntity.getOrderColumn());
	        param.put("orderTurn", pageEntity.getOrderTurn());
	      }

	      List resultList = getSqlSession().selectList(this.namespace + "." + "selectParamForBack", param,rowBounds);
	      int totalSize = count(pageEntity.getParams());

	      PagingResult pagingResult = new PagingResult();
	      pagingResult.setCurrentPage(page);
	      pagingResult.setTotalSize(totalSize);
	      pagingResult.setResultList(resultList);
	      return pagingResult;
	    }
	    catch (Exception e) {
	      e.printStackTrace();
	    }return null;
  }

@Override
public List<NewsIndex> getNewsListByType(Map map) {
	try
    {
	  return getSqlSession().selectList(getClass().getName() + "." + "getNewsListByType",map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}


@Override
public List<NewsIndex> getHotNewsList(Map map) {
	try
    {
      return getSqlSession().selectList(getClass().getName() + "." + "getHotNewsList",map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}

@Override
public List<NewsIndex> getCommendNewsList(Map map) {
	try
    {
      return getSqlSession().selectList(getClass().getName() + "." + "getCommendNewsList",map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}

@Override
public List<Map<String, String>> getHotNews(Map map) {
	try
    {
      return getSqlSession().selectList(getClass().getName() + "." + "getHotNews",map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}

@Override
public NewsIndexDetail getNewsIndexDetail(Long id) {
	try
    {
      return getSqlSession().selectOne(getClass().getName() + "." + "getNewsIndexDetail",id);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}

@Override
public void updateNewsLookTime(Long newsId) {
	try
    {
      getSqlSession().update(getClass().getName() + "." + "updateNewsLookTime",newsId);
    } catch (Exception e) {
      e.printStackTrace();
    }
}

@Override
public void insertNewsMoney(Map newsMoneyMap) {
	try
    {
      getSqlSession().insert(getClass().getName() + "." + "insertNewsMoney",newsMoneyMap);
    } catch (Exception e) {
      e.printStackTrace();
    }
	
}

@Override
public void insertNewsType(Map map) {
	try
    {
      getSqlSession().insert(getClass().getName() + "." + "insertNewsType",map);
    } catch (Exception e) {
      e.printStackTrace();
    }
	
}

@Override
public int deleteNewsType(List list) {
	try
    {
      return getSqlSession().delete(getClass().getName() + "." + "deleteNewsType",list);
    } catch (Exception e) {
      e.printStackTrace();
    }return 0;
}

@Override
public List<Map> getAllNewsType() {
	try
    {
      return getSqlSession().selectList(getClass().getName() + "." + "getAllNewsType");
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}

@Override
public void updateNewsType(Map map) {
	try
    {
      getSqlSession().update(getClass().getName() + "." + "updateNewsType",map);
    } catch (Exception e) {
      e.printStackTrace();
    }
}

@Override
public Map getNewsType(Map map) {
	try
    {
      return getSqlSession().selectOne(getClass().getName() + "." + "getNewsType",map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}

@Override
public Map getFocusNews(Long newsId) {
	try
    {
      return getSqlSession().selectOne(getClass().getName() + "." + "getFocusNews",newsId);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}

@Override
public List<NewsIndex> getMyNewsList(Map map) {
	try
    {
      return getSqlSession().selectList(getClass().getName() + "." + "getMyNewsList",map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}

@Override
public List<NewsIndex> getNewsListByKeyWord(Map map) {
	try
    {
      return getSqlSession().selectList(getClass().getName() + "." + "getNewsListByKeyWord",map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}

@Override
public List<NewsIndex> getFixedNewsList(Map map) {
	try
    {
      return getSqlSession().selectList(getClass().getName() + "." + "getFixedNewsList",map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}

@Override
public NewsType getNewsTypeParam(Map map) {
	try
    {
      return getSqlSession().selectOne(getClass().getName() + "." + "getNewsTypeParam",map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}

@Override
public void insertRecord(News news) {
	try
    {
      getSqlSession().insert(getClass().getName() + "." + "insertRecord",news);
    } catch (Exception e) {
      e.printStackTrace();
    }
	
}

}