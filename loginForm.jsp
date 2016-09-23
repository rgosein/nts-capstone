<%@ page import="java.sql.*"%>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Include jQuery Mobile stylesheets -->
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<!-- Include the jQuery library -->
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- Include the jQuery Mobile library -->
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<link rel="stylesheet" href="css/themes/style.css" />
<link rel="stylesheet" href="css/themes/jquery.mobile.icons.min.css" />
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile.structure-1.4.5.min.css" />

<title>Login</title>

</head>

<body>

	<%
		Connection con = null;

		PreparedStatement ps = null;

		ResultSet rs = null;

		String driverName = "com.mysql.jdbc.Driver";

		String url = "jdbc:mysql://localhost:3306/capstone";

		String user = "root";

		String password = "1234";

		String sql = "select usertype from users";

		try {

			Class.forName(driverName);

			con = DriverManager.getConnection(url, user, password);

			ps = con.prepareStatement(sql);

			rs = ps.executeQuery();
	%>

	<form method="post" action="loginValidate.jsp">

		<center>
			<h2 style="color: green">Financial Reporting Tool Login</h2>
		</center>

		<table border="1" align="center">

			<tr>

				<td>Enter Your Name :</td>

				<td><input type="text" name="name" /></td>

			</tr>

			<tr>

				<td>Enter Your Password :</td>

				<td><input type="password" name="password" /></td>

			</tr>

			<tr>

				<td>Select UserType</td>

				<td><select name="usertype">

						<option value="select">select</option>

						<%
							while (rs.next())

								{

									String usertype = rs.getString("usertype");
						%>

						<option value=<%=usertype%>><%=usertype%></option>

						<%
							}

							}

							catch (SQLException sqe)

							{

								out.println("home" + sqe);

							}
						%>

				</select></td>

			</tr>

			<tr>

				<td></td>

				<td><input type="submit" value="submit" /></td>
		</table>

	</form>

</body>

</html>