Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class login
    Inherits System.Web.UI.Page

    Protected Sub Btnlogin_Click(sender As Object, e As EventArgs) Handles Btnlogin.Click
        Dim str As String
        str = "select Username, Password from regi where Username=@U and Password=@P"
        Dim con As New SqlConnection("Data Source=DESKTOP-RQUQN5V\SQLEXPRESS;Initial Catalog=register;Integrated Security=True")
        Dim cmd As New SqlCommand(str, con)
        cmd.Parameters.AddWithValue("@U", Txtuser.Text)
        cmd.Parameters.AddWithValue("@P", Txtpass.Text)

        Dim da As New SqlDataAdapter(cmd)
        Dim dt As New DataTable()

        da.Fill(dt)
        If dt.Rows.Count > 0 Then
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Session("user") = Txtuser.Text
            Response.Redirect("home.aspx")
        Else
            MsgBox("sorry")
        End If




    End Sub


   
End Class
