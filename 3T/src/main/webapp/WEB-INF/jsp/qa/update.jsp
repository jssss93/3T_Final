<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>

<table width="70%" align="center" border="0" cellspacing="0" cellpadding="1" colspan="1" class="board_top">
        <br>
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6><font color="#000000">Q&A</font></h6></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>

<body>
    <form id="frm" name="frm">
        <table border="1" align="center" class="board_view2">
            <colgroup>
                <col width="15%"/>
                <col width="35%"/>
                <col width="15%"/>
                <col width="35%"/>
            </colgroup>
            <tbody>
                <tr class="board_title">
                    <th scope="row">글 번호</th>
                    <td>
                        ${map.QA_NO }
                        <input type="hidden" id="QA_NO" name="QA_NO" value="${map.QA_NO}">
                        <input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${map.GOODS_NO }">
                        
                  <%--   </td>
                    <td>${map.GOODS_NO }
                    </td> --%>
              <%--       <th scope="row">조회수</th>
                    <td>${map.REV_READCNT }</td> --%>
                </tr>
                <tr class="board_title">
                    <th scope="row">작성자</th>
                    <td>${map.MEMBER_ID }</td>
                </tr>
                <tr class="board_title">
                    <th scope="row">작성시간</th>
                    <td>${map.REGDATE }</td>
                </tr>
                <tr class="board_title">
                    <th scope="row">제목</th>
                    <td colspan="3">
                        <input type="text" id="TITLE" name="TITLE" class="wdp_90" value="${map.TITLE}"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="board_content2">
                        <textarea rows="20" cols="145" title="내용" id="CONTENT" name="CONTENT">${map.CONTENT }</textarea>
                    </td>
                </tr>
              <%--   <tr>
                    <th scope="row">첨부파일</th>
                    <td colspan="3">
                        <div id="fileDiv">               
                            <c:forEach var="row" items="${list }" varStatus="var">
                                <p>
                                    <input type="hidden" id="IDX" name="IDX_${var.index }" value="${row.IDX }">
                                    <a href="#this" id="name_${var.index }" name="name_${var.index }">${row.ORIGINAL_FILE_NAME }</a>
                                    <input type="file" id="file_${var.index }" name="file_${var.index }">
                                    (${row.FILE_SIZE }kb)
                                    <a href="#this" class="btn" id="delete_${var.index }" name="delete_${var.index }">삭제</a>
                                </p>
                            </c:forEach>
                        </div>
                    </td>
                </tr> --%>
            </tbody>
        </table>
    </form>
     <br>
     
     <table class="notice_button">
     <tr>
     <td>
    <!-- <a href="#this" class="btn" id="addFile">파일 추가</a> -->
    <a href="#this" class="btn" id="list">LIST</a>
    <a href="#this" class="btn" id="update">UPDATE</a>
    <a href="#this" class="btn" id="delete">DELETE</a>
    </td>
    </tr>
    </table>
     
    <%@ include file="/WEB-INF/include/include-body.jspf" %>
    <script type="text/javascript">
         /* var gfv_count = '${fn:length(list)+1}';  */
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("#update").on("click", function(e){ //저장하기 버튼
                e.preventDefault();
                fn_updateBoard();
            });
             
            $("#delete").on("click", function(e){ //삭제하기 버튼
                e.preventDefault();
                fn_deleteBoard();
            });
             
          /*   $("#addFile").on("click", function(e){ //파일 추가 버튼
                e.preventDefault();
                fn_addFile();
            });
             
            $("a[name^='delete']").on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            }); */
        });
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/qa/list' />");
            comSubmit.submit();
        }
         
        function fn_updateBoard(){
            var comSubmit = new ComSubmit("frm");
            comSubmit.setUrl("<c:url value='/qa/update' />");
            /* comSubmit.addParam("QA_NO", $("#QA_NO").val());
            comSubmit.addParam("GOODS_NO", $("#GOODS_NO").val()); */
            comSubmit.submit();
        }
         
        function fn_deleteBoard(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/qa/delete' />");
            comSubmit.addParam("QA_NO", $("#QA_NO").val());
            comSubmit.submit();
             
        }
         
       /*  function fn_addFile(){
            var str = "<p>" +
                    "<input type='file' id='file_"+(gfv_count)+"' name='file_"+(gfv_count)+"'>"+
                    "<a href='#this' class='btn' id='delete_"+(gfv_count)+"' name='delete_"+(gfv_count)+"'>삭제</a>" +
                "</p>";
            $("#fileDiv").append(str);
            $("#delete_"+(gfv_count++)).on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });
        }
         
        function fn_deleteFile(obj){
            obj.parent().remove();
        } */
    </script>
</body>
</html>