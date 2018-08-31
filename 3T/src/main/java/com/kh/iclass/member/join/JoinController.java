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
import com.kh.iclass.member.util.RSAKeySet;


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
		
		String email1 = (String) Map.getMap().get("email1");
		String email2 = (String) Map.getMap().get("email2");
		
		mv.setViewName("member/joinStep222");
		session.setAttribute("email1",email1);
		session.setAttribute("email2",email2);
		
		return mv;
	}
	
	@RequestMapping(value="/joinComplete", method=RequestMethod.POST)
	public ModelAndView joinComplete(CommandMap commandMap, HttpServletRequest request,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		String EMAIL = request.getParameter("EMAIL1")+"@"+request.getParameter("EMAIL2");
		Map<String, Object> memberMap=new HashMap<String, Object>();
		commandMap.getMap().put("EMAIL", EMAIL);
			
		/*if(session.getAttribute("RSA_private") != null) {
			
			System.out.println("(Key)session.getAttribute(\"RSA_private\")="+(Key)session.getAttribute("RSA_private"));
			//(Key)session.getAttribute("RSA_private")=sun.security.rsa.RSAPrivateCrtKeyImpl@fff09455
			
			System.out.println(joinService.insertMember2(commandMap.getMap(),(Key)session.getAttribute("RSA_private")));
			if(joinService.insertMember2(commandMap.getMap(),(Key)session.getAttribute("RSA_private")) > 0)
				//if(memberService.regist(member, (Key)session.getAttribute("RSA_private")) > 0)
				mv.setViewName("member/loginForm");
			return mv;
		}

		session.removeAttribute("RSA_private");*/
		
		
		joinService.insertMember(commandMap.getMap(), request);
		mv.setViewName("member/loginForm");
		return mv;
		
	}
	
	@RequestMapping(value="/joinStep2/checkId")
	@ResponseBody
	public void checkId(HttpServletRequest request, HttpServletResponse response, CommandMap commandMap) throws Exception{
		PrintWriter writer = response.getWriter();
		/*String id= (request.getParameter("MEMBER_ID") == null)?"":String.valueOf(request.getParameter("MEMBER_ID"));*/
		String id= commandMap.getMap().get("id").toString();
		int checkId = joinService.chekcId(id);
		
		writer.print(checkId);
		writer.flush();
		writer.close();
	}

	@RequestMapping(value = "/joinStep1/modal_email_auth")
	public ModelAndView email_auth(HttpServletResponse response, HttpServletRequest request,CommandMap Map) throws Exception{
		System.out.println("접속?");
		
		String email = (String) Map.getMap().get("email");
		System.out.println("email = " + email);
		Map.getMap().put("EMAIL", email);
		
		int checkNum = joinService.checkMember(Map.getMap());
		System.out.println("checkNum="+checkNum);
		
		if(checkNum==0){
			authNum = RandomNum();
			sendEmail(email.toString(),authNum);
			System.out.println("메일보냄");
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
		
		System.out.println("오드넘"+authNum);
		return mv;
	}
	
	@RequestMapping(value="/joinStep1/modal_email_auth_success", method=RequestMethod.POST)
	public @ResponseBody String clickMethod (HttpServletRequest request) throws Exception   {
	         
		String str = authNum;
		System.out.println("authNum뭐냐?"+authNum);
		return str;
	}

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