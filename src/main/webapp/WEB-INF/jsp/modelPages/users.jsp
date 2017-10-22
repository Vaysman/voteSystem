<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html lang="en">
<jsp:include page="../fragments/headTag.jsp"/>
<body>
<jsp:include page="../fragments/header.jsp"/>
<div class="container">
    <a class="btn btn-primary" onclick="add()">
        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>

    </a>
    <table id="userDataTable" class="display" cellspacing="0" width="100%">
        <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Register Date</th>
            <th>Enabled</th>
            <th>Is Vote?</th>
            <th>Can Vote?</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tfoot>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Register Date</th>
            <th>Enabled</th>
            <th>Is Vote?</th>
            <th>Can Vote?</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </tfoot>
    </table>
</div>
<div class="modal fade" id="editRow">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="clear()">&times;</button>
                <h2 class="modal-title" id="modalTitle"></h2>
            </div>
            <div class="modal-body">
                <form method ="post" class="form-horizontal postForm" id="detailsForm" action="javascript:void(null);" onsubmit="call(this)" >
                    <input type="hidden" id="uid" name="uid">
                    <input type="hidden" id="uuuid" name="uuuid">

                    <%--for userName--%>
                    <div class="form-group">
                        <label for="uname" class="control-label col-xs-3">Name</label>

                        <div class="col-xs-9">
                            <input type="text" class="form-control" id="uname" name="uname">
                        </div>
                    </div>
                    <%--for userEmail--%>
                    <div class="form-group">
                        <label for="uemail" class="control-label col-xs-3">Email</label>

                        <div class="col-xs-9">
                            <input type="text" class="form-control" id="uemail" name="uemail">
                        </div>
                    </div>
                    <%--for Enabled--%>
                    <div class="form-group">
                        <label for="en" class="control-label col-xs-3">Enabled</label>

                        <div class="col-xs-9">
                            <input type="checkbox" checked="checked" class="form-control" id="en" name="en" onclick="enable($(this))"/>
                        </div>
                    </div>
                    <%--for isVote--%>
                    <div class="form-group">
                        <label for="uisvote" class="control-label col-xs-3">is Vote?</label>

                        <div class="col-xs-9">
                            <%--не получал ответ с сервера так как ожидаемая строка была длиннее--%>
                            <%--а этот чекбокс не серилаизовался потому что свойство checked с самого начала не обозначил--%>
                            <input type="checkbox" checked="checked" class="form-control" id="uisvote" name="uisvote" onclick="enable($(this))"/>
                        </div>
                    </div>
                    <%--for canVote--%>
                    <div class="form-group">
                        <label for="ucanvote" class="control-label col-xs-3">can Vote?</label>

                        <div class="col-xs-9">
                            <input type="checkbox" checked="checked" class="form-control" id="ucanvote" name="ucanvote" onclick="enable($(this))"/>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-offset-3 col-xs-9">
                            <input class="btn btn-primary" type="submit" value="save">
                            <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>

                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../fragments/footer.jsp"/>
<script type="text/javascript" src="static/js/user.js" defer></script>
</body>
</html>