<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/editormd.css"/>

<!-- 引入editormd相关 -->
<script src="${pageContext.request.contextPath}/js/zepto.min.js"></script>

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/marked.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/prettify.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/raphael.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/underscore.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/sequence-diagram.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/flowchart.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/jquery.flowchart.min.js"></script>
<script src="${pageContext.request.contextPath}/js/editormd.js"></script>
<body style="background:#eee;">
<div id="mdView" style="background:#eee;">
    <textarea id="article_content">${article.content}</textarea>
</div>
<br/>
<script type="text/javascript">
    $(function mdToHtml() {
        //获取要显示的内容
        //var content = $("#article_content").text();
        editormd.markdownToHTML("mdView", {
            htmlDecode : "style,script,iframe",
            emoji : true,
            taskList : true,
            tex : true, // 默认不解析
            flowChart : true, // 默认不解析
            sequenceDiagram : true, // 默认不解析
        });
    });

</script>
</body>
</html>