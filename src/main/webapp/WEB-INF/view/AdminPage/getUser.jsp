<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.SpringBootRestAPI.Model.User"%>
<!DOCTYPE html>
<html>
<head>
<title>User List</title>
<link rel="stylesheet" href="/CSS/getUserStyle.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<h1 style="font-size: 50px;">User List</h1>
	<button class="butCreate" style="margin:30px 0;background: rgb(45, 61, 201);border-radius: 10px;border:none;padding:5px 20px;"><a href="create" style="text-decoration: none;color:#fff;">Create User</a></button>
	<table style="border-radius: 10px;border: 2px solid #000;">
		<thead>
			<tr style="background: red;">
				<th>Id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Gender</th>
				<th>Phone Number</th>
				<th>Role</th>
				<th>District</th>
				<th>mode</th>
			</tr>
		</thead>
		<tbody>
			<%
			List<User> users = (List<User>) request.getAttribute("users");
			

			if (users != null) {
				for (User user : users) {
			%>
			<tr>
				<td><%=user.getId()%></td>
				<td><%=user.getFirstName()%></td>
				<td><%=user.getLastName()%></td>
				<td><%=user.getEmail()%></td>
				<td><%=user.getGender()%></td>
				<td><%=user.getNumberPhone()%></td>
				<td><%=user.getRole()%></td>
				<td style="font-family: 'Noto Sans Lao';"><%=user.getDistrictId().getName()%></td>
				<td>
					<button style="background: rgb(45, 61, 201);">
						<a href="/edit?id=<%=user.getId()%>"> edit </a>
					</button>
					<button style="background: rgb(255, 53, 53);">
						<a href="/delete?id=<%=user.getId()%>"
							onclick="return confirm('Are you sure?')"> delete </a>
					</button>
				</td>
			</tr>
			<%
			}
			}
			%>
		</tbody>
	</table>
</body>
</html>
