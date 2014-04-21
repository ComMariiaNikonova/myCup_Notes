<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib  prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>

<tiles:insertDefinition name="authPages">
    <tiles:putAttribute name="authPages">
        <title>
            Login page
        </title>
    </tiles:putAttribute>
    <tiles:putAttribute name="bodyCentralContent">
        <div class="container">

        <spring:url var="authAction" value="/login/j_spring_security_check"/>
        <form class="form-signin" action="${authAction}" method="post">
        <div>
            <div>
                <!-- Small modal -->
               <%-- <button class="btn btn-large btn-primary" type="button" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button>
               --%> <div class="modal fade bs-example-modal-sm" id="signUpDialog" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-sm">

                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="myModalLabel">Sign Up</h4>
                                </div>
                                <div class="modal-body">
                                    Create account with used credentials?
                                    <p class="active"><a href="#">Remind me password</a></p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                                    <button type="button" class="btn btn-primary">Yes</button>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" class="input-block-level" name="j_username" placeholder="Email address" >
        <input type="password" class="input-block-level" name="j_password" placeholder="Password" minlength="6">
            <c:if test="${not empty param.login_error}">
                <script type="text/javascript">
                    $(window).load(function(){
                        $('#signUpDialog').modal('show');
                    });
                </script>
                Authentication error
                <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
            </c:if>
            <c:if test="${sessionScope[\"SPRING_SECURITY_LAST_EXCEPTION\"].message eq 'Bad credentials'}">
                Username/Password entered is incorrect.
                Your account is diabled, please contact administrator.
                <script type="text/javascript">
                    $(window).load(function(){
                        $('#signUpDialog').modal('show');
                    });
                </script>
            </c:if>
            <c:if test="${sessionScope[\"SPRING_SECURITY_LAST_EXCEPTION\"].message eq 'User is disabled'}">
                Your account is diabled, please contact administrator.
                <script type="text/javascript">
                    $(window).load(function(){
                        $('#signUpDialog').modal('show');
                    });
                </script>
           <script>
           </script>
            </c:if>
            <c:if test="${fn:containsIgnoreCase(sessionScope[\"SPRING_SECURITY_LAST_EXCEPTION\"].message,'A communications error has been detected')}">
                Database connection is down, try after sometime.
            </c:if>
        <label class="checkbox">
        <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-large btn-primary" name="submitButton" value="Login" id="submitForLogin" type="submit">Sign In/ Sign Up</button>
        </form>


    </tiles:putAttribute>
</tiles:insertDefinition>

