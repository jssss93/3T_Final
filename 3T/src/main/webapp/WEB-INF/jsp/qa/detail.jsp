<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
<table width="600" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td align="center" class="text01 formbar"><h2>Q&A</h2></td>
		</tr>
		<tr>
          <td height="20" colspan="2"></td>
        </tr>
	</table>
	<table width="600" border="1" cellspacing="0" cellpadding="0" height="120" >
				<tr>
					<td align="center" width="120"><img width="100" height="100"
						src="/3T/resources/upload/${list.SAV_NAME.split(',')[0] }" /></td>
					<td>${list.NAME }<br /> KRW&nbsp;${list.PRICE } <br /> <br /> <input
						type="button" name="button" value="상품정보 선택 ▶"
						onclick="javascript:open_win_noresizable('qaGoodsSelect', write)" />&nbsp;
						 <input type="button" name="button" value="상품 상세보기▶">
						<input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${list.GOODS_NO }" />
						
					</td>
					
				</tr>
		</table>
    <table class="board_view">
        <colgroup>
            <col width="15%"/>
            <col width="35%"/>
            <col width="15%"/>
            <col width="35%"/>
        </colgroup>
        <tbody>
        <tr>
                <th scope="row">제목</th>
                <td colspan="3">${map.TITLE }</td>
            </tr>
            <tr>
                <th scope="row">이름</th>
                <td>${map.MEMBER_ID }</td>
               
            </tr>
            
            <tr>
                <td colspan="4">${map.CONTENT }</td>
            </tr>
        </tbody>
    </table>
     
    <a href="#this" class="btn" id="list">목록으로</a>
    <a href="#this" class="btn" id="update">수정하기</a>
    <a href="#this" class="btn" id="delete">삭제하기</a>
    <a href="#this"  name="writeReply">답변달기</a>
    <input type="hidden" id="QA_NO" value="${map.QA_NO }">
     
    <%@ include file="/WEB-INF/include/include-body.jspf" %>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("#update").on("click", function(e){
                e.preventDefault();
                fn_openBoardUpdate();
            });
            $("#delete").on("click", function(e) { //삭제하기 버튼
				e.preventDefault();
				fn_Delete();
			});
            $("a[name='writeReply']").on("click", function(e) { 
				e.preventDefault();
				fn_WriteReply();
            
			});
		});
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/qa/list' />");
            comSubmit.submit();
        }
         
        function fn_openBoardUpdate(){
           
            var comSubmit = new ComSubmit();
            comSubmit.addParam("QA_NO", $("#QA_NO").val());
            comSubmit.addParam("GOODS_NO", $("#GOODS_NO").val());
            comSubmit.setUrl("<c:url value='/qa/updateForm' />");
            
            comSubmit.submit();
        }
        
        function fn_Delete() {  	
			var comSubmit = new ComSubmit();
			comSubmit.addParam("QA_NO", $("#QA_NO").val());
			comSubmit.setUrl("<c:url value='/qa/delete' />");
			comSubmit.submit();
		}
        function fn_WriteReply(){
        	var comSubmit = new ComSubmit();
        	comSubmit.addParam("QA_NO", $("#QA_NO").val());
            comSubmit.setUrl("<c:url value='/qa/writeReplyForm' />");
            comSubmit.submit();
        	}
    </script>
</body>
</html>