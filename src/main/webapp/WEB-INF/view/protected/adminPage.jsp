<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>4.1.&nbsp;Create nodes and relationships - - The Neo4j Manual v2.1.2</title>
    <meta name="generator" content="DocBook XSL Stylesheets V1.78.1">
    <link rel="prev" href="tutorials-cypher.html" title="Chapter&nbsp;4.&nbsp;Getting started with Cypher">
    <link rel="next" href="cypherdoc-movie-database.html" title="4.2.&nbsp;Movie Database">
    <link rel="copyright" href="ln-d5e41.html" title="License: Creative Commons 3.0">
    <meta name="Section-title" content="4.1.&nbsp;Create nodes and relationships">
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

    <!-- Cypher Console -->

    <script type="text/javascript" src="/assets/neo4jScripts/js/console.js"></script>
    <script type="text/javascript" src="js/cypherconsole.js"></script>

    <!-- Version -->
    <script type="text/javascript" src="/assets/neo4jScripts/js/version.js"></script>
    <script type="text/javascript" src="http://docs.neo4j.org/chunked/versions.js"></script>
    <script type="text/javascript" src="/assets/neo4jScripts/js/versionswitcher.js"></script>

    <!-- Discuss -->
    <script type="text/javascript" src="/assets/neo4jScripts/js/mutate.min.js"></script>
    <script type="text/javascript" src="/assets/neo4jScripts/js/disqus.js"></script>

    <script type="text/javascript">
        /*@cc_on @*/
        /*@
         $( '#content' ).addClass( 'internet-explorer' );
         @*/
    </script>


</head>
<body>
<div id="header"><a href="index.html" id="logo"><img src="/assets/neo4jScripts/common/images/logo-neo4j.svg" alt=""></a>

    <h1>The Neo4j Manual v2.1.2<span>4.1.&nbsp;Create nodes and relationships</span></h1>

    <div id="navheader"><!---->
        <div id="navLinks"><span><a id="showHideButton" href="#" class="pointLeft" tabindex="5"
                                    title="Show/Hide TOC tree"><i class="fa fa-columns"></i> Contents
        </a></span><span><a accesskey="p" id="navLinkPrevious" tabindex="5" href="tutorials-cypher.html"><i
                class="fa fa-arrow-circle-left"></i>Prev</a></span><span><a accesskey="u" id="navLinkUp" tabindex="5"
                                                                            href="tutorials-cypher.html">Up<i
                class="fa fa-arrow-circle-up"></i></a></span><span><a accesskey="n" id="navLinkNext" tabindex="5"
                                                                      href="cypherdoc-movie-database.html">Next<i
                class="fa fa-arrow-circle-right"></i></a></span></div>
        <div id="versions">
            <ul class="list-inline">
                <li><a role="menuitem"
                       href="http://docs.neo4j.org/chunked/2.0.3/cypherdoc-create-nodes-and-relationships.html"
                       title="See this page in version 2.0.3.">2.0.3</a></li>
                <li class="disabled"><a role="menuitem" title="This page does not exist in version 1.9.8.">1.9.8</a>
                </li>
            </ul>
        </div>
        <div id="additional-versions">
            <div class="dropdown"><a class="dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown"><i
                    class="fa fa-caret-down"></i></a>
                <ul class="dropdown-menu dropdown-menu-right" role="menu" aria-labelledby="dropdownMenu1">
                    <li><a role="menuitem"
                           href="http://docs.neo4j.org/chunked/stable/cypherdoc-create-nodes-and-relationships.html"
                           title="See this page in version stable.">stable</a></li>
                    <li><a role="menuitem"
                           href="http://docs.neo4j.org/chunked/snapshot/cypherdoc-create-nodes-and-relationships.html"
                           title="See this page in version snapshot.">snapshot</a></li>
                    <li><a role="menuitem"
                           href="http://docs.neo4j.org/chunked/milestone/cypherdoc-create-nodes-and-relationships.html"
                           title="See this page in version milestone.">milestone</a></li>
                    <li class="disabled"><a role="menuitem" title="This page does not exist in version 1.8.3.">1.8.3</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div id="content">
<section class="section" id="cypherdoc-create-nodes-and-relationships">
    <div xmlns="" class="titlepage">
        <div>
            <div><h2 xmlns="http://www.w3.org/1999/xhtml" class="title" style="clear: both">4.1.&nbsp;Create nodes
                and relationships</h2></div>
        </div>
    </div>

    <p class="cypherdoc-console ui-resizable" style="display: block; background: none;">
        <iframe id="console" class="cypherdoc-console"
                src="http://console.neo4j.org/?init=none&amp;query=none&amp;message=%0A%0AUse%20the%20play%2Fcopy%20buttons%20to%20run%20the%20queries!&amp;version=2.1.2&amp;no_root=true"></iframe>
        <span class="resize-vertical-handle ui-resizable-handle ui-resizable-s"><span></span></span><a
            class="btn btn-xs btn-primary resize-toggle"><i class="fa fa-expand"></i></a></p>
    <p>Create a node for the actor Tom Hanks:</p>

    <div class="query-outer-wrapper">
        <div class="query-wrapper" style="margin-left: 32px;">
                <pre class="programlisting cm-s-neo" data-lang="cypher"><span class="cm-keyword">CREATE</span> <span
                        class="cm-node">(</span><span class="cm-atom">n:Actor</span> <span
                        class="cm-node">{</span> <span class="cm-atom">name:</span><span
                        class="cm-string">"Tom Hanks"</span> <span class="cm-node">}</span><span
                        class="cm-node">)</span><span class="cm-node">;</span></pre>
        </div>
        <div class="btn-group btn-group-xs btn-group-vertical"><a class="run-query btn btn-success"
                                                                  data-toggle="tooltip"
                                                                  title="Execute in the console." href="#"><i
                class="fa fa-play"></i></a><a class="edit-query btn btn-default" data-toggle="tooltip"
                                              title="Copy to the console." href="#"><i class="fa fa-clipboard"></i></a>
        </div>
    </div>
    <p>Let’s find the node we created:</p>

    <div class="query-outer-wrapper">
        <div class="query-wrapper" style="margin-left: 32px;"><pre class="programlisting cm-s-neo"
                                                                   data-lang="cypher"><span
                class="cm-keyword">MATCH</span> <span class="cm-node">(</span><span
                class="cm-atom">actor:Actor</span> <span class="cm-node">{</span> <span class="cm-atom">name:</span> <span
                class="cm-string">"Tom Hanks"</span> <span class="cm-node">}</span><span class="cm-node">)</span>
<span class="cm-keyword">RETURN</span> <span class="cm-variable">actor</span><span class="cm-node">;</span></pre>
        </div>
        <div class="btn-group btn-group-xs btn-group-vertical"><a class="run-query btn btn-success"
                                                                  data-toggle="tooltip"
                                                                  title="Execute in the console." href="#"><i
                class="fa fa-play"></i></a><a class="edit-query btn btn-default" data-toggle="tooltip"
                                              title="Copy to the console." href="#"><i class="fa fa-clipboard"></i></a>
        </div>
    </div>
    <p>Now let’s create a movie and connect it to the Tom Hanks node with an <code class="literal">ACTED_IN</code>
        relationship:</p>

    <div class="query-outer-wrapper">
        <div class="query-wrapper" style="margin-left: 32px;"><pre class="programlisting cm-s-neo"
                                                                   data-lang="cypher"><span
                class="cm-keyword">MATCH</span> <span class="cm-node">(</span><span
                class="cm-atom">actor:Actor</span><span class="cm-node">)</span>
<span class="cm-keyword">WHERE</span> <span class="cm-variable">actor</span><span class="cm-node">.</span><span
                    class="cm-variable">name</span> = <span class="cm-string">"Tom Hanks"</span>
<span class="cm-keyword">CREATE</span> <span class="cm-node">(</span><span class="cm-atom">movie:Movie</span> <span
                    class="cm-node">{</span> <span class="cm-atom">title:</span><span class="cm-string">'Sleepless IN Seattle'</span> <span
                    class="cm-node">}</span><span class="cm-node">)</span>
<span class="cm-keyword">CREATE</span> <span class="cm-node">(</span><span class="cm-variable">actor</span><span
                    class="cm-node">)</span>-<span class="cm-node">[</span><span
                    class="cm-variable">:ACTED_IN</span><span class="cm-node">]</span>-&gt;<span
                    class="cm-node">(</span><span class="cm-variable">movie</span><span
                    class="cm-node">)</span><span class="cm-node">;</span></pre>
        </div>
        <div class="btn-group btn-group-xs btn-group-vertical"><a class="run-query btn btn-success"
                                                                  data-toggle="tooltip"
                                                                  title="Execute in the console." href="#"><i
                class="fa fa-play"></i></a><a class="edit-query btn btn-default" data-toggle="tooltip"
                                              title="Copy to the console." href="#"><i class="fa fa-clipboard"></i></a>
        </div>
    </div>
    <p>Using a <code class="literal">WHERE</code> clause in the query above to get the Tom Hanks node does the same
        thing as the pattern in the <code class="literal">MATCH</code> clause of the previous query.</p>

    <p>This is how our graph looks now:</p>

    <div class="informalfigure">
        <a class="ulink" href="images/cypherdoc-created-first-movie-e8e6e816.svg" target="_blank">
                <span class="inlinemediaobject"><img src="images/cypherdoc-created-first-movie-e8e6e816.svg"
                                                     alt="cypherdoc-created-first-movie-e8e6e816.svg"
                                                     class="img-responsive"></span>
        </a>
    </div>
    <p>We can do more of the work in a single clause.
        <code class="literal">CREATE UNIQUE</code> will make sure we don’t create duplicate patterns.
        Using this: <code class="literal">[r:ACTED_IN]</code> lets us return the relationship.</p>

    <div class="query-outer-wrapper">
        <div class="query-wrapper" style="margin-left: 32px;"><pre class="programlisting cm-s-neo"
                                                                   data-lang="cypher"><span
                class="cm-keyword">MATCH</span> <span class="cm-node">(</span><span
                class="cm-atom">actor:Actor</span> <span class="cm-node">{</span> <span class="cm-atom">name:</span> <span
                class="cm-string">"Tom Hanks"</span> <span class="cm-node">}</span><span class="cm-node">)</span>
<span class="cm-keyword">CREATE</span> <span class="cm-keyword">UNIQUE</span> <span class="cm-node">(</span><span
                    class="cm-variable">actor</span><span class="cm-node">)</span>-<span
                    class="cm-node">[</span><span class="cm-atom">r:ACTED_IN</span><span class="cm-node">]</span>-&gt;<span
                    class="cm-node">(</span><span class="cm-atom">movie:Movie</span> <span class="cm-node">{</span> <span
                    class="cm-atom">title:</span><span class="cm-string">"Forrest Gump"</span> <span
                    class="cm-node">}</span><span class="cm-node">)</span>
<span class="cm-keyword">RETURN</span> <span class="cm-variable">r</span><span class="cm-node">;</span></pre>
        </div>
        <div class="btn-group btn-group-xs btn-group-vertical"><a class="run-query btn btn-success"
                                                                  data-toggle="tooltip"
                                                                  title="Execute in the console." href="#"><i
                class="fa fa-play"></i></a><a class="edit-query btn btn-default" data-toggle="tooltip"
                                              title="Copy to the console." href="#"><i class="fa fa-clipboard"></i></a>
        </div>
    </div>
    <p>Set a property on a node:</p>

    <div class="query-outer-wrapper">
        <div class="query-wrapper" style="margin-left: 32px;"><pre class="programlisting cm-s-neo"
                                                                   data-lang="cypher"><span
                class="cm-keyword">MATCH</span> <span class="cm-node">(</span><span
                class="cm-atom">actor:Actor</span> <span class="cm-node">{</span> <span class="cm-atom">name:</span> <span
                class="cm-string">"Tom Hanks"</span> <span class="cm-node">}</span><span class="cm-node">)</span>
<span class="cm-keyword">SET</span> <span class="cm-variable">actor</span><span class="cm-node">.</span><span
                    class="cm-variable">DoB</span> = <span class="cm-variable">1944</span>
<span class="cm-keyword">RETURN</span> <span class="cm-variable">actor</span><span class="cm-node">.</span><span
                    class="cm-variable">name</span><span class="cm-node">,</span> <span
                    class="cm-variable">actor</span><span class="cm-node">.</span><span
                    class="cm-variable">DoB</span><span class="cm-node">;</span></pre>
        </div>
        <div class="btn-group btn-group-xs btn-group-vertical"><a class="run-query btn btn-success"
                                                                  data-toggle="tooltip"
                                                                  title="Execute in the console." href="#"><i
                class="fa fa-play"></i></a><a class="edit-query btn btn-default" data-toggle="tooltip"
                                              title="Copy to the console." href="#"><i class="fa fa-clipboard"></i></a>
        </div>
    </div>
    <p>The labels <span class="emphasis"><em>Actor</em></span> and <span class="emphasis"><em>Movie</em></span> help
        us organize the graph.
        Let’s list all <span class="emphasis"><em>Movie</em></span> nodes:</p>

    <div class="query-outer-wrapper">
        <div class="query-wrapper" style="margin-left: 32px;"><pre class="programlisting cm-s-neo"
                                                                   data-lang="cypher"><span
                class="cm-keyword">MATCH</span> <span class="cm-node">(</span><span
                class="cm-atom">movie:Movie</span><span class="cm-node">)</span>
<span class="cm-keyword">RETURN</span> <span class="cm-variable">movie</span> <span class="cm-keyword">AS</span> <span
                    class="cm-variable">`All</span> <span class="cm-variable">Movies</span><span
                    class="cm-variable">`</span><span class="cm-node">;</span></pre>
        </div>
        <div class="btn-group btn-group-xs btn-group-vertical"><a class="run-query btn btn-success"
                                                                  data-toggle="tooltip"
                                                                  title="Execute in the console." href="#"><i
                class="fa fa-play"></i></a><a class="edit-query btn btn-default" data-toggle="tooltip"
                                              title="Copy to the console." href="#"><i class="fa fa-clipboard"></i></a>
        </div>
    </div>
    <div class="queryresult table">
        <table cellspacing="0" cellpadding="0" class="table table-condensed table-hover">
            <thead>
            <tr>
                <th>All Movies</th>
            </tr>
            </thead>
            <tfoot>
            <tr>
                <th>2 rows</th>
            </tr>
            </tfoot>
            <tbody>
            <tr>
                <td><p><code class="literal">Node[1]{title:"Sleepless in Seattle"}</code></p></td>
            </tr>
            <tr>
                <td><p><code class="literal">Node[2]{title:"Forrest Gump"}</code></p></td>
            </tr>
            </tbody>
        </table>
    </div>
</section>

<footer>
    <div id="discuss">
        <div id="discuss-header"><i id="discuss-icon" class="fa fa-comments"></i> <b>Comments</b><i
                id="discuss-toggle" class="fa fa-plus-circle"></i></div>
        <div id="discuss-body">
            <div id="disqus_thread"></div>
        </div>
    </div>
    <p>
        © Copyright
        <a href="http://creativecommons.org/licenses/by-sa/3.0/"><img id="copyright-img" src="images/by-sa.svg"
                                                                      alt="CC BY-SA 3.0"
                                                                      title="Creative Commons Attribution-ShareAlike 3.0"></a>
        <a href="http://www.neotechnology.com/"><img id="neotech-logo" src="images/neo-technology.svg"
                                                     alt="Neo Technology"></a>
    </p>
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
<li><i class="fa fa-file-o"></i><span class="file"><a href="preface.html" tabindex="1">Preface</a></span>
</li>
<li class="expandable">
    <div class="hitarea expandable-hitarea"></div>
    <i class="fa fa-folder-o"></i><span class="folder"><a href="introduction.html"
                                                          tabindex="1">Introduction</a></span>
    <ul style="display: none;">
        <li><i class="fa fa-file-o"></i><span class="file"><a
                href="introduction-highlights.html" tabindex="1">Neo4j Highlights</a></span>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a
                href="graphdb-concepts.html" tabindex="1">Graph Database Concepts</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="what-is-a-graphdb.html" tabindex="1">What is a Graph
                    Database?</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorial-comparing-models.html" tabindex="1">Comparing
                    Database Models</a></span></li>
            </ul>
        </li>
        <li class="expandable lastExpandable">
            <div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="graphdb-neo4j.html"
                                                                  tabindex="1">The Neo4j
            Graph Database</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="graphdb-neo4j-nodes.html" tabindex="1">Nodes</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="graphdb-neo4j-relationships.html"
                        tabindex="1">Relationships</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="graphdb-neo4j-properties.html"
                        tabindex="1">Properties</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="graphdb-neo4j-labels.html" tabindex="1">Labels</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="graphdb-neo4j-paths.html" tabindex="1">Paths</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="graphdb-neo4j-traversal.html"
                        tabindex="1">Traversal</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="graphdb-neo4j-schema.html" tabindex="1">Schema</a></span></li>
            </ul>
        </li>
    </ul>
</li>
<li class="collapsable">
    <div class="hitarea collapsable-hitarea "></div>
    <i class="fa fa-folder-open-o"></i><span class="folder"><a href="tutorials.html"
                                                               tabindex="1" class="">Tutorials</a></span>
    <ul style="display: block;">
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a
                href="tutorials-cypher.html" tabindex="1" class="">Getting started with
            Cypher</a></span>
            <ul style="display: none;">
                <li style="background-color: #D8D8D8; "><i class="fa fa-file-o"></i><span
                        class="file"><a href="cypherdoc-create-nodes-and-relationships.html"
                                        tabindex="1" class="webhelp-currentid"
                                        style="color: black;">Create nodes and
                    relationships</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypherdoc-movie-database.html" tabindex="1">Movie Database</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypherdoc-social-movie-database.html" tabindex="1">Social
                    Movie Database</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypherdoc-finding-paths.html" tabindex="1">Finding
                    Paths</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypherdoc-labels.html" tabindex="1">Labels, Constraints and
                    Indexes</a></span></li>
            </ul>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a
                href="data-modeling-examples.html" tabindex="1" class="">Data Modeling
            Examples</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypherdoc-linked-lists.html" tabindex="1">Linked
                    Lists</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypherdoc-tv-shows.html" tabindex="1">TV Shows</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="examples-acl-structures-in-graphs.html" tabindex="1">ACL
                    structures in graphs</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-cookbook-hyperedges.html"
                        tabindex="1">Hyperedges</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-cookbook-friend-finding.html" tabindex="1">Basic friend
                    finding based on social neighborhood</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-cookbook-co-favorited-places.html" tabindex="1">Co-favorited
                    places</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-cookbook-similar-favorites.html" tabindex="1">Find
                    people based on similar favorites</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-cookbook-mutual-friends-and-groups.html" tabindex="1">Find
                    people based on mutual friends and groups</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-cookbook-similar-tags.html" tabindex="1">Find friends
                    based on similar tagging</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-cookbook-multirelational-social-network.html"
                        tabindex="1">Multirelational (social) graphs</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-cookbook-newsfeed.html" tabindex="1">Implementing
                    newsfeeds in a graph</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-cookbook-boostingrecommendations.html" tabindex="1">Boosting
                    recommendation results</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-cookbook-clustering-coefficient.html" tabindex="1">Calculating
                    the clustering coefficient of a network</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-cookbook-pretty-graphs.html" tabindex="1">Pretty
                    graphs</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-cookbook-path-tree.html" tabindex="1">A multilevel
                    indexing structure (path tree)</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-cookbook-similarity-calc.html" tabindex="1">Complex
                    similarity computations</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-cookbook-graphity.html" tabindex="1">The Graphity
                    activity stream model</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="examples-user-roles-in-graphs.html" tabindex="1">User roles in
                    graphs</a></span></li>
            </ul>
        </li>
        <li class="expandable lastExpandable">
            <div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="languages.html"
                                                                  tabindex="1">Languages</a></span>
            <ul style="display: none;">
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="server-java-rest-client-example.html" tabindex="1">How to use
                    the REST API from Java</a></span></li>
            </ul>
        </li>
    </ul>
</li>
<li class="collapsable">
    <div class="hitarea collapsable-hitarea"></div>
    <i class="fa fa-folder-open-o"></i><span class="folder"><a href="cypher-query-lang.html"
                                                               tabindex="1" class="">Cypher
    Query Language</a></span>
    <ul style="display: block;">
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="cypher-intro.html"
                                                                  tabindex="1" class="">Introduction</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-introduction.html" tabindex="1">What is
                    Cypher?</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-updating.html" tabindex="1">Updating the
                    graph</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-transactions.html" tabindex="1">Transactions</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypherdoc-uniqueness.html" tabindex="1">Uniqueness</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-parameters.html" tabindex="1">Parameters</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-compatibility.html"
                        tabindex="1">Compatibility</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-plans.html" tabindex="1">Query Performance</a></span>
                </li>
            </ul>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="query-syntax.html"
                                                                  tabindex="1">Syntax</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-values.html" tabindex="1">Values</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-expressions.html" tabindex="1">Expressions</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="syntax-simple-case.html" tabindex="1">Simple CASE</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="syntax-generic-case.html" tabindex="1">Generic CASE</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-identifiers.html" tabindex="1">Identifiers</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-operators.html" tabindex="1">Operators</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-comments.html" tabindex="1">Comments</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="introduction-pattern.html" tabindex="1">Patterns</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="syntax-collections.html" tabindex="1">Collections</a></span>
                </li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypher-working-with-null.html" tabindex="1">Working with
                    NULL</a></span></li>
            </ul>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="query-general.html"
                                                                  tabindex="1">General
            Clauses</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-return.html" tabindex="1">Return</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-order.html" tabindex="1">Order by</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-limit.html" tabindex="1">Limit</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a href="query-skip.html"
                                                                      tabindex="1">Skip</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a href="query-with.html"
                                                                      tabindex="1">With</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-unwind.html" tabindex="1">Unwind</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-union.html" tabindex="1">Union</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-using.html" tabindex="1">Using</a></span></li>
            </ul>
        </li>
        <li class="collapsable">
            <div class="hitarea collapsable-hitarea"></div>
            <i class="fa fa-folder-open-o"></i><span class="folder"><a
                href="query-read.html" tabindex="1">Reading Clauses</a></span>
            <ul style="display: block;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-match.html" tabindex="1" class="">Match</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-optional-match.html" tabindex="1">Optional
                    Match</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-where.html" tabindex="1">Where</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-start.html" tabindex="1">Start</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-aggregation.html" tabindex="1">Aggregation</a></span>
                </li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-load-csv.html" tabindex="1">Load CSV</a></span></li>
            </ul>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="query-write.html"
                                                                  tabindex="1">Writing
            Clauses</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-create.html" tabindex="1">Create</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-merge.html" tabindex="1">Merge</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a href="query-set.html"
                                                                      tabindex="1">Set</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-delete.html" tabindex="1">Delete</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-remove.html" tabindex="1">Remove</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-foreach.html" tabindex="1">Foreach</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-create-unique.html" tabindex="1">Create
                    Unique</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="cypherdoc-importing-csv-files-with-cypher.html" tabindex="1">Importing
                    CSV files with Cypher</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-periodic-commit.html" tabindex="1">Using Periodic
                    Commit</a></span></li>
            </ul>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="query-function.html"
                                                                  tabindex="1">Functions</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-predicates.html" tabindex="1">Predicates</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-functions-scalar.html" tabindex="1">Scalar functions</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-functions-collection.html" tabindex="1">Collection
                    functions</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-functions-mathematical.html" tabindex="1">Mathematical
                    functions</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-functions-string.html" tabindex="1">String functions</a></span>
                </li>
            </ul>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="cypher-schema.html"
                                                                  tabindex="1">Schema</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-schema-index.html" tabindex="1">Indexes</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-constraints.html" tabindex="1">Constraints</a></span>
                </li>
            </ul>
        </li>
        <li class="expandable lastExpandable">
            <div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a
                href="examples-from-sql-to-cypher.html" tabindex="1">From SQL to Cypher</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-sql-start.html" tabindex="1">Start</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-sql-match.html" tabindex="1">Match</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-sql-where.html" tabindex="1">Where</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="query-sql-return.html" tabindex="1">Return</a></span></li>
            </ul>
        </li>
    </ul>
</li>
<li class="expandable">
    <div class="hitarea expandable-hitarea"></div>
    <i class="fa fa-folder-o"></i><span class="folder"><a
        href="reference-documentation.html" tabindex="1">Reference</a></span>
    <ul style="display: none;">
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="capabilities.html"
                                                                  tabindex="1">Capabilities</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="capabilities-data-security.html" tabindex="1">Data
                    Security</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="capabilities-data-integrity.html" tabindex="1">Data
                    Integrity</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="capabilities-data-integration.html" tabindex="1">Data
                    Integration</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="capabilities-availability.html" tabindex="1">Availability and
                    Reliability</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="capabilities-capacity.html" tabindex="1">Capacity</a></span>
                </li>
            </ul>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="transactions.html"
                                                                  tabindex="1">Transaction
            Management</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="transactions-interaction.html" tabindex="1">Interaction
                    cycle</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="transactions-isolation.html" tabindex="1">Isolation levels</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="transactions-locking.html" tabindex="1">Default locking
                    behavior</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="transactions-deadlocks.html" tabindex="1">Deadlocks</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="transactions-delete.html" tabindex="1">Delete
                    semantics</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="transactions-unique-nodes.html" tabindex="1">Creating unique
                    nodes</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="transactions-events.html" tabindex="1">Transaction events</a></span>
                </li>
            </ul>
        </li>
        <li><i class="fa fa-file-o"></i><span class="file"><a href="import.html"
                                                              tabindex="1">Data
            Import</a></span></li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="graph-algo.html"
                                                                  tabindex="1">Graph
            Algorithms</a></span>
            <ul style="display: none;">
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="graph-algo-introduction.html"
                        tabindex="1">Introduction</a></span></li>
            </ul>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="rest-api.html"
                                                                  tabindex="1">REST API</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-transactional.html" tabindex="1">Transactional HTTP
                    endpoint</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="status-codes.html" tabindex="1">Neo4j Status Codes</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-service-root.html" tabindex="1">Service
                    root</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-streaming.html" tabindex="1">Streaming</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-cypher.html" tabindex="1">Cypher queries via REST</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-property-values.html" tabindex="1">Property
                    values</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-nodes.html" tabindex="1">Nodes</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-relationships.html"
                        tabindex="1">Relationships</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-relationship-types.html" tabindex="1">Relationship
                    types</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-node-properties.html" tabindex="1">Node
                    properties</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-relationship-properties.html" tabindex="1">Relationship
                    properties</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-node-labels.html" tabindex="1">Node labels</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-schema-indexes.html" tabindex="1">Indexing</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-schema-constraints.html" tabindex="1">Constraints</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-traverse.html" tabindex="1">Traversals</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-graph-algos.html" tabindex="1">Graph
                    Algorithms</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-batch-ops.html" tabindex="1">Batch
                    operations</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-indexes.html" tabindex="1">Legacy indexing</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-unique-indexes.html" tabindex="1">Unique Indexing</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-auto-indexes.html" tabindex="1">Legacy Automatic
                    Indexes</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-configurable-auto-indexes.html" tabindex="1">Configurable
                    Legacy Automatic Indexing</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="rest-api-wadl-support.html" tabindex="1">WADL
                    Support</a></span></li>
            </ul>
        </li>
        <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                href="deprecations.html" tabindex="1">Deprecations</a></span></li>
    </ul>
</li>
<li class="expandable">
    <div class="hitarea expandable-hitarea"></div>
    <i class="fa fa-folder-o"></i><span class="folder"><a href="operations.html"
                                                          tabindex="1">Operations</a></span>
    <ul style="display: none;">
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="deployment.html"
                                                                  tabindex="1">Installation
            &amp; Deployment</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="deployment-requirements.html" tabindex="1">System
                    Requirements</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="server-installation.html" tabindex="1">Server Installation</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="server-installation-cloud.html" tabindex="1">Server
                    Installation in the Cloud</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="deployment-upgrading.html" tabindex="1">Upgrading</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="server-debugging.html" tabindex="1">Setup for remote
                    debugging</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="usage-data-collector.html" tabindex="1">Usage Data
                    Collector</a></span></li>
            </ul>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="configuration.html"
                                                                  tabindex="1">Configuration
            &amp; Performance</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="configuration-introduction.html" tabindex="1">Introduction</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="server-configuration.html" tabindex="1">Server
                    Configuration</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="server-performance.html" tabindex="1">Server Performance
                    Tuning</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="performance-guide.html" tabindex="1">Performance
                    Guide</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="kernel-configuration.html" tabindex="1">Kernel
                    configuration</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="configuration-caches.html" tabindex="1">Caches in
                    Neo4j</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="configuration-logical-logs.html" tabindex="1">Logical logs</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="configuration-jvm.html" tabindex="1">JVM Settings</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="short-strings.html" tabindex="1">Compressed storage of short
                    strings</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="short-arrays.html" tabindex="1">Compressed storage of short
                    arrays</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="configuration-io-examples.html" tabindex="1">Memory mapped IO
                    settings</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="linux-performance-guide.html" tabindex="1">Linux Performance
                    Guide</a></span></li>
            </ul>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="ha.html"
                                                                  tabindex="1">High
            Availability</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="ha-architecture.html" tabindex="1">Architecture</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="ha-configuration.html" tabindex="1">Setup and
                    configuration</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a href="ha-how.html"
                                                                      tabindex="1">How Neo4j
                    HA operates</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="arbiter-instances.html" tabindex="1">Arbiter
                    Instances</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="upgrade-guide.html" tabindex="1">Upgrading a Neo4j HA
                    Cluster</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="ha-setup-tutorial.html" tabindex="1">High Availability setup
                    tutorial</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="ha-rest-info.html" tabindex="1">REST endpoint for HA status
                    information</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="ha-haproxy.html" tabindex="1">Setting up HAProxy as a load
                    balancer</a></span></li>
            </ul>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a
                href="operations-backup.html" tabindex="1">Backup</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="backup-introduction.html" tabindex="1">Introducing Backup</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="backup-embedded-and-server.html" tabindex="1">Server and
                    Embedded</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="backup-java.html" tabindex="1">Online Backup from
                    Java</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a href="backup-ha.html"
                                                                      tabindex="1">High
                    Availability</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="backup-restoring.html" tabindex="1">Restoring Your
                    Data</a></span></li>
            </ul>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a
                href="operations-security.html" tabindex="1">Security</a></span>
            <ul style="display: none;">
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="security-server.html" tabindex="1">Securing access to the
                    Neo4j Server</a></span></li>
            </ul>
        </li>
        <li class="expandable lastExpandable">
            <div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a
                href="operations-monitoring.html" tabindex="1">Monitoring</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a href="jmx-remote.html"
                                                                      tabindex="1">Adjusting
                    remote JMX access to the Neo4j Server</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="jmx-connect-jconsole.html" tabindex="1">How to connect to a
                    Neo4j instance using JMX and JConsole</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="jmx-connect-programmatic.html" tabindex="1">How to connect to
                    the JMX monitoring programmatically</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="jmx-mxbeans.html" tabindex="1">Reference of supported JMX
                    MBeans</a></span></li>
            </ul>
        </li>
    </ul>
</li>
<li class="expandable">
    <div class="hitarea expandable-hitarea"></div>
    <i class="fa fa-folder-o"></i><span class="folder"><a href="tools.html" tabindex="1">Tools</a></span>
    <ul style="display: none;">
        <li><i class="fa fa-file-o"></i><span class="file"><a href="tools-webadmin.html"
                                                              tabindex="1">Web Interface</a></span>
        </li>
        <li class="expandable lastExpandable">
            <div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="shell.html"
                                                                  tabindex="1">Neo4j
            Shell</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="shell-starting.html" tabindex="1">Starting the
                    shell</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="shell-options.html" tabindex="1">Passing options and
                    arguments</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="shell-options-enum.html" tabindex="1">Enum options</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="shell-filters.html" tabindex="1">Filters</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="shell-titles.html" tabindex="1">Node titles</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="shell-commands.html" tabindex="1">How to use (individual
                    commands)</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="shell-sample-session.html" tabindex="1">An example shell
                    session</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="shell-matrix-example.html" tabindex="1">A Matrix
                    example</a></span></li>
            </ul>
        </li>
    </ul>
</li>
<li class="expandable">
    <div class="hitarea expandable-hitarea"></div>
    <i class="fa fa-folder-o"></i><span class="folder"><a href="community.html"
                                                          tabindex="1">Community</a></span>
    <ul style="display: none;">
        <li><i class="fa fa-file-o"></i><span class="file"><a href="community-support.html"
                                                              tabindex="1">Community
            Support</a></span></li>
        <li class="expandable lastExpandable">
            <div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a
                href="community-contributing.html" tabindex="1">Contributing to
            Neo4j</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a href="cla.html"
                                                                      tabindex="1">Contributor
                    License Agreement</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="community-contribution-areas.html" tabindex="1">Areas for
                    contribution</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="community-docs.html" tabindex="1">Writing Neo4j
                    Documentation</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="community-translating.html" tabindex="1">Translating the Neo4j
                    Manual</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="community-contributing-code.html" tabindex="1">Contributing
                    Code to Neo4j</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="contributors.html" tabindex="1">Contributors</a></span></li>
            </ul>
        </li>
    </ul>
</li>
<li class="expandable">
    <div class="hitarea expandable-hitarea"></div>
    <i class="fa fa-folder-o"></i><span class="folder"><a href="advanced-usage.html"
                                                          tabindex="1">Advanced
    Usage</a></span>
    <ul style="display: none;">
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a
                href="server-extending.html" tabindex="1">Extending the Neo4j
            Server</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="server-plugins.html" tabindex="1">Server Plugins</a></span>
                </li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="server-unmanaged-extensions.html" tabindex="1">Unmanaged
                    Extensions</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="plugins-extensions-desktop.html" tabindex="1">Installing
                    Plugins and Extensions in Neo4j Desktop</a></span></li>
            </ul>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a
                href="tutorials-java-embedded.html" tabindex="1">Using Neo4j embedded in
            Java applications</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorials-java-embedded-setup.html" tabindex="1">Include Neo4j
                    in your project</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorials-java-embedded-hello-world.html" tabindex="1">Hello
                    World</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorials-java-embedded-new-index.html" tabindex="1">User
                    database with indexes</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorials-java-embedded-index.html" tabindex="1">User database
                    with legacy index</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorials-java-embedded-resource-iteration.html" tabindex="1">Managing
                    resources when using long running transactions</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorials-java-unit-testing.html" tabindex="1">Basic unit
                    testing</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorials-java-embedded-traversal.html"
                        tabindex="1">Traversal</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorials-java-embedded-entities.html" tabindex="1">Domain
                    entities</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorials-java-embedded-graph-algo.html" tabindex="1">Graph
                    Algorithm examples</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorials-java-embedded-jmx.html" tabindex="1">Reading a
                    management attribute</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorials-java-embedded-unique-nodes.html" tabindex="1">How to
                    create unique nodes</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorials-cypher-java.html" tabindex="1">Execute Cypher
                    Queries from Java</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorials-cypher-parameters-java.html" tabindex="1">Query
                    Parameters</a></span></li>
            </ul>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a
                href="tutorial-traversal.html" tabindex="1">The Traversal
            Framework</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorial-traversal-concepts.html" tabindex="1">Main
                    concepts</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="tutorial-traversal-java-api.html" tabindex="1">Traversal
                    Framework Java API</a></span></li>
            </ul>
        </li>
        <li class="expandable">
            <div class="hitarea expandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="indexing.html"
                                                                  tabindex="1">Legacy
            Indexing</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="indexing-introduction.html"
                        tabindex="1">Introduction</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="indexing-create.html" tabindex="1">Create</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="indexing-delete.html" tabindex="1">Delete</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="indexing-add.html" tabindex="1">Add</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="indexing-remove.html" tabindex="1">Remove</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="indexing-update.html" tabindex="1">Update</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="indexing-search.html" tabindex="1">Search</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="indexing-relationships.html" tabindex="1">Relationship
                    indexes</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="indexing-scores.html" tabindex="1">Scores</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="indexing-create-advanced.html" tabindex="1">Configuration and
                    fulltext indexes</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="indexing-lucene-extras.html" tabindex="1">Extra features for
                    Lucene indexes</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="auto-indexing.html" tabindex="1">Automatic Indexing</a></span>
                </li>
            </ul>
        </li>
        <li class="expandable lastExpandable">
            <div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
            <i class="fa fa-folder-o"></i><span class="folder"><a href="batchinsert.html"
                                                                  tabindex="1">Batch
            Insertion</a></span>
            <ul style="display: none;">
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="batchinsert-examples.html" tabindex="1">Batch Inserter
                    Examples</a></span></li>
                <li><i class="fa fa-file-o"></i><span class="file"><a
                        href="batchinsert-db.html" tabindex="1">Batch Graph
                    Database</a></span></li>
                <li class="last"><i class="fa fa-file-o"></i><span class="file"><a
                        href="indexing-batchinsert.html" tabindex="1">Index Batch
                    Insertion</a></span></li>
            </ul>
        </li>
    </ul>
</li>
<li class="expandable lastExpandable">
    <div class="hitarea expandable-hitarea lastExpandable-hitarea"></div>
    <i class="fa fa-folder-o"></i><span class="folder"><a href="manpages.html" tabindex="1">Manpages</a></span>
    <ul style="display: none;">
        <li><i class="fa fa-file-o"></i><span class="file"><a href="re01.html" tabindex="1">neo4j</a></span>
        </li>
        <li><i class="fa fa-file-o"></i><span class="file"><a href="re02.html" tabindex="1">neo4j-installer</a></span>
        </li>
        <li><i class="fa fa-file-o"></i><span class="file"><a href="re03.html" tabindex="1">neo4j-shell</a></span>
        </li>
        <li><i class="fa fa-file-o"></i><span class="file"><a href="re04.html" tabindex="1">neo4j-backup</a></span>
        </li>
        <li class="last"><i class="fa fa-file-o"></i><span class="file"><a href="re05.html"
                                                                           tabindex="1">neo4j-arbiter</a></span>
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



