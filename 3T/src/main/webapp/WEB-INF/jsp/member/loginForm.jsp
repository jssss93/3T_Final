<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
<link href="/3T/user/member/style.css" rel="stylesheet" type="text/css">
</head>

<center>
   <body>	
		
      <form method="post" action="/3T/login">
         <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
               <td align="center" height="425">

                  <table width="520" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td align="center" style="padding-bottom: 50px;">,
                           <h2>로그인</h2>
                        </td>
                     </tr>
                     <tr>
                        <td align="center" class="formbar"><table>
                              <tr>
                                 <td><table width="100%" border="0" cellspacing="0"
                                       cellpadding="0">
                                       <tr>
                                          <td class="text01" style="padding-right: 15px;">아이디</td>
                                          <td height="35"><input type="text" name="MEMBER_ID"
                                             size="17" style="width: 230px; height: 26px;"></td>
                                       </tr>
                                       <tr>
                                          <td class="text01" style="padding-right: 15px;">비밀번호</td>
                                          <td height="35"><input type="password"
                                             name="PASSWD" size="17"
                                             style="width: 230px; height: 26px;"></td>
                                       </tr>
                                       <tr>
                                          <td style="padding-top: 30px;">
                                             *<a href="findIdForm.action">Forgot id? </a>
                                          </td>
                                       </tr>
                                    </table>
                           </table>
                     </tr>
                     <tr>
                        <td align="center" style="padding-top: 30px;"><table>
                              <tr color="gray"> <font color="gray"> <input
                                 type="submit" value="LOGIN" class="submit"/>
                              </font>
                              <c:if test="${sessionScope.MEMBER_ID != null && sessionScope.MEMBER_ID != '' }">
								${sessionScope.MEMBER_ID} 님 안녕하세요.
							</c:if>
							
							
							
                              </tr>
                           </table></td>
                     </tr>
                  </table>

               </td>
            </tr>
         </table>
      </form>
      
      <form action="/3T/logout">
		<input type="submit" value="logout">
	  </form>

   </body>
</center>
</html>
