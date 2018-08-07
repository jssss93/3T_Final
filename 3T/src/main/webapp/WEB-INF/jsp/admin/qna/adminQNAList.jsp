<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<head>
<script type="text/javascript">
function delchk(){
    return confirm("삭제하시겠습니까?");
}
</script>
<style type="text/css">
.paging{text-align:center;height:32px;margin-top:5px;margin-bottom:15px;}
.paging a,
.paging strong{display:inline-block;width:36px;height:32px;line-height:28px;font-size:14px;border:1px solid #e0e0e0;margin-left:5px;
-webkit-border-radius:3px;
   -moz-border-radius:3px;
		border-radius:3px;
-webkit-box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
	-moz-box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
		  box-shadow:1px 1px 1px 0px rgba(235,235,235,1);
}
.paging a:first-child{margin-left:0;}
.paging strong{color:#fff;background:#337AB7;border:1px solid #337AB7;}
.paging .page_arw{font-size:11px;line-height:30px;}
</style>
</head>

<div class="row" style="padding-left:15px;width:900px;">    
	<h1 class="page-header">Q&A</h1>
</div>
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">
			Q&A 검색, 수정, 삭제 기능하는 페이지입니다.
        </div>
        <div class="panel-body">
			<div class="dataTable_wrapper">
				<div id="dataTables-example_wrapper"
					class="dataTables_wrapper form-inline dt-bootstrap no-footer">
					<div class="row" style="margin-bottom:5px;">
						<div class="col-sm-6">
							<a href="/MODA/qna/adminQnaList">
								<button type="button" class="btn btn-outline btn-default">전체</button>
							</a>
							<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--카테고리--</option>
								<option value ="/MODA/qna/adminQnaList?categoryNum=1">상품문의</option>
								<option value ="/MODA/qna/adminQnaList?categoryNum=2">배송문의</option>
								<option value ="/MODA/qna/adminQnaList?categoryNum=3">입금문의</option>
								<option value ="/MODA/qna/adminQnaList?categoryNum=4">교환&반품문의</option>
								<option value ="/MODA/qna/adminQnaList?categoryNum=5">기타문의</option>
							</select>
							<select class="form-control" name="select" onchange="window.open(value,'_self');">
								<option value ="">--답변상태--</option>
								<option value ="/MODA/qna/adminQnaList?repState=1">답변대기</option>
								<option value ="/MODA/qna/adminQnaList?repState=2">답변완료</option>
								<option value ="/MODA/qna/adminQnaList?repState=3">문의종료</option>
							</select>
						</div>
						<div class="col-sm-6" style="text-align:right;">
							<div class="dataTables_info" id="dataTables-example_info" role="status" aria-live="polite">총 Q&A수 : ${totalCount}</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<table class="table table-striped table-bordered table-hover dataTable no-footer" id="dataTables-example" role="grid"
								aria-describedby="dataTables-example_info">
								<thead>
									<tr role="row">
										<th style="width: 6%; text-align:center;">글번호</th>
										<th style="width: 11%; text-align:center;">카테고리</th>
										<th style="width: 8%; text-align:center;">아이디</th>
										<th style="width: 35%; text-align:center;">글제목</th>
										<th style="width: 10%; text-align:center;">문의날짜</th>
										<th style="width: 10%; text-align:center;">답변상태</th>
										<th style="width: 10%; text-align:center;">답변날짜</th>
										<th style="width: 10%; text-align:center;">관리</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="adminQnaList"  items="${adminQnaList}" varStatus="stat">
									<c:url var="viewURL" value="adminQnaDetail" >
										<c:param name="QNA_NUMBER" value="${adminQnaList.QNA_NUMBER }" />
									</c:url>									
									<tr class="gradeA even" role="row">
										<td style="text-align:center;vertical-align:middle;">${adminQnaList.QNA_NUMBER}</td>
										<td style="text-align:center;vertical-align:middle;">${adminQnaList.QNA_CATEGORY}</td>
										<td style="text-align:center;vertical-align:middle;">${adminQnaList.MEMBER_ID}</td>
										<td style="text-align:center;vertical-align:middle;">${adminQnaList.QNA_TITLE}</td>
										<td style="text-align:center;vertical-align:middle;"><fmt:formatDate value="${adminQnaList.QNA_REGDATE}" pattern="YY.MM.dd HH:mm" /></td>
										<td style="text-align:center;vertical-align:middle;">${adminQnaList.QNA_REPSTATE }</td>
										<td style="text-align:center;vertical-align:middle;"><fmt:formatDate value="${adminQnaList.QNA_REPDATE}" pattern="YY.MM.dd HH:mm" /></td>
										<td style="text-align:center;vertical-align:middle;">
											<a href="${viewURL}">
												<input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png">
											</a>&nbsp;&nbsp;
										<c:url var="viewURL2" value="adminQnaDelete" >
											<c:param name="QNA_NUMBER" value="${adminQnaList.QNA_NUMBER}" />
										</c:url>
										<a href="${viewURL2}">
											<input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png" onclick="return delchk()">
										</a>
										</td>									
									</tr>
								</c:forEach>
								<!-- Q&A가 없을때 -->
								<c:if test="${fn:length(adminQnaList) le 0}">
									<tr><td colspan="9" style="text-align:center;">Q&A가 없습니다.</td></tr>
								</c:if> 
								</tbody>
							</table>
						</div>
					</div>
					<div class="paging">
						${pagingHtml}
					</div>
					<div class="row">
						<div style="text-align:center;">
							<div id="dataTables-example_filter" class="dataTables_filter">
								<form action="">
									<select class="form-control" name="searchNum" id="searchNum">
										<option value="0">아이디</option>
										<option value="1">제목</option>
									</select>
									<input class="form-control" type="text" name="isSearch" id="isSearch"/>
									<span>
									<button type="submit" class="btn btn-default">검색</button>
									</span>
								</form>
							</div>							
						</div>
					</div>		
				</div>
			</div>
			<!-- /.table-responsive -->		
		</div>
	</div>
        <!-- /.panel -->   
</div>

