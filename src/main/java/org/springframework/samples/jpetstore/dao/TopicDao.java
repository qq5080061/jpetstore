package org.springframework.samples.jpetstore.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.samples.jpetstore.domain.Topic;

public interface TopicDao {

	List getTopicByNativeId(String nativeId) throws DataAccessException;

  //List searchProductList(String keywords) throws DataAccessException;

	Topic getTopic(String id) throws DataAccessException;

}
