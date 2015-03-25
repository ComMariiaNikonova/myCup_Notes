<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>My Cup:&nbsp;Manage your Ideas and Notes!</title>
    <meta name="generator" content="DocBook XSL Stylesheets V1.78.1">
    <%-- <link rel="prev" href="tutorials-cypher.html" title="Chapter&nbsp;4.&nbsp;Getting started with Cypher">
     <link rel="next" href="cypherdoc-movie-database.html" title="4.2.&nbsp;Movie Database">
     <link rel="copyright" href="ln-d5e41.html" title="License: Creative Commons 3.0">
    --%>
    <meta name="Section-title" content="My Cup:&nbsp;Manage your Ideas and Notes!">
    <script type="text/javascript" async="" src="http://www.google-analytics.com/ga.js"></script>
    <script type="text/javascript">
        //The id for tree cookie
        var treeCookieId = "treeview-62977";
        var language = "en";
        var w = new Object();
        //Localization
        txt_filesfound = 'Results';
        txt_enter_at_least_1_char = "You must enter at least one character.";
        txt_browser_not_supported = "JavaScript is disabled on your browser. Please enable JavaScript to enjoy all the features of this site.";
        txt_please_wait = "Please wait. Search in progress...";
        txt_results_for = "Results for: ";
    </script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css"
          href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/redmond/jquery-ui.min.css">

    <link rel="stylesheet" type="text/css" href="/assets/neo4jScripts/common/jquery/treeview/jquery.treeview.css">
    <link rel="stylesheet" type="text/css" href="/assets/neo4jScripts/common/css/positioning.css">
    <link rel="stylesheet" type="text/css" href="/assets/neo4jScripts/common/css/style.css">
    <!--[if IE]>
   <!-- <link rel="stylesheet" type="text/css" href="/assets/neo4jScripts//common/css/ie.css"/>-->
    <![endif]-->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <script type="text/javascript" src="/assets/neo4jScripts/common/browserDetect.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/assets/neo4jScripts/common/jquery/jquery.highlight.js"></script>
    <script type="text/javascript"
            src="http://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.0/jquery.cookie.min.js"></script>
    <script type="text/javascript" src="/assets/neo4jScripts/common/jquery/treeview/jquery.treeview.min.js"></script>
    <script type="text/javascript"
            src="http://cdnjs.cloudflare.com/ajax/libs/jquery-scrollTo/1.4.11/jquery.scrollTo.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/assets/neo4jScripts/common/main.js"></script>
    <script type="text/javascript" src="/assets/neo4jScripts/search/l10n.js"></script>
    <script type="text/javascript" src="/assets/neo4jScripts/search/htmlFileInfoList.js"></script>
    <script type="text/javascript" src="/assets/neo4jScripts/search/nwSearchFnt.js"></script>
    <script type="text/javascript" src="/assets/neo4jScripts/search/stemmers/en_stemmer.js"></script>
    <script type="text/javascript" src="/assets/neo4jScripts/search/index-1.js"></script>
    <script type="text/javascript" src="/assets/neo4jScripts/search/index-2.js"></script>
    <script type="text/javascript" src="/assets/neo4jScripts/search/index-3.js"></script>


    <!-- favicon -->

    <link rel="shortcut icon" href="common/images/favicon.ico">

    <!-- fonts -->

    <link href="http://fonts.googleapis.com/css?family=Ubuntu+Mono|PT+Sans:400,700,400italic" rel="stylesheet"
          type="text/css">

    <!-- Syntax Highlighter -->

    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/codemirror/4.2.0/codemirror.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/codemirror/4.2.0/theme/neo.css">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/codemirror/4.2.0/codemirror.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/codemirror/4.2.0/addon/runmode/runmode.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/codemirror/4.2.0/mode/javascript/javascript.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/codemirror/4.2.0/mode/shell/shell.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/codemirror/4.2.0/mode/sql/sql.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/codemirror/4.2.0/mode/xml/xml.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/codemirror/4.2.0/mode/clike/clike.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/codemirror/4.2.0/mode/cypher/cypher.js"></script>

    <script src="/assets/neo4jScripts/js/colorize.js"></script>

    <script type="text/javascript">
        $(function () {
            CodeMirror.colorize();
        });
    </script>

    <%--Small modal--%>
    <div class="modal fade bs-example-modal-sm" id="signUpDialog" tabindex="-1" role="dialog"
         aria-labelledby="signUpModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <form <%--action="${createUserAction}"  id="userCreationForm" method="post"--%>>
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="signUpModalLabel">Sign Up</h4>
                    </div>
                    <div class="modal-body">
                        Do you want it Share?
                        </br>
                        Please, enter email of recepient
                        <%--        <input type="textarea" data-minlength="80" data-title="Please, enter email of recepient"
                                       placeholder="mails of recepients" id="SignInPassword">--%>
                        <p><textarea rows="5" cols="30" name="text" placeholder="mails of recepients"></textarea></p>

                        <div class="form-group" style="margin: 0">
                            <div class="checkbox">
                                <label>
                                    <input data-title="Select one" name="item" type="checkbox" value="1"/>Read
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input data-title="Select one" name="item" type="checkbox" value="2"/>Edit
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input data-title="Select one" name="item" type="checkbox" value="3"/>Share
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input data-title="Select one" name="item" type="checkbox" value="4"/>Copy
                                </label>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                        <button type="sumbit" class="btn btn-primary">Yes</button>

                    </div>
                </div>
                <fieldset>
                    <legend>Edit Record</legend>
                    <input type='hidden' name="name" id='name'/>
                    <input type='hidden' name="password" id='password'/>
                </fieldset>
            </form>
        </div>
    </div>

    <!-- Cypher Console -->

    <script type="text/javascript" src="/assets/neo4jScripts/js/console.js"></script>
    <script type="text/javascript" src="js/cypherconsole.js"></script>

    <!-- Version -->
    <script type="text/javascript" src="/assets/neo4jScripts/js/version.js"></script>
    <script type="text/javascript" src="http://docs.neo4j.org/chunked/versions.js"></script>
    <script type="text/javascript" src="/assets/neo4jScripts/js/versionswitcher.js"></script>

    <!-- Discuss -->
    <%--    <script type="text/javascript" src="/assets/neo4jScripts/js/mutate.min.js"></script>
        <script type="text/javascript" src="/assets/neo4jScripts/js/disqus.js"></script>--%>

    <script type="text/javascript">
        /*@cc_on @*/
        /*@
         $( '#content' ).addClass( 'internet-explorer' );
         @*/
    </script>
    <script src="/assets/ckeditor/ckeditor.js"></script>

</head>
<body>
<div id="header"><a href="index.html" id="logo"><img src="<%--/assets/neo4jScripts/common/images/logo.png--%>"
                                                     alt=""></a>

    <h1><span class="ui-widget"> &nbsp;Manage your Ideas and Notes!</span></h1>

    <div class="ui-widget" position:relative float="right">
        <spring:url var="logoutAction" value="/logout/j_spring_security_logout"/>
        <a href="<c:url value= "${logoutAction}" />"> &nbsp;&nbsp;LogOut</a>
    </div>
</div>
<div id="content">
    <section class="section" id="cypherdoc-create-nodes-and-relationships">
        <div class="titlepage">
            <div>
                <div><h4 onclick="javascript:exportToForm()" class="title">make your ideas!
                    <img onclick="javascript:exportToForm()" width="18" height="18"
                         src="/assets/neo4jScripts/common/images/Debug-External-link-icon.png"/> </h4>
                </div>
                <script>
                    function exportToForm() {
                        $('#signUpDialog').modal('show');
                    }
                </script>
            </div>
        </div>

        <form>
            <textarea name="editor1" id="editor1" rows="60" cols="80">
                This is my textarea to be replaced with CKEditor.
            </textarea>
            <script>
                CKEDITOR.replace('editor1');
            </script>
        </form>

        <form>
            <textarea name="editor2" id="editor2" rows="60" cols="80">
                This is my textarea to be replaced with CKEditor.
            </textarea>
            <script>
                CKEDITOR.replace('editor2');
            </script>
        </form>
    </section>

    <footer>
        <div class="ui-widget">
            <p>
                © Copyright myCup
            </p>
        </div>
    </footer>
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-1192232-16']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script');
            ga.type = 'text/javascript';
            ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(ga, s);
        })();
    </script>

</div>
<div id="sidebar-wrapper">
<div xmlns="http://www.w3.org/1999/xhtml" id="sidebar">
<div id="leftnavigation" style="padding-top:3px;">
<div id="tabs" class="ui-tabs ui-widget ui-widget-content ui-corner-all">
<ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all"
    role="tablist">
    <li class="ui-state-default ui-corner-top ui-tabs-active ui-state-active" role="tab" tabindex="0"
        aria-controls="treeDiv" aria-labelledby="ui-id-1" aria-selected="true"><a href="#treeDiv"
                                                                                  style="outline:0;"
                                                                                  tabindex="-1"
                                                                                  class="ui-tabs-anchor"
                                                                                  role="presentation"
                                                                                  id="ui-id-1"><span
            class="contentsTab"><i class="fa fa-list-ul"></i>Contents</span></a></li>
    <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="searchDiv"
        aria-labelledby="ui-id-2" aria-selected="false"><a href="#searchDiv" style="outline:0;"
                                                           tabindex="-1" onclick="doSearch()"
                                                           class="ui-tabs-anchor" role="presentation"
                                                           id="ui-id-2"><span class="searchTab"><i
            class="fa fa-search"></i>Search</span></a></li>
</ul>
<div id="treeDiv" aria-labelledby="ui-id-1" class="ui-tabs-panel ui-widget-content ui-corner-bottom"
     role="tabpanel" aria-expanded="true" aria-hidden="false"><img src="common/images/loading.gif"
                                                                   alt="loading table of contents..."
                                                                   id="tocLoading"
                                                                   style="display:none;">

    <div id="ulTreeDiv" style="">
        <ul id="tree" class="filetree treeview" style="display: block;">
            <li><i class="fa fa-file-o"></i><span class="file"><a href="preface.html" tabindex="1">MyDoc1</a></span>
            </li>
            <li class="expandable">
                <div class="hitarea expandable-hitarea"></div>
                <i class="fa fa fa-file-o"></i><span class="folder"><a href="introduction.html"
                                                                       tabindex="1">MyDoc2</a></span>
                <ul style="display: none;">
                    <li><i class="fa fa-file-o"></i><span class="file"><a
                            href="introduction-highlights.html" tabindex="1">MyDoc3</a></span>
                    </li>
                    <li class="expandable">
                        <div class="hitarea expandable-hitarea"></div>
                        <i class="fa fa fa-file-o"></i><span class="folder"><a
                            href="graphdb-concepts.html" tabindex="1">MyDoc4</a></span>
                        <ul style="display: none;">
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="what-is-a-graphdb.html" tabindex="1">MyDoc5</a></span></li>
                            <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                                    href="tutorial-comparing-models.html" tabindex="1">MyDoc6</a></span>
                            </li>
                        </ul>
                    </li>
                    <li class="expandable lastExpandable">
                        <div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
                        <i class="fa fa fa-file-o"></i><span class="folder"><a href="graphdb-neo4j.html"
                                                                               tabindex="1">MyDoc7</a></span>
                        <ul style="display: none;">
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="graphdb-neo4j-nodes.html" tabindex="1">MyDoc8</a></span></li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="graphdb-neo4j-relationships.html"
                                    tabindex="1">Relationships</a></span></li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="graphdb-neo4j-properties.html"
                                    tabindex="1">Properties</a></span></li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="graphdb-neo4j-labels.html" tabindex="1">MyDoc9</a></span></li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="graphdb-neo4j-paths.html" tabindex="1">MyDoc10</a></span></li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="graphdb-neo4j-traversal.html"
                                    tabindex="1">Traversal</a></span></li>
                            <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                                    href="graphdb-neo4j-schema.html" tabindex="1">MyDoc11</a></span>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="collapsable">
                <div class="hitarea collapsable-hitarea "></div>
                <i class="fa fa-file-o"></i><span class="folder"><a href="tutorials.html"
                                                                    tabindex="1"
                                                                    class="">MyDoc12</a></span>
                <ul style="display: block;">
                    <li class="expandable">
                        <div class="hitarea expandable-hitarea"></div>
                        <i class="fa fa fa-file-o"></i><span class="folder"><a
                            href="tutorials-cypher.html" tabindex="1" class="">GMyDoc13</a></span>
                        <ul style="display: none;">
                            <li style="background-color: #D8D8D8; "><i class="fa fa-file-o"></i><span
                                    class="file"><a href="cypherdoc-create-nodes-and-relationships.html"
                                                    tabindex="1" class="webhelp-currentid"
                                                    style="color: black;">MyDoc14</a></span></li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypherdoc-movie-database.html" tabindex="1">MyDoc15</a></span>
                            </li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypherdoc-social-movie-database.html" tabindex="1">MyDoc16</a></span>
                            </li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypherdoc-finding-paths.html" tabindex="1">MyDoc17</a></span>
                            </li>
                            <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypherdoc-labels.html" tabindex="1">MyDoc18</a></span></li>
                        </ul>
                    </li>
                    <li class="expandable">
                        <div class="hitarea expandable-hitarea"></div>
                        <i class="fa fa-file-o"></i><span class="folder"><a
                            href="data-modeling-examples.html" tabindex="1" class="">MyDoc19</a></span>
                        <ul style="display: none;">
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypherdoc-linked-lists.html" tabindex="1">MyDoc20</a></span>
                            </li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypherdoc-tv-shows.html" tabindex="1">MyDoc21</a></span></li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="examples-acl-structures-in-graphs.html"
                                    tabindex="1">MyDoc22</a></span></li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypher-cookbook-hyperedges.html"
                                    tabindex="1">MyDoc23</a></span></li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypher-cookbook-friend-finding.html" tabindex="1">MyDoc24</a></span>
                            </li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypher-cookbook-co-favorited-places.html"
                                    tabindex="1">MyDoc25</a></span></li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypher-cookbook-similar-favorites.html"
                                    tabindex="1">MyDoc26</a></span></li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypher-cookbook-mutual-friends-and-groups.html"
                                    tabindex="1">MyDoc27</a></span>
                            </li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypher-cookbook-similar-tags.html"
                                    tabindex="1">MyDoc28</a></span></li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypher-cookbook-multirelational-social-network.html"
                                    tabindex="1">MyDoc30</a></span></li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypher-cookbook-newsfeed.html" tabindex="1">MyDoc31</a></span>
                            </li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypher-cookbook-boostingrecommendations.html" tabindex="1">MyDoc32</a></span>
                            </li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypher-cookbook-clustering-coefficient.html" tabindex="1">MyDoc33</a></span>
                            </li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypher-cookbook-pretty-graphs.html" tabindex="1">PMyDoc34</a></span>
                            </li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypher-cookbook-path-tree.html"
                                    tabindex="1">MyDoc35</a></span></li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypher-cookbook-similarity-calc.html" tabindex="1">MyDoc36</a></span>
                            </li>
                            <li><i class="fa fa-file-o"></i><span class="file"><a
                                    href="cypher-cookbook-graphity.html" tabindex="1">MyDoc37</a></span>
                            </li>
                            <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                                    href="examples-user-roles-in-graphs.html"
                                    tabindex="1">MyDoc38</a></span></li>
                        </ul>
                    </li>
                    <li class="expandable lastExpandable">
                        <div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
                        <i class="fa fa fa-file-o"></i><span class="folder"><a href="languages.html"
                                                                               tabindex="1">MyDoc39</a></span>
                        <ul style="display: none;">
                            <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                                    href="server-java-rest-client-example.html" tabindex="1">MyDoc40</a></span>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="expandable lastExpandable">
                <div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
                <i class="fa fa fa-file-o"></i><span class="folder"><a href="manpages.html"
                                                                       tabindex="1">MyDoc41</a></span>
                <ul style="display: none;">
                    <li><i class="fa fa-file-o"></i><span class="file"><a href="re01.html"
                                                                          tabindex="1">MyDoc42</a></span>
                    </li>
                    <li><i class="fa fa-file-o"></i><span class="file"><a href="re02.html"
                                                                          tabindex="1">MyDoc43</a></span>
                    </li>
                    <li><i class="fa fa-file-o"></i><span class="file"><a href="re03.html"
                                                                          tabindex="1">MyDoc44</a></span>
                    </li>
                    <li><i class="fa fa-file-o"></i><span class="file"><a href="re04.html"
                                                                          tabindex="1">MyDoc45</a></span>
                    </li>
                    <li class="last"><i class="fa fa-file-o"></i><span class="file"><a href="re05.html"
                                                                                       tabindex="1">MyDoc46</a></span>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>
<div id="searchDiv" aria-labelledby="ui-id-2" class="ui-tabs-panel ui-widget-content ui-corner-bottom"
     role="tabpanel" aria-expanded="false" aria-hidden="true" style="display: none;">
    <div id="search">
        <form onsubmit="Verifie(searchForm);return false" name="searchForm" class="searchForm">
            <div><input id="textToSearch" name="textToSearch" type="search" placeholder="Search"
                        class="searchText" tabindex="1"> &nbsp; <input onclick="Verifie(searchForm)"
                                                                       type="button"
                                                                       class="searchButton" value="Go"
                                                                       id="doSearch" tabindex="1"></div>
        </form>
    </div>
    <div id="searchResults">
        <center></center>
    </div>
    <p class="searchHighlight"><a href="#" onclick="toggleHighlight()">Search Highlighter (On/Off)</a>
    </p></div>
</div>
</div>
</div>
</div>


</body>
</html>



