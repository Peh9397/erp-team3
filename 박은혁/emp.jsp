<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<div id="container">
	<h1 class="menuName">직원 관리</h1>
	<div id="searchBox">
		<div class="searchInBox">
			<form name="searchBoxx">
				<input type="hidden" name="sortEMPCD" value="${employee.sortEMPCD }">
				<input type="hidden" name="sortENAME" value="${employee.sortENAME }">
				<input type="hidden" name="sortJOB" value="${employee.sortJOB }">
				<input type="hidden" name="sortDEPT" value="${employee.sortDEPT }">
				<input type="hidden" name="sortADDDATE" value="${employee.sortADDDATE }">
				<input type="hidden" name="sortAUTHORITY" value="${employee.sortAUTHORITY }">
				
			
				<div class="search-sub-div">
					<div class="search-item-div">
						<div class="search-item-text">직원코드</div>
						<input type="search" name="EMPCD" value="${employee.EMPCD }">
					</div>
					<div class="search-item-div">
						<div class="search-item-text">직원명</div>
						<input type="search" name="ENAME" value="${employee.ENAME }">
					</div>
					<%-- <div class="search-item-div">
						<div class="search-item-text">등록일</div>
						<input type="date" name="addDate" value=${employee.addFromDate }>
						~<input type="date" name="addToDate" value=${employee.addToDate }>
					</div> --%>
				</div>
				<div class="search-sub-div">
					<div class="search-item-div">
						<div class="search-item-text">직책</div>
						<input type="search" name="JOB" value="${employee.JOB }">
					</div>
					<div class="search-item-div">
						<div class="search-item-text">부서</div>
						<input type="search" name="DEPT" value="${employee.DEPT }">
					</div>
					<div class="search-item-div">
						<div class="search-item-text">승인권한</div>
						<select name="authority" class="search">
							<option value="null">모두</option>			
							<option value="Y">있음</option>			
							<option value="N">없음</option>
						</select>
					</div>
				</div>
			</form>
		</div>
		<div class="search-btn">
			<button id="searchBtn">검색</button>
			<button id="initBtn">초기화</button>
		</div>
		
		<div id="button-div">
		<button id="show" class="btn">직원 등록</button>
		<c:if test="${employee.DEL != 'Y'}">
			<button type="button" onclick="deleteAction()" class="btn">직원 삭제</button>
		</c:if>
		<button id="excelBtn"><img alt="" src="/distribution/resources/image/Excel.png" id="excelImg"></button>
		
		<div id="page">
			<form name="itemLimit">
				<select name="rowPerPage" id="limit">
					<option value="20" <c:if test="${employee.rowPerPage == 5 }">selected="selected"</c:if> >
						5개씩 보기
					</option>
					<option value="50" <c:if test="${employee.rowPerPage == 10 }">selected="selected"</c:if> >
						10개씩 보기
					</option>
					<option value="100" <c:if test="${employee.rowPerPage == 20 }">selected="selected"</c:if> >
						20개씩 보기
					</option>
					<option value="300" <c:if test="${employee.rowPerPage == 30 }">selected="selected"</c:if> >
						30개씩 보기
					</option>
				</select>
			</form>
		</div>
	</div>
</body>
</html>
