package org.springframework.samples.jpetstore.dao.ibatis;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.samples.jpetstore.dao.TopicDao;
import org.springframework.samples.jpetstore.domain.Topic;

public class SqlMapTopicDao extends SqlMapClientDaoSupport implements TopicDao {

  public List getTopicByNativeId(String nativeId) throws DataAccessException {
    return getSqlMapClientTemplate().queryForList("getTopicByNativeId", nativeId);
  }

  public Topic getTopic(String id) throws DataAccessException {
    return (Topic) getSqlMapClientTemplate().queryForObject("getTopic", id);
  }

/*
  public List searchProductList(String keywords) throws DataAccessException {
    Object parameterObject = new ProductSearch(keywords);
    return getSqlMapClientTemplate().queryForList("searchProductList", parameterObject);
  }
*/

  /* Inner Classes */
/*
  public static class ProductSearch {

    private List keywordList = new ArrayList();

    public ProductSearch(String keywords) {
      StringTokenizer splitter = new StringTokenizer(keywords, " ", false);
      while (splitter.hasMoreTokens()) {
        this.keywordList.add("%" + splitter.nextToken() + "%");
      }
    }

    public List getKeywordList() {
      return keywordList;
    }
  }
*/
}
