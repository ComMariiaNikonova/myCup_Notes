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

        <style>
            body {
                padding-top: 15px;
            }
            form .alert {
                display: none;
            }
           /*centered columns styles*/
            .row-centered {
                text-align:center;
            }
            .col-centered {
                display:inline-block;
                float:none;
                 /*reset the text-align*/
                text-align:left;
                 /*inline-block space fix*/
                margin-right:-4px;
            }
            .col-fixed {
                /* custom width*/
                width:320px;
            }
            .col-min {
                /* custom min width*/
                min-width:320px;
            }
            .col-max {
                 /*custom max width*/
                max-width:320px;
            }
        </style>
        <spring:url var="authAction" value="/login/j_spring_security_check"/>

        <div class='container'>

            <div class="row row-centered">
                <div class="col-xs-3 col-centered" >
                    <div class="well">
                        <form action="${authAction}" method="post">
                            <div class="form-signin-heading">
                                <h3> Please sign in </h3>
                            </div>

                            <feildset>
                                <div class="form-group">
                                    <input type="text" data-title="Please use valid Email address" name="j_username" class="form-control" data-require="" placeholder="Email address" data-regex="email" />
                                </div>
                                <div class="form-group">
                                    <input type="password"  data-minlength="6" data-title="Please enter valid password" data-require="" name="j_password" class="form-control" placeholder="Password" />
                                </div>
                                <div class="form-group" style="margin: 0">
                                        <div class="checkbox">
                                            <label>
                                                <input data-title="Select one" name="item" type="checkbox" value="1" />Remember me
                                            </label>
                                        </div>
                                </div>
                                <div class="alert alert-danger">
                                </div>
                                <div class="form-group text-center">
                                    <button class="btn btn-primary" type="submit">Sign In/ Sign Up</button>
                                </div>
                            </feildset>
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
                                <!-- Small modal -->
                                <div class="modal fade bs-example-modal-sm" id="signUpDialog" tabindex="-1" role="dialog" aria-labelledby="signUpModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-sm">

                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="signUpModalLabel">Sign Up</h4>
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
                        </form>
                    </div>
                </div>
            </div>
         </div>

       <%-- Works only, if use on under validated form --%>
       <%--block for validation --%>
        <script src="/assets/bootstrap/bootstrap.validator.js"></script>
        <script>
            $('form').bootstrap3Validate(function(e, data) {
/*                e.preventDefault();*/
/*                alert(JSON.stringify(data));*/
            });
        </script>
        <%--end block for validation --%>
    </tiles:putAttribute>
</tiles:insertDefinition>

