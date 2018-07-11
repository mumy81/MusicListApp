<%@page import="org.devcrew.model.Album"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel='stylesheet' href='${pageContext.request.contextPath}/webjars/bootstrap/3.1.0/css/bootstrap.min.css'>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Albüm Başarıyla Oluşturuldu</title>
<%
	Album album = (Album) request.getAttribute("album");
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
						<li class="active"><a
							href="${pageContext.request.contextPath}">Ana Panel</a></li>
						<li><a href="#">Albümler</a></li>


					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="#">Panel</a></li>
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

			<div class="row">
			<h3 class="bg-success text-center">Albüm Başarıyla Oluşturuldu</h3>
			
				<table class="table table-striped custab" style="width:60%; margin:auto">
					<tbody>
						<tr>
							<th>Albüm Adı:</th>
							<td><%=album.getName()%></td>

						</tr>
						<tr>
							<th>Sanatçı:</th>
							<td><%=album.getArtist()%></td>

						</tr>
						<tr>
							<th>Tarihi:</th>
							<td><%=album.getDate()%></td>

						</tr>

					</tbody>


				</table>

<p class="text-center"> <a href="${pageContext.request.contextPath}/albums">Albümlere Dön</a></p>

			</div>


		</div>
	</div>



</body>

</html>