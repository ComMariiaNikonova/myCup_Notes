<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<tiles:insertDefinition name="combinedPages">

    <tiles:putAttribute name="contentRight">

        <tiles:putAttribute name="header">

        </tiles:putAttribute>

        <div>

        <%--
                &lt;%&ndash;JsTree&ndash;%&gt;
            <div class="tree well">
                <ul>
                    <li>
                        <span><i class="icon-folder-open"></i> Parent</span> <a href="">Goes somewhere</a>
                        <ul>
                            <li>
                                <span><i class="icon-minus-sign"></i> Child</span> <a href="">Goes somewhere</a>
                                <ul>
                                    <li>
                                        <span><i class="icon-leaf"></i> Grand Child</span> <a href="">Goes somewhere</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span><i class="icon-minus-sign"></i> Child</span> <a href="">Goes somewhere</a>
                                <ul>
                                    <li>
                                        <span><i class="icon-leaf"></i> Grand Child</span> <a href="">Goes somewhere</a>
                                    </li>
                                    <li>
                                        <span><i class="icon-minus-sign"></i> Grand Child</span> <a href="">Goes somewhere</a>
                                        <ul>
                                            <li>
                                                <span><i class="icon-minus-sign"></i> Great Grand Child</span> <a href="">Goes somewhere</a>
                                                <ul>
                                                    <li>
                                                        <span><i class="icon-leaf"></i> Great great Grand Child</span> <a href="">Goes somewhere</a>
                                                    </li>
                                                    <li>
                                                        <span><i class="icon-leaf"></i> Great great Grand Child</span> <a href="">Goes somewhere</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <span><i class="icon-leaf"></i> Great Grand Child</span> <a href="">Goes somewhere</a>
                                            </li>
                                            <li>
                                                <span><i class="icon-leaf"></i> Great Grand Child</span> <a href="">Goes somewhere</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <span><i class="icon-leaf"></i> Grand Child</span> <a href="">Goes somewhere</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span><i class="icon-folder-open"></i> Parent2</span> <a href="">Goes somewhere</a>
                        <ul>
                            <li>
                                <span><i class="icon-leaf"></i> Child</span> <a href="">Goes somewhere</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        
            <div class="tree">
                <ul>
                    <li>
                        <span><i class="icon-calendar"></i> 2013, Week 2</span>
                        <ul>
                            <li>
                                <span class="badge badge-success"><i class="icon-minus-sign"></i> Monday, January 7: 8.00 hours</span>
                                <ul>
                                    <li>
                                        <a href=""><span><i class="icon-time"></i> 8.00</span> &ndash; Changed CSS to accomodate...</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span class="badge badge-success"><i class="icon-minus-sign"></i> Tuesday, January 8: 8.00 hours</span>
                                <ul>
                                    <li>
                                        <span><i class="icon-time"></i> 6.00</span> &ndash; <a href="">Altered code...</a>
                                    </li>
                                    <li>
                                        <span><i class="icon-time"></i> 2.00</span> &ndash; <a href="">Simplified our approach to...</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span class="badge badge-warning"><i class="icon-minus-sign"></i> Wednesday, January 9: 6.00 hours</span>
                                <ul>
                                    <li>
                                        <a href=""><span><i class="icon-time"></i> 3.00</span> &ndash; Fixed bug caused by...</a>
                                    </li>
                                    <li>
                                        <a href=""><span><i class="icon-time"></i> 3.00</span> &ndash; Comitting latest code to Git...</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <span class="badge badge-important"><i class="icon-minus-sign"></i> Wednesday, January 9: 4.00 hours</span>
                                <ul>
                                    <li>
                                        <a href=""><span><i class="icon-time"></i> 2.00</span> &ndash; Create component that...</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span><i class="icon-calendar"></i> 2013, Week 3</span>
                        <ul>
                            <li>
                                <span class="badge badge-success"><i class="icon-minus-sign"></i> Monday, January 14: 8.00 hours</span>
                                <ul>
                                    <li>
                                        <span><i class="icon-time"></i> 7.75</span> &ndash; <a href="">Writing documentation...</a>
                                    </li>
                                    <li>
                                        <span><i class="icon-time"></i> 0.25</span> &ndash; <a href="">Reverting code back to...</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>--%>
    </tiles:putAttribute>

    <tiles:putAttribute name="contentRight">
        <form>
            <textarea name="editor1" id="editor1" rows="10" cols="80">
                This is my textarea to be replaced with CKEditor.
            </textarea>
            <script>
                CKEDITOR.replace( 'editor1' );
            </script>
        </form>
        <div>
            <spring:url var="logoutAction" value="/logout/j_spring_security_logout"/>
            <a href="<c:url value= "${logoutAction}" />" > Logoff</a>

        </div>
    </tiles:putAttribute>


    <%--        <div>
                <spring:url var="createUserAction" value="/protected/testPage"/>
                <a href="<c:url value= "${logoutAction}" />"> testPage </a>
            </div>--%>

</tiles:insertDefinition>