<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">
$(document).ready(function() {
	 var c =confirm("삭제하시겠습니까?");
	 alert("삭제되었습니다");
	return location.href="${pageContext.request.contextPath}/views/shop/list?c=100";
});
</script>