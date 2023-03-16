<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="logreg.WebForm1" %>

<!doctype html>
<html lang="en">
<head runat="server">
  <title>Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/styles.css">
</head>
<body>
	<form runat="server">
	<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<h6 class="mb-0 pb-3"><span>Log In </span><span>Sign Up</span></h6>
			          	<input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
			          	<label for="reg-log"></label>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">Log In</h4>
											<div class="form-group">
												<asp:TextBox ID="TxtLogEmail" runat="server" type="email" class="form-style" placeholder="Email"></asp:TextBox>
                                                <%--<input type="email" class="form-style" placeholder="Email">--%>
												<i class="input-icon uil uil-at"></i>
											</div>	
											<div class="form-group mt-2">

												<asp:TextBox ID="TxtLogSifre" runat="server" type="password" class="form-style" placeholder="Password"></asp:TextBox>
                                                <%--<input type="password" class="form-style" placeholder="Password">--%>
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											<asp:Button ID="BtnLogin" runat="server" Text="Login"   class="btn mt-4" OnClick="Button1_Click" /> <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                                            <%--	<a href="https://www.web-leb.com/code" class="btn mt-4">Login</a>--%>
                   
				      					</div>
			      					</div>
			      				</div>
								<div class="card-back">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-3 pb-3">Sign Up</h4>
											<div class="form-group">
												<asp:TextBox ID="TxtRegName" type="text" class="form-style" placeholder="Full Name" runat="server"></asp:TextBox>
                                                <%--	<input type="text" class="form-style" placeholder="Full Name">--%>
												<i class="input-icon uil uil-user"></i>
											</div>	
											<div class="form-group mt-2">
												<asp:TextBox ID="TxtRegTelefon" type="tel" class="form-style" placeholder="Phone Number" runat="server"></asp:TextBox>
                                                <%--	<input type="tel" class="form-style" placeholder="Phone Number">--%>
												<i class="input-icon uil uil-phone"></i>
											</div>	
                      <div class="form-group mt-2">
											  <asp:TextBox ID="TxtRegEmail" type="email" class="form-style" placeholder="Email" runat="server"></asp:TextBox>
                                              <%--	<input type="email" class="form-style" placeholder="Email">--%>
												<i class="input-icon uil uil-at"></i>
											</div>
											<div class="form-group mt-2">
												<asp:TextBox ID="TxtRegSifre" type="password" class="form-style" placeholder="Password" runat="server"></asp:TextBox>
                                                <%--	<input type="password" class="form-style" placeholder="Password">--%>
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											<asp:Button ID="BtnReg" runat="server" Text="Register" class="btn mt-4" OnClick="Button1_Click1" />
                                            <%--	<asp:Button ID="BtnKayıt" runat="server" Text="Register"   class="btn mt-4" OnClick="BtnKayıt_Click" />--%>										<%--	<a href="https://www.web-leb.com/code" class="btn mt-4">Register</a>--%>
				      					</div>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
		      	</div>
	      	</div>
	    </div>
	</div>
		</form>
</body>
</html>
