<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<tiles:insertDefinition name="combinedPages">

    <tiles:putAttribute name="contentLeft">
        <body>
        <div>
            <!-- Small modal -->
            <button class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button>

            <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        test!
                    </div>
                </div>
            </div>
        </div>

        <div id="tree" data-url="/assets/utils/exampleTree.json"></div>

        <script>
            $("#tree")
                    .bind("before.jstree", function (e, data) {
                        // байндинг на событие перед загрузкой дерева
                    })
                    .jstree({
                        // Подключаем плагины
                        "plugins" : [ "checkbox", "contextmenu", "dnd", "search", "sort", "state", "types", "unique", "wholerow" ],

                        "json_data" : {
                            "ajax" : {
                                "url" : "/assets/utils/exampleTree.json", // получаем наш JSON
                                "data" : function (n) {
                                    // необходиый коллбэк
                                }
                            }
                        }
                    })
                    .bind("select_node.jstree", function(e, data){
                        // байндинг на выделение нода
                        // укажем ему открытие документа на основе якорей
                        window.location.hash = "view_" + data.rslt.obj.attr("id").replace("node_","");
                    });
            $(function () {
                // 6 create an instance when the DOM is ready
                $('#jstree').jstree();
                // 7 bind to events triggered on the tree
                $('#jstree').on("changed.jstree", function (e, data) {
                    console.log(data.selected);
                });
                // 8 interact with the tree - either way is OK
                $('button').on('click', function () {
                    $('#jstree').jstree(true).select_node('child_node_1');
                    $('#jstree').jstree('select_node', 'child_node_1');
                    $.jstree.reference('#jstree').select_node('child_node_1');
                });
            });
        </script>
        <div>
        <p style="color:white">testContent!</p>
        </div>
        <div id="tree"></div>
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
    </tiles:putAttribute>
</tiles:insertDefinition>