<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<link rel="stylesheet" href="resources/css/bootstrap.css"/>
		<link rel="stylesheet" href="resources/css/style.css"/>
		<title>My Pollo Address</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">	
	</head>

	<body >
		<%@ page import="javax.servlet.http.*,
		 java.net.InetAddress,
		 java.util.*" %>
	<div class="header">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-8">
					<div class="col-xs-12 col-sm-1">
						<img src="resources/img/logo_circle.png" width="35px" height="35px" />
					</div>
					<div class="col-xs-12 col-sm-11 m-top">
							<span class="h1">
								 My POLLO  Address is: 
							</span><br>
							<span class="ip-bold"><%
									  try {
								       java.net.InetAddress inetAdd =
								       java.net.InetAddress.getLocalHost();
								       out.println(inetAdd.getHostAddress());
									    }catch(java.net.UnknownHostException tsss){
								       }
									%>
									-
									<%
									String srv = InetAddress.getLocalHost().getHostName();
									%>
									 <%=srv%>
							</span>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 m-top">
					<div class="pull-right btn-call" style="margin-left:10px;">
						<a href="<%=request.getContextPath()%>/logout.jsp" class="phone"><img src="resources/img/logout.png"/ width="15px" height="15px">Logout</a>
	                </div> 	
					<div class="btn-call pull-right">
						<a href="<%=request.getContextPath()%>/testHA.jsp" class="phone"><img src="resources/img/phone.png" width="15px" height="15px">Llamar</a>
					</div>		
				</div>
			</div>
		</div>
	</div>
	<div class="container">	
		<%
				   int cont=0;
				   if(session.getAttribute("cont")!=null){
				      cont = Integer.parseInt(session.getAttribute("cont").toString()) + 1;
				   }
				   session.removeAttribute("cont");
				   session.setAttribute("cont",String.valueOf(cont));
				   String ip = InetAddress.getLocalHost().getHostAddress();
				   String host = InetAddress.getLocalHost().getHostName();
				   String hexa = Integer.toHexString(255);
				   StringTokenizer ipTokenizer = new StringTokenizer(ip,".");
				   StringBuffer hexaIp = new StringBuffer();
				   while(ipTokenizer.hasMoreTokens()){
				      String ipToken = Integer.toHexString(Integer.parseInt(ipTokenizer.nextToken()));
				      if(ipToken.length()==1)
					 hexaIp.append("0");
				      hexaIp.append(ipToken);
				   }
				%>
				
				<div class="content-table center-block">
					<div class="c-img">
						<img src="resources/img/logo.png" class="img-responsive text-center center-block" width="449px" height="119px"/>
					</div>
					<div class="title-prueba">Estamos probando !!!</div>
					<table class="table table-bordered table-striped">
						<tr>
							<td><span class="txt-r">El contador va en: </span></td>
							<td><span class="txt-l"><%=cont%>
								<% System.out.println("\n El contador va en : " + cont);%></span></td>
						</tr>
						<tr>
							<td><span class="txt-r">El request fue solicitado por el host:</span></td>
							<td><span class="txt-l"><%=request.getServerName()%></span></td>
						</tr>
						<tr>
							<td><span class="txt-r">El host que esta atendiendo es:</span></td>
							<td><span class="txt-l"><%=host%></span></td>
						</tr>
						<tr>
							<td><span class="txt-r">La ip que esta contestando es:</span></td>
							<td><span class="txt-l"><%=ip%></span></td>
						</tr>
						<tr>
							<td><span class="txt-r">Esta ip en hexadecimal es: </span></td>
							<td><span class="txt-l"><%=hexaIp%></span></td>
						</tr>
						<tr>
							<td><span class="txt-r">El contextpath de la aplicacion es:</span></td>
							<td><span class="txt-l"><%=request.getContextPath()%></span></td>
						</tr>
						<tr>
							<td><span class="txt-r">El servlet name es:</span></td>
							<td><span class="txt-l"><%=request.	getServletPath()%></span></td>
						</tr>
						<tr>
							<td><span class="txt-r">Hoy es:</span></td>
							<td><span class="txt-l"><%=new java.util.Date()%></span></td>
						</tr>
						<tr>
							<td colspan="2" class="text-center"><span class="txt-r">Han pasado </span><span class="txt-l"><%=new java.util.Date().getTime()%></span> <span class="txt-r">secs desde 1900</span></td>
						</tr>
						<tr>
							<td><span class="txt-r">Java Version:</span></td>
							<td><span class="txt-l"><%= System.getProperty("java.version") %> | <%= System.getProperty("java.vm.name") %></span></td>
						</tr>
						<tr>
							<td><span class="txt-r">Employee Type:</span></td>
							<td><span class="txt-l"><%= request.getHeader("MENSAJE_MIKE") %></span></td>
						</tr>
						<tr>
							<td><span class="txt-r">URL:</span></td>
							<td><span class="txt-l"><%= request.getRequestURL() %></span></td>
						</tr>
					</table>
					<div class="c-img">
						<img src="resources/img/logo_pollo_10.png" class="img-responsive center-block text-center"/>
					</div>
				</div>
				
				
					

	</div>
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
							<span class="h1">
								 El id de la sesión es:
							</span><br>
							<span class="id-ses txt-l">
								<%=session.getId()%>
								<% System.out.println("ID de session: " + session.getId());%>
							</span>	
				</div>
			</div>
		</div>
	</div>
	</body>
</html>
