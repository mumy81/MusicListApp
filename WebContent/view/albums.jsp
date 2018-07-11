<%@page import="java.util.ArrayList"%>
<%@page import="org.devcrew.model.Album"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/webjars/bootstrap/3.1.0/css/bootstrap.min.css'>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<title>Albüm Oluşturma</title>

<title>Albümler</title>

<%
	List<Album> albumList = (ArrayList<Album>) request.getAttribute("albumList");
%>

</head>
<body>
	<div class="container">

		<!-- Static navbar -->
		<div class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="${pageContext.request.contextPath}">MusicList</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="${pageContext.request.contextPath}">Ana Panel</a></li>
						<li><a href="#">Albümler</a></li>


					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="/MusicListApp">Panel</a></li>
						<li><a href="/MusicListApp">Hesabım</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.container-fluid -->
		</div>

		<!-- /container -->


		<div class="col-sm-3 col-md-2 sidebar">
			<ul class="nav nav-sidebar">
				<li><a href="${pageContext.request.contextPath}/albums">Albümler</a></li>
				<li><a href="${pageContext.request.contextPath}/create_album">Albüm
						Ekle</a></li>

			</ul>
		</div>

		<div class="col-sm-9 col-md-10 main">

			<div class="row col-md-8 col-md-offset-2 custyle">
				<table class="table table-striped custab">
					<thead>
						<a href="${pageContext.request.contextPath}/create_album" class="btn btn-primary btn-xs pull-right"><b>+</b>
							Albüm Ekle</a>
						<tr>
							<th>Albüm Adı</th>
							<th>Sanatçı</th>
							<th>Çıkış Yılı</th>
							<th class="text-center">İşlem</th>
						</tr>
					</thead>


					<c:forEach var="album" items="${albumList}">

						<tr>
							<td><c:out value="${album.name}"></c:out></td>
							<td><c:out value="${album.artist}"></c:out></td>
							<td><c:out value="${album.date}"></c:out></td>
							<td class="text-center"><a class='btn btn-info btn-xs'
								href="#"><span class="glyphicon glyphicon-edit"></span> Düzenle</a>
								<a href="#" class="btn btn-danger btn-xs"><span
									class="glyphicon glyphicon-remove"></span> Sil</a></td>
						</tr>


					</c:forEach>

				</table>
			</div>




		</div>
	</div>


	</body>
</html>