<%@ page import="java.sql.*" %>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login</title>

</head>

<body>

	<%!String userdbName;

	String userdbPsw;

	String dbUsertype;%>

	<%
		Connection con = null;

		PreparedStatement ps = null;

		ResultSet rs = null;

		String driverName = "com.mysql.jdbc.Driver";

		String url = "jdbc:mysql://localhost:3306/capstone";

		String user = "root";

		String dbpsw = "1234";

		String sql = "select * from users where name=? and password=? and usertype=?";

		String name = request.getParameter("name");

		String password = request.getParameter("password");

		String usertype = request.getParameter("usertype");

		if ((!(name.equals(null) || name.equals("")) && !(password.equals(null) || password.equals("")))
				&& !usertype.equals("select"))

		{

			try {

				Class.forName(driverName);

				con = DriverManager.getConnection(url, user, dbpsw);

				ps = con.prepareStatement(sql);

				ps.setString(1, name);

				ps.setString(2, password);

				ps.setString(3, usertype);

				rs = ps.executeQuery();

				if (rs.next())

				{

					userdbName = rs.getString("name");

					userdbPsw = rs.getString("password");

					dbUsertype = rs.getString("usertype");

					if (name.equals(userdbName) && password.equals(userdbPsw) && usertype.equals(dbUsertype))

					{

						session.setAttribute("name", userdbName);

						session.setAttribute("usertype", dbUsertype);

						response.sendRedirect("homePage.jsp");

					}

				}

				else

					response.sendRedirect("error.jsp");

				rs.close();

				ps.close();

			}

			catch (SQLException sqe)

			{

				out.println(sqe);

			}

		}

		else

		{
	%>

	<center>
		<p style="color: red">Error In Login</p>
	</center>

	<%
		getServletContext().getRequestDispatcher("/loginForm.jsp").include(request, response);

		}
	%>

</body>

</html>