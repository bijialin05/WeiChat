package net.chat.dao;

import net.chat.domain.WxUserRegist;
import net.chat.util.CreateDomainUtil;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/META-INF/spring/spring-jpa.xml" })
public class WxUserRegistDaoTest {

	@Autowired
	private WxUserRegistDao dao;

	@Test
	@Transactional
	public void testCreate() throws IllegalArgumentException, IllegalAccessException {
		WxUserRegist domain = new WxUserRegist();
		CreateDomainUtil.createDomain(domain);
		dao.save(domain);

	}

}
