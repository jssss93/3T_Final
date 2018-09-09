/*package com.kh.iclass.member;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.social.connect.Connection;
import org.springframework.social.connect.ConnectionFactoryLocator;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.connect.web.ConnectController;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.servlet.view.RedirectView;

import com.kh.iclass.common.map.CommandMap;



@Controller
@RequestMapping("/connect")
public class FacebookTestController extends ConnectController {
	//http://osozaki.tistory.com/m/13
	
	
	
	final Logger logger = LoggerFactory.getLogger(this.getClass());
	private String TARGET_URL = new String();

	@Resource(name = "memberService")
	private MemberService memberService;

	@Resource(name="inMemoryConnectionRepository")
	private ConnectionRepository connectionRepository;

	@Inject
	public FacebookTestController(ConnectionFactoryLocator connectionFactoryLocator, ConnectionRepository connectionRepository) {
		super(connectionFactoryLocator, connectionRepository);
	}

	//connect ???? 최초 연결 시도 하는 페이지?
	@RequestMapping(value="/test123/{providerId}", method=RequestMethod.POST)
	public RedirectView connect(CommandMap commandMap, NativeWebRequest request) {
		HttpServletRequest httpServletRequest = (HttpServletRequest)request.getNativeRequest();
		TARGET_URL = httpServletRequest.getHeader("REFERER");
		return super.connect(commandMap.get("MEMBER_ID").toString(), request);
	}

	@RequestMapping(value="/test123/{providerId}", method= RequestMethod.GET, params="code")
	public RedirectView oauth2Callback(@PathVariable String providerId, NativeWebRequest request) {
		RedirectView redirectView = super.oauth2Callback(providerId, request);

		// 사용자 정보 가져오기
		Connection<Facebook> connection = connectionRepository.findPrimaryConnection(Facebook.class);
		Facebook facebook = connection.getApi();
		String [] fields = { "id", "age_range", "email", "first_name", "gender",
				"last_name", "link", "locale", "name", "third_party_id", "verified" };
		User userProfile = facebook.fetchObject("me", User.class, fields);

		// 로그인 처리
		memberService.onAuthenticationBinding(new MemberVO(), userProfile);
		redirectView.setUrl(TARGET_URL);
		return redirectView;
	}
}*/