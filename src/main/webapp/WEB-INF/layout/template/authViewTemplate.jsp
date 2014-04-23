<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<html lang="en">
<head>
            <title>
                <tiles:getAsString name="authPages"/>
            </title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="myCup">

        <link href="/assets/bootstrap/bootstrap-3.1.1-dist/css/bootstrap.css" rel="stylesheet">
        <link href="/assets/bootstrap/bootstrap-3.1.1-dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="/assets/bootstrap/bootstrap-3.1.1-dist/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link href="/assets/customCss/auth.css" rel="stylesheet">

        <script src="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-transition.js" type="text/script"></script>
        <script src="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-alert.js" type="text/script"></script>
        <script src="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-modal.js" type="text/script"></script>
        <script src="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-dropdown.js" type="text/script"></script>
        <script src="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-scrollspy.js" type="text/script"></script>
        <script src="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-tab.js" type="text/script"></script>
        <script src="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-tooltip.js" type="text/script"></script>
        <script src="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-popover.js" type="text/script"></script>
        <script src="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-button.js" type="text/script"></script>
        <script src="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-collapse.js" type="text/script"></script>
        <script src="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-carousel.js" type="text/script"></script>
        <script src="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-typeahead.js" type="text/script"></script>
<html>
<head>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Starter Template for Bootstrap</title>

    <!-- JavaScript -->
    <script src="/assets/bootstrap/simple-sidebar/js/jquery-1.10.2.js"></script>
    <script src="/assets/bootstrap/simple-sidebar/js/bootstrap.js"></script>

</head>

<body>
<div>
    <tiles:insertAttribute name="header"/>
</div>
<div>
    <tiles:insertAttribute name="bodyCentralContent"/>
</div>
<div>
    <tiles:insertAttribute name="footer"/>
</div>

</body>
</html>