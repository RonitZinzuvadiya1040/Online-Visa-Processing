<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="register" %>

<asp:Content ID="head1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="body1" ContentPlaceHolderID="body" Runat="Server">

     <!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Register</h1>
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
                                    <label for="register-username2"><i class="icon-lock"></i> <b>Username</b></label>
                                
                                    <asp:TextBox ID="Username" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>
								<div class="form-group">
		        				 	<label for="register-username"><i class="icon-user"></i> <b>Email</b></label>								<%--	<input class="form-control" id="register_username"runat= "server" type="text" placeholder=""/>--%>
								 <asp:TextBox ID="Email" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
								<div class="form-group">
		        				 	<label for="register-password"><i class="icon-lock"></i> <b>Password</b></label>									<%--<input class="form-control" id="register-password"runat= "server" type="password" placeholder=""/>--%>
								 <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>

                                </div>
								<div class="form-group">
		        				 	<label for="register-password2"><i class="icon-lock"></i> <b>Re-enter Password</b></label> <%--									<input class="form-control" runat= "server" register-password2" type="password" placeholder="">--%>
								 <asp:TextBox ID="Re_enter_Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>

                                </div>
                               <div class="form-group">
                                    <%--<a href="login.aspx" button type="submit" runat= "server"class="btn pull-right">Register</a>
                                   --%> 
                                    <asp:Button ID="Btnsubmit" runat="server" Text="Register Now" CssClass="btn pull-right" />
								
									<div class="clearfix">
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" SelectCommand="SELECT * FROM [regi_1]"></asp:SqlDataSource>
                                    </div>
								</div>
							`
						</div>
					</div>
				</div>
			</div>
		</div>

</asp:Content>

