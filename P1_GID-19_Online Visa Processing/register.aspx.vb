Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class register
    Inherits System.Web.UI.Page

  
    Protected Sub Btnsubmit_Click(sender As Object, e As EventArgs) Handles Btnsubmit.Click
      
        Dim str As String
        str = "insert into regi values(@User_name,@Email,@Password,@Confirm_Password)"
        Dim con As New SqlConnection("Data Source=DESKTOP-RQUQN5V\SQLEXPRESS;Initial Catalog=register;Integrated Security=True")
        Dim cmd As New SqlCommand(str, con)
        cmd.Parameters.AddWithValue("@User_name", Username.Text)
        cmd.Parameters.AddWithValue("@Email", Email.Text)
        cmd.Parameters.AddWithValue("@Password", Password.Text)
        cmd.Parameters.AddWithValue("@Confirm_Password", Re_enter_Password.Text)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        MsgBox("DATA SAVED")


    End Sub

End Class
