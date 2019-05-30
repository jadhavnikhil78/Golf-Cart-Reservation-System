Imports MySql.Data.MySqlClient
Public Class Success
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        System.Diagnostics.Debug.WriteLine(GolfCartRegistration.rideIdGlobal.ToString())
        TextBox3.Text = GolfCartRegistration.rideIdGlobal.ToString()

        Using Conride As New MySqlConnection("Database=golfcartreservation;Server=localhost;User Id=root;Password=Karmala@3672;ignore prepare=false")
            Conride.Open()
            Using Comride As New MySqlCommand("select * from golfcartreservation.ride where RideID=?rideID", Conride)
                Comride.CommandType = Data.CommandType.Text
                Comride.Parameters.AddWithValue("?rideID", GolfCartRegistration.rideIdGlobal.ToString())

                Using RDRride = Comride.ExecuteReader()
                    If RDRride.HasRows Then
                        Do While RDRride.Read
                            'Do stuff here
                            TextBox3.Text = GolfCartRegistration.rideIdGlobal.ToString()
                            TextBox1.Text = RDRride.Item("Start_time").ToString()
                            TextBox2.Text = RDRride.Item("End_time").ToString()
                            TextBox4.Text = (Convert.ToInt32(RDRride.Item("duration").ToString()) * 5).ToString()
                        Loop
                    End If

                End Using
            End Using
            Conride.Close()
        End Using

    End Sub

    Protected Sub TextBox3_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged

    End Sub
End Class