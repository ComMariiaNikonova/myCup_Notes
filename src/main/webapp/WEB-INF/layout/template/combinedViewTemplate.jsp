<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<html>
<head>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Starter Template for Bootstrap</title>
    <link rel="stylesheet" href="/assets/jstree_pre1.0_stable/themes/apple/style.css" />

    <!-- Bootstrap core CSS -->

    <link href="/assets/bootstrap/simple-sidebar/css/bootstrap.css" rel="stylesheet"/>

    <!-- Add custom CSS here -->
    <link href="/assets/bootstrap/simple-sidebar/css/simple-sidebar.css" rel="stylesheet">
    <link href="/assets/bootstrap/simple-sidebar/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- JavaScript -->
    <script src="/assets/bootstrap/simple-sidebar/js/jquery-1.10.2.js"></script>
    <script src="/assets/bootstrap/simple-sidebar/js/bootstrap.js"></script>
    <script src="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-modal.js" type="text/script"></script>


    <script src="/assets/ckeditor/ckeditor.js"></script>

    <script type="text/javascript" src="/assets/tinymce 3/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({
            selector: "textarea",
            plugins: [
                "advlist autolink lists link image charmap print preview anchor",
                "searchreplace visualblocks code fullscreen"/*,*/
            ],
            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
        });
    </script>

</head>

<body>
<div>
<tiles:insertAttribute name="header"/>
</div>
<div id="wrapper">

    <!-- Sidebar -->
<div id="page-content-wrapper">
    <tiles:insertAttribute name="contentLeft"/>
</div>
        <div id="sidebar-wrapper">
            <div class="content-header">
    <tiles:insertAttribute name="contentRight"/>
            </div>
</div>

</div>
<div>
<tiles:insertAttribute name="footer"/>
</div>
</body>
</html>



