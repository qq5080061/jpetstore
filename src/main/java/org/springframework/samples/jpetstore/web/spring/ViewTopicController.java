package org.springframework.samples.jpetstore.web.spring;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.springframework.beans.support.PagedListHolder;
//import org.springframework.samples.jpetstore.domain.Product;
import org.springframework.samples.jpetstore.domain.Topic;
import org.springframework.samples.jpetstore.domain.logic.TopicFacade;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

/**
 * @author sun
 * @since 2015.02.26
 */
public class ViewTopicController implements Controller {
	//petstore-servlet.xml里定义的/shop/viewTopic.do的servlet的bean属性名要保持一致，否知会出错
	private TopicFacade topic;
	
	public void setTopic(TopicFacade topic) {
		this.topic = topic;
	}

	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		Map<String, Topic> model = new HashMap<String, Topic>();

//		String productId = request.getParameter("productId");
		String topicId = request.getParameter("topicId");
		if (topicId != null) {
			//PagedListHolder itemList = new PagedListHolder(this.topicFacade.getItemListByProduct(topicId));
			//itemList.setPageSize(4);
			Topic topic = this.topic.getTopic(topicId);
//			request.getSession().setAttribute("ViewProductAction_itemList", itemList);
			request.getSession().setAttribute("ViewTopicAction_topic", topic);
//			model.put("itemList", itemList);
			model.put("topic", topic);
		}
		else {
//			PagedListHolder itemList = (PagedListHolder) request.getSession().getAttribute("ViewProductAction_itemList");
			Topic topic = (Topic) request.getSession().getAttribute("ViewTopicAction_topic");
//			String page = request.getParameter("page");
//			if ("next".equals(page)) {
//				itemList.nextPage();
//			}
//			else if ("previous".equals(page)) {
//				itemList.previousPage();
//			}
//			model.put("itemList", itemList);
			model.put("topic", topic);
		}

		//topic.jsp
		return new ModelAndView("topic", model);
	}

}
