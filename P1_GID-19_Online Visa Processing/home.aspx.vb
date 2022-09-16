
Partial Class _Default
    Inherits System.Web.UI.Page


    Protected Sub Page_UnLoad(sender As Object, e As EventArgs) Handles Me.Unload
        Session.Abandon()


    End Sub
End Class
