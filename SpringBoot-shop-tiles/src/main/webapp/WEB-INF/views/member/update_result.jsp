<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%-- spring security custom tag를 사용하기 위한 선언 --%>
<%@taglib prefix="sec"  uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript">
alert("<sec:authentication property="principal.name"/>님 회원정보수정되었습니다. ");
location.href="${pageContext.request.contextPath}/home";
</script>