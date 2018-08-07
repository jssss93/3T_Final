<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<script type="text/javascript">
	function delchk() {
		return confirm("삭제하시겠습니까?");
	}
</script>
<style type="text/css">
.paging {
	text-align: center;
	height: 32px;
	margin-top: 5px;
	margin-bottom: 15px;
}

.paging a, .paging strong {
	display: inline-block;
	width: 36px;
	height: 32px;
	line-height: 28px;
	font-size: 14px;
	border: 1px solid #e0e0e0;
	margin-left: 5px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-shadow: 1px 1px 1px 0px rgba(235, 235, 235, 1);
	-moz-box-shadow: 1px 1px 1px 0px rgba(235, 235, 235, 1);
	box-shadow: 1px 1px 1px 0px rgba(235, 235, 235, 1);
}

.paging a:first-child {
	margin-left: 0;
}

.paging strong {
	color: #fff;
	background: #337AB7;
	border: 1px solid #337AB7;
}

.paging .page_arw {
	font-size: 11px;
	line-height: 30px;
}
</style>
</head>

<div class="row" style="padding-left: 15px; width: 900px;">
	<h1 class="page-header">광고</h1>
</div>
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">광고 검색, 수정, 삭제 기능하는 페이지입니다.</div>
		<div class="panel-body">
			<div class="dataTable_wrapper">
				<div id="dataTables-example_wrapper"
					class="dataTables_wrapper form-inline dt-bootstrap no-footer">
					<div class="row" style="margin-bottom: 5px;">
						<div class="col-sm-6">
							<a href="/SIRORAGI/ad/adList?posting=0&searchNum=0&isSearch=">
								<button type="button" name="searchNum" id="searchNum" class="btn btn-outline btn-default">비활성</button>
							</a> 
							<a href="/SIRORAGI/ad/adList?posting=1&searchNum=0&isSearch=">
								<button type="button" name="searchNum" id="searchNum" class="btn btn-outline btn-default">상단광고1</button>
							</a>
							<a href="/SIRORAGI/ad/adList?posting=2&searchNum=0&isSearch=">
								<button type="button" name="searchNum" id="searchNum" class="btn btn-outline btn-default">상단광고2</button>
							</a>
						</div>
						<div class="col-sm-6" style="text-align: right;">
							<div class="dataTables_info" id="dataTables-example_info" role="status" aria-live="polite">총 광고수 : ${totalCount}</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<table class="table table-striped table-bordered table-hover dataTable no-footer"
								id="dataTables-example" role="grid" aria-describedby="dataTables-example_info">
								<thead>
									<tr role="row">
										<th style="width: 5%; text-align: center;">번호</th>
										<th style="width: 7%; text-align: center;">이미지</th>
										<th style="width: 8%; text-align: center;">활성</th>
										<th style="width: 8%; text-align: center;">위치</th>
										<th style="width: 14%; text-align: center;">이름</th>
										<th style="width: 9%; text-align: center;">날짜</th>
										<th style="width: 13%; text-align: center;">관리</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="adList" items="${adList}" varStatus="stat">
										<c:url var="viewURL" value="adDetail">
											<c:param name="AD_NUMBER" value="${adList.AD_NUMBER }" />
										</c:url>
										<tr class="gradeA even" role="row">
											<td style="text-align: center; vertical-align: middle;">${adList.AD_NUMBER}</td>
											<td style="text-align: center; vertical-align: middle;">
												<img src="/MODA/file/adFile/${adList.AD_IMAGE}" width="100" height="100" alt=""
												onerror="this.src='/MODA/file/noimg_130.gif'" />
											</td>
											<c:choose>
												<c:when test="${adList.AD_POSTING == '0'}">
													<td style="text-align: center; vertical-align: middle;">X</td>
												</c:when>
												<c:otherwise>
													<td style="text-align: center; vertical-align: middle;">O</td>
												</c:otherwise>
											</c:choose>
											<c:if test="${adList.AD_POSTING == '0'}">
												<td style="text-align: center; vertical-align: middle;"></td>
											</c:if>
											<c:if test="${adList.AD_POSTING == '1'}">
												<td style="text-align: center; vertical-align: middle;">상단광고1</td>
											</c:if>
											<c:if test="${adList.AD_POSTING == '2'}">
												<td style="text-align: center; vertical-align: middle;">상단광고2</td>
											</c:if>

											<td style="text-align: center; vertical-align: middle;">${adList.AD_NAME}</td>
											<td style="text-align: center; vertical-align: middle;">
												<fmt:formatDate value="${adList.AD_DATE}" pattern="YY.MM.dd" />
											</td>
											<td style="text-align: center; vertical-align: middle;">
												<a href="${viewURL}">
													<input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png">
												</a>&nbsp;&nbsp;
												<c:url var="viewURL2" value="adDelete">
													<c:param name="AD_NUMBER" value="${adList.AD_NUMBER }" />
													<c:param name="posting" value="${adList.AD_POSTING }" />
													<c:param name="image" value="${adList.AD_IMAGE }" />
												</c:url> 
												<a href="${viewURL2}">
													<input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png"
													onclick="return delchk()">
												</a>
											</td>
										</tr>
									</c:forEach>
									<!-- 광고가 없을때 -->
									<c:if test="${fn:length(adList) le 0}">
										<tr>
											<td colspan="9" style="text-align: center;">광고가 없습니다.</td>
										</tr>
									</c:if>

								</tbody>
							</table>
						</div>
					</div>
					<div class="paging">${pagingHtml}</div>
					<div class="row">
						<div style="text-align: center;">
							<div id="dataTables-example_filter" class="dataTables_filter">
								<form action="">
									<c:if test="${posting == '1'}">
										<input type="hidden" name="posting" id="posting" value="1" />
									</c:if>
									<c:if test="${posting == '2'}">
										<input type="hidden" name="posting" id="posting" value="2" />
									</c:if>
									<c:if test="${posting == '0'}">
										<input type="hidden" name="posting" id="posting" value="0" />
									</c:if>
									<select class="form-control" name="searchNum" id="searchNum">
										<option value="0">이름</option>
									</select> 
									<input class="form-control" type="text" name="isSearch" id="isSearch" /> 
									<span>
										<button type="submit" class="btn btn-default">검색</button>
									</span>
								</form>
							</div>
						</div>
					</div>
					<a href="/MODA/ad/adInsertForm">
						<button type="button" class="btn btn-outline btn-default">광고등록</button>
					</a>
				</div>
			</div>
			<!-- /.table-responsive -->
		</div>
	</div>
	<!-- /.panel -->
</div>

