<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<html>
<head>
    <title>
        <tiles:getAsString name="title"/>
    </title>


    <html lang="en">
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<%--
    <script type="text/javascript">

    try{if (!window.CloudFlare) {var CloudFlare=[{verbose:0,p:0,byc:0,owlid:"cf",bag2:1,mirage2:0,oracle:0,paths:{cloudflare:"/cdn-cgi/nexp/dok9v=02fcfa4f56/"},atok:"c22ec9d3e717469cdafec38bac258c0d",petok:"faa223ffad8849f0fac368d7f8a598e137b62828-1396189304-1800",zone:"bootstrap-ru.com",rocket:"a",apps:{"ga_key":{"ua":"UA-12784007-23","ga_bs":"2"}}}];document.write('<script type="text/javascript" src="//ajax.cloudflare.com/cdn-cgi/nexp/dok9v=b064e16429/cloudflare.min.js"><'+'\/script>');}}catch(e){};

    </script>--%>
    <link href="/assets/bootstrap/bootstrap-3.1.1-dist/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">body{padding-top:40px;padding-bottom:40px;background-color:#f5f5f5;}.form-signin{max-width:300px;padding:19px 29px 29px;margin:0 auto 20px;background-color:#fff;border:1px solid #e5e5e5;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;-webkit-box-shadow:0 1px 2px rgba(0,0,0,.05);-moz-box-shadow:0 1px 2px rgba(0,0,0,.05);box-shadow:0 1px 2px rgba(0,0,0,.05);}.form-signin .form-signin-heading,.form-signin .checkbox{margin-bottom:10px;}.form-signin input[type="text"],.form-signin input[type="password"]{font-size:16px;height:auto;margin-bottom:15px;padding:7px 9px;}</style>
    <link href="/assets/bootstrap/bootstrap-3.1.1-dist/css/bootstrap-responsive.css" rel="stylesheet">

    <script data-rocketsrc="/assets/bootstrap/bootstrap-3.1.1-dist/js/jquery.js" type="text/rocketscript"></script>
    <script data-rocketsrc="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-transition.js" type="text/rocketscript"></script>
    <script data-rocketsrc="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-alert.js" type="text/rocketscript"></script>
    <script data-rocketsrc="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-modal.js" type="text/rocketscript"></script>
    <script data-rocketsrc="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-dropdown.js" type="text/rocketscript"></script>
    <script data-rocketsrc="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-scrollspy.js" type="text/rocketscript"></script>
    <script data-rocketsrc="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-tab.js" type="text/rocketscript"></script>
    <script data-rocketsrc="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-tooltip.js" type="text/rocketscript"></script>
    <script data-rocketsrc="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-popover.js" type="text/rocketscript"></script>
    <script data-rocketsrc="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-button.js" type="text/rocketscript"></script>
    <script data-rocketsrc="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-collapse.js" type="text/rocketscript"></script>
    <script data-rocketsrc="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-carousel.js" type="text/rocketscript"></script>
    <script data-rocketsrc="/assets/bootstrap/bootstrap-3.1.1-dist/js/bootstrap-typeahead.js" type="text/rocketscript"></script>

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
    <tiles:insertAttribute name="contentLeft"/>
</div>
<div>
    <tiles:insertAttribute name="contentRight"/>
</div>

</body>
</html>