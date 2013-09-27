package net.chat.service.impl;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import net.chat.dao.WxMessageDao;
import net.chat.domain.WxMessage;
import net.chat.domain.WxMsgType;
import net.chat.service.MessageService;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Order;
import org.springframework.data.jpa.domain.Specification;

public class MessageServiceImpl implements MessageService {

	@Autowired
	private WxMessageDao messageDao;

	public Page<WxMessage> listALlMessageByAccountId(Long accountId,
			int pageNo, int pageSize) {
		pageSize = 20;
		if (pageNo == 0)
			pageNo = 0;
		Pageable pageable = new PageRequest(pageNo - 1, pageSize, new Sort(
				new Order("id")));
		Page<WxMessage> pageMessages = null;
		if (accountId == null)
			pageMessages = messageDao.findAll(pageable);
		else {
			final Long _accountId = accountId;
			Specification<WxMessage> spec = new Specification<WxMessage>() {
				public Predicate toPredicate(Root<WxMessage> root,
						CriteriaQuery<?> query, CriteriaBuilder cb) {
					return cb.equal(root.<Long> get("accountId"), _accountId);
				}

			};
			pageMessages = messageDao.findAll(spec, pageable);
		}
		return pageMessages;

	}

	public void saveMessage(WxMessage message) {
		if (message.getId() == null)
			messageDao.save(message);

	}

	public void editMessage(WxMessage message) {
		if (message.getId() != null) {
			WxMessage _message = messageDao.findOne(message.getId());
			BeanUtils.copyProperties(message, _message);
		}

	}

	public void delteMessage(Long messageId) {
		messageDao.delete(messageId);

	}

	public WxMessage findyMessageByMessageId(Long messageId) {
		return messageDao.findOne(messageId);
	}

}