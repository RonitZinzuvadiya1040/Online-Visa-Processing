<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<asp:Content ID="head1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="body1" ContentPlaceHolderID="body" Runat="Server">
    <!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Login</h1>
					</div>
				</div>
			</div>
		</div>
        
        <div class="section">
	    	<div class="container">
				<div class="row">
					<div class="col-sm-5">
						<div class="basic-login">
							
								<div class="form-group">
		        				 	<label for="login-username"><i class="icon-user"></i> <b>Username or Email</b></label>
									<%--<input class="form-control" id="login-username" type="text" placeholder="">--%>
                                        <asp:TextBox ID="Txtuser" CssClass="form-control" Width="400px" runat="server"></asp:TextBox>
								</div>
								<div class="form-group">
		        				 	<label for="login-password"><i class="icon-lock"></i> <b>Password</b></label>
									<%--<input class="form-control" id="login-password" type="password" placeholder="">--%>
                                        <asp:TextBox ID="Txtpass" CssClass="form-control" Width="400px" TextMode="Password" runat="server"></asp:TextBox>
								</div>
								<div class="form-group">
									<label class="checkbox">
										<%--<input type="checkbox"> Remember me</input>--%>
                                            <asp:CheckBox ID="Checkremember" runat="server" />Remember me
									</label>
									<a href="page-password-reset.html" class="forgot-password">Forgot password?</a>
									<%--<button type="submit" class="btn pull-right">Login</button>--%>
                                        <asp:Button ID="Btnlogin" runat="server" CssClass="btn pull-right" Text="login" />
									<div class="clearfix">
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:loginConnectionString %>" SelectCommand="SELECT * FROM [login_1]"></asp:SqlDataSource>
                                    </div>
								</div>
						
						</div>
					</div>
					<div class="col-sm-7 social-login">
						<div class="clearfix"></div>
						<div class="not-member">
							<p>Not a register? <a href="register.aspx">Register here</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
</asp:Content>

