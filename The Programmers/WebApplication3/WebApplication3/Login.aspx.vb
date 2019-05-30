Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub LoginButton_Click(sender As Object, e As EventArgs)

        If (Login1.UserName.Equals("Admin")) Then
            If (Login1.Password.Equals("Admin")) Then
                Response.Redirect("WebForm2.aspx")
            Else
                Login1.PasswordLabelText = "Username/Password is invalid."

                Login1.FailureText = "Username is invalid."
                Response.Redirect("Login.aspx")
            End If
        Else
            Login1.PasswordLabelText = "Username/Password is invalid."
            Login1.FailureText = "Username is invalid."
            Response.Redirect("Login.aspx")
        End If



    End Sub

    Protected Sub UserName_TextChanged(sender As Object, e As EventArgs)

    End Sub
End Class