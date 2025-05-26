<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../includes/header.jsp" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/bootstrap.css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"></script>

<body>
   	<div class="contents">
	   	<nav aria-label="breadcrumb">
		     <ul class="sopt_list breadcrumb">
		         <li><span class="material-symbols-outlined">home</span></li>
		         <li><span class="separator"></span>공연/행사 관람평</li>
		     </ul>
	    </nav>
       	<form role="form" action="/review/reviewModify" method="post">
        	<div class="reivewDetail-header">
        	
        		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
                <input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
        	
	            <div class="reivewDetail-img">
	                <div class="img-wrap">
	                    <img class="imgUrl" src="${performance.img}" alt="poster">
	                </div>
	            </div>
	            <table class="info-table">
	            	<input type="hidden" name = "bno" value='<c:out value="${performance.bno}" />'>
	            	<input type="hidden" name = "img" value='<c:out value="${performance.img}" />'>
	            	
	                <tr>
	                    <th>공연/행사명</th>
	                    <td colspan="3">
	                        <input class="form-control" name="title" 
	                        	value="<c:out value="${performance.title}" />">
	                    </td>
	                </tr>
	                <tr>
	                    <th>작성자</th>
	                    <td>
	                        <input class="form-control" name="writer" 
	                        	value="<c:out value="${performance.writer}" />" readonly>
	                    </td>
	                    <th>조회수</th>
	                    <td>
	                        <input class="form-control" name="viewCount" 
	                        	value="<c:out value="${performance.readCount}" />" readonly>
	                        
	                    </td>
	                </tr>
	                <tr>
	                    <th>작성일</th>
	                    <td>
	                        <input class="form-control" name="regDate" 
	                        	value="<fmt:formatDate pattern="yyyy-MM-dd" value="${performance.regDate}"/>" readonly>
	                    </td>
	                    <th>수정일</th>
	                    <td>
	                        <input class="form-control" name="updateDate" 
	                       		 value="<fmt:formatDate pattern="yyyy-MM-dd" value="${performance.updateDate}"/>" readonly>
	                    </td>
	                </tr>
	                <tr>
	                    <th colspan="4">내용</th>
	                </tr>
	                <tr>
	                    <td colspan="4">
	                        <textarea class="form-control" name="content" rows="10">
	                        <c:out value="${performance.content}" /></textarea>
	                    </td>
	                </tr>
	            </table>
        	</div>
        	<!-- end reivewDetail-header -->
	        <div class="button-wrap">
		        <div class="button">
		            <button type="submit" data-oper="modify" class="btn btn-info">Modify</button>
		            <button type="submit" data-oper="remove" class="btn btn-danger">Remove</button>
		            <button type="submit" data-oper="list" class="btn btn-default">List</button>
		        </div>
	        </div>
	        <!-- end button-wrap -->
         </form>
    </div>
	<!-- end contents -->

<%@ include file="../includes/footer.jsp" %>

<script type="text/javascript">
	$(document).ready(function(){
		let formObj = $("form");
		
		$("button").on("click", function(e){
			e.preventDefault();		
			
			let operation = $(this).data("oper");	
			
			if(operation === 'remove'){
				formObj.attr("action", "/review/reviewRemove")
			}else if(operation === 'list'){
				formObj.attr("action", "/review/reviewList").attr("method", "get");
				
				let pageNumTag = $("input[name='pageNum']").clone();
				let amountTag = $("input[name='amount']").clone();
				
				formObj.empty();
				formObj.append(pageNumTag);
				formObj.append(amountTag);
			}
			formObj.submit();
		});
	});
</script>