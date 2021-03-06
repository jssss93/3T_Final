package com.kh.iclass.member.join;

import java.io.PrintWriter;
import java.security.Key;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.common.util.RSAKeySet;


@Controller

public class JoinController {
	
	String authNum = "";

	@Resource(name="joinService")
	private JoinService joinService;
	
	@RequestMapping(value="/joinStep1")
	public ModelAndView joinStep1(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/joinStep1");
		return mv;
	}
	
	@RequestMapping(value="/joinStep1Email")
	public ModelAndView modal_email(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/joinEmail");
		return mv;
	}
	
	/*@RequestMapping("/join/privacy")
	public String privacyForm() throws Exception {
		return "member/privacy";
	}*/
	
	//회원가입 폼으로
	@RequestMapping(value="/joinStep2")
	public ModelAndView joinStep2(Model model,HttpSession session,HttpServletResponse response, HttpServletRequest request,CommandMap Map)throws Exception{
		ModelAndView mv = new ModelAndView();
		RSAKeySet keySet = new RSAKeySet();
		
		
		/*if(! request.getHeader("Referer").equals("http://3T/join/privacy")) {
			mv.addObject("/error");
			return mv;
		}*/
		
		
		/* 세션에 개인키 저장 */
		session.setAttribute("RSA_private", keySet.getPrivateKey());
		
		/* Front Side로 공개키 전달 */
		model.addAttribute("Modulus", keySet.getPublicKeyModulus());
		model.addAttribute("Exponent", keySet.getPublicKeyExponent());
		
		//이메일 인증한값 폼으로 넘겨주기위해.
		String email1 = (String) Map.getMap().get("email1");
		String email2 = (String) Map.getMap().get("email2");
		
		mv.setViewName("member/joinStep222");
		session.setAttribute("email1",email1);
		session.setAttribute("email2",email2);
		
		return mv;
	}
	
	//회원가입 성공시
	@RequestMapping(value="/joinComplete", method=RequestMethod.POST)
	public ModelAndView joinComplete(CommandMap commandMap, HttpServletRequest request,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		String EMAIL = request.getParameter("EMAIL1")+"@"+request.getParameter("EMAIL2");
		commandMap.getMap().put("EMAIL", EMAIL);
			
		
		if(session.getAttribute("RSA_private") != null) {
			
			System.out.println("(Key)session.getAttribute(\"RSA_private\")="+(Key)session.getAttribute("RSA_private"));
			//(Key)session.getAttribute("RSA_private")=sun.security.rsa.RSAPrivateCrtKeyImpl@fff09455
			
			if(joinService.insertMember2(commandMap.getMap(),(Key)session.getAttribute("RSA_private")) > 0)
			{
				//if(memberService.regist(member, (Key)session.getAttribute("RSA_private")) > 0)
				mv.addObject("Modulus",commandMap.get("modulus"));
				mv.addObject("Exponent",commandMap.get("exponent"));
				mv.setViewName("member/loginForm");
			}
				
			
			return mv;
		}

		session.removeAttribute("RSA_private");
		
		
		joinService.insertMember(commandMap.getMap(), request);
		mv.setViewName("member/loginForm");
		return mv;
		
	}
	
	//회원가입시 아이디 중폭체크.
	@RequestMapping(value="/checkId")
	@ResponseBody
	public void checkId(HttpServletRequest request, HttpServletResponse response, CommandMap commandMap) throws Exception{
		PrintWriter out = response.getWriter();
		String paramId= (request.getParameter("MEMBER_ID") == null)?"":String.valueOf(request.getParameter("MEMBER_ID"));
		int checkId = joinService.chekcId(paramId);

		out.print(checkId);
		out.flush();
		out.close();
	}
	
	//이건 위랑 같은데 내가안씀 원래있던거인듯 그래서 주석처리해놓고 이것떄매 오류안나면 지워버리기~
/*	@RequestMapping(value="/joinStep2/checkId")
	@ResponseBody
	public void checkId2(HttpServletRequest request, HttpServletResponse response, CommandMap commandMap) throws Exception{
		PrintWriter writer = response.getWriter();
		String id= (request.getParameter("MEMBER_ID") == null)?"":String.valueOf(request.getParameter("MEMBER_ID"));
		String id= commandMap.getMap().get("id").toString();
		int checkId = joinService.chekcId(id);
		
		writer.print(checkId);
		writer.flush();
		writer.close();
	}*/

	//이메일 인증 확인후 메일보내기
	@RequestMapping(value = "/joinStep1/modal_email_auth")
	public ModelAndView email_auth(HttpServletResponse response, HttpServletRequest request,CommandMap Map) throws Exception{
		System.out.println("접속?");
		
		String email = (String) Map.getMap().get("email");
		Map.getMap().put("EMAIL", email);
		
		//이메일 가입되있는지 확인.
		int checkNum = joinService.checkMember(Map.getMap());
		
		if(checkNum==0){
			authNum = RandomNum();
			sendEmail(email.toString(),authNum);
		}
		String checkNumString=String.valueOf(checkNum);
		PrintWriter writer =response.getWriter();
		writer.write(checkNumString);
		writer.flush();
		writer.close();
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("email",email);
		mv.addObject("authNum", authNum);
		mv.setViewName("joinStep1");

		return mv;
	}
	
	//이메일 인증 성공시 인증번호 넘겨주기
	@RequestMapping(value="/joinStep1/modal_email_auth_success", method=RequestMethod.POST)
	public @ResponseBody String clickMethod (HttpServletRequest request) throws Exception   {
	         
		String str = authNum;
		System.out.println("authNum뭐냐?"+authNum);
		return str;
	}

	//이메일인증 이메일 전송
	private void sendEmail(String email,String authNum){
		String host ="smtp.gmail.com";
		String subject = "3T 인증 번호 전달";
		String fromName ="3T 관리자";
		String from="khiclass@gmail.com";//보내는메일
		String to1 = email;
		
		String content = "인증번호[" + authNum +"]";
		
		try{
			Properties props = new Properties();
			
			props.put("mail.smtp,starttls.enable","true");
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host",host);
			props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			
			props.put("mail.smtp.port", "465");
			props.put("mail.smtp.user", from);
			props.put("mail.smtp.auth", "true");
			
			Session mailSession = Session.getInstance(props,new javax.mail.Authenticator(){
					@Override
					protected PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication("khiclass@gmail.com","khacademy");
			}
			});
			
			Message msg = new MimeMessage(mailSession);
			msg.setFrom(new InternetAddress(from,MimeUtility.encodeText(fromName,"UTF-8","B"))); //보내는사람설정
			
			InternetAddress[] address1 = {new InternetAddress(to1)};
			
			msg.setRecipients(Message.RecipientType.TO, address1); //받는사람설정1
			msg.setSubject(subject); //제목설정
			msg.setSentDate(new java.util.Date()); //보내는 날짜설정
			msg.setContent(content,"text/html;charset=utf-8"); //내용설정
			
			Transport.send(msg);
		}catch (MessagingException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
			
		}
	}
	
	//이메일 인증 인증번호  주기.
	public String RandomNum(){
		StringBuffer buffer = new StringBuffer();
		for(int i = 0;i<=6;i++){
			int n= (int)(Math.random() * 10);
			buffer.append(n);
		}
		return buffer.toString();
	}
	//이메일인증 추가 여기까지

	
}