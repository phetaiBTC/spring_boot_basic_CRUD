<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.SpringBootRestAPI.Model.District"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="/CSS/registerStyle.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
	<div class="contianer">
		<div class="con">
			<form action="/login" class="formLogin" method="get">
				<h1 style="margin-top: 20px; text-align: center; font-size: 50px;">Login</h1>
				<div class="dip">
					<input type="text" required name="email"><label>Phone
						Number Or Email</label>
				</div>
				<div class="dip">
					<input type="text" required name="password"><label>Password</label>
				</div>
				<button type="submit">sign in</button>
				<div class="goclick">
					<h4>
						did'not have anyaccout
						<h4 class="textclick" id="textclick1">create</h4>
					</h4>
				</div>
			</form>
			<div class="formimg"></div>
			<form action="/create" class="formRegister" method="post">
				<h1 style="margin-top: 20px; text-align: center; font-size: 50px;">Register</h1>

				<div class="dip" style="width: 310px;">
					<input type="text" name="email" required><label>Email</label>
				</div>
				<div class="dip" style="width: 310px;">
					<input type="password" name="password" required><label>Password</label>
				</div>
				<div style="display: flex; gap: 10px;">
					<div class="dip">
						<input type="text" name="fname" required><label>First
							name</label>
					</div>
					<div class="dip">
						<input type="text" name="lname" required><label>Last
							name</label>
					</div>
				</div>
				<div
					style="display: flex; gap: 10px; margin-top: 20px; width: 310px;">
					<div class="dip" style="margin-top: 0; width: 200px;">
						<input type="text" name="phone" required><label>Phone</label>
					</div>

					<div>
						<div>
							<input type="radio" id="male" name="gender" value="male">
							<label for="male">male</label><br>
						</div>
						<div>
							<input type="radio" id="female" name="gender" value="female">
							<label for="female">female</label>
						</div>
					</div>
				</div>
				<div
					style="display: flex; gap: 10px; margin-top: 20px; width: 310px; justify-content: space-between;">
					<select name="Province" id="Province">
						<option value="district">---Province---</option>
					</select>
					<select name="District" id="District">
						<option value=null>---District---</option>
						<%
						List<District> districts = (List<District>) request.getAttribute("districts");
						if (districts != null) {
							for (District district : districts) {
						%>
						<option value="<%=district.getId()%>"><%=district.getNameEn()%></option>
						<%
						}
						}
						%>
					</select>

				</div>
				<button type="submit">sign up</button>
				<div class="goclick">
					<h4>
						did'not have anyaccout
						<h4 class="textclick" id="textclick">create</h4>
					</h4>
				</div>

			</form>
		</div>
	</div>
	<footer>
		<div>
			<h1 style="text-align: center;">About me</h1>
			<h3>
				I am a second year National University student in room 2CW1.
				</h2>
		</div>
		<div>2</div>
		<div>
			<h1 style="text-align: center;">Follow</h1>
			<div
				style="display: flex; justify-content: space-around; margin-top: 10px;">
				<i class="fa-brands fa-facebook"></i> <i
					class="fa-brands fa-whatsapp"></i> <i
					class="fa-solid fa-location-dot"></i>

			</div>
			<div style="display: flex; margin-top: 20px;">
				<i class="fa-solid fa-phone" style="margin-right: 10px;"></i>
				<h3>+856 20 78 682 693</h3>
			</div>
		</div>
	</footer>


	<script>
        const butClick = document.getElementById("textclick");
        const butClick1 = document.getElementById("textclick1");
        const con1 = document.querySelector(".con");
        const formimg = document.querySelector(".formimg")
        butClick.addEventListener("click", () => {
            con1.style.left = 75 + "%"
            formimg.style.background = "url('/IMAGE/kk2.jpeg')"
            formimg.style.backgroundSize = "cover"
        })
        butClick1.addEventListener("click", () => {
            con1.style.left = 25 + "%"
            formimg.style.background = "url('/IMAGE/kk.jpeg')"
            formimg.style.backgroundSize = "cover"
        })
    </script>
</body>

</html>