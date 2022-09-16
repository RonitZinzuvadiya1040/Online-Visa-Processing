<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<asp:Content ID="head" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="body" Runat="Server">
    <!-- mail -->
	<div class="mail">
		<div class="container">
			<h2 class="w3l_head w3l_head1">Contact Us</h2>
				<div class="agileits_mail_grids">
				<div class="agileits_mail_grid_left">
					<form action="#" method="post">
						<h4>Your Name*</h4>
						<input type="text" name="Name" placeholder="Name..." required="">
						<h4>Your Email*</h4>
						<input type="email" name="Email" placeholder="Email..." required="">
						<h4>Your Phone Number*</h4>
						<input type="text" name="Phone" placeholder="Phone..." required="">
						<h4>Your Message*</h4>
						<textarea placeholder="Message..." name="Message"></textarea>
						<input type="submit" value="Send message">
					</form>
				</div>
			</div>
		</div>
	</div>
<!-- //mail -->

</asp:Content>

