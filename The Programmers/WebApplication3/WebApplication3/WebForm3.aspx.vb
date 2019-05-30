Imports MySql.Data.MySqlClient

Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Using Conride As New MySqlConnection("Database=golfcartreservation;Server=localhost;User Id=root;Password=Karmala@3672;ignore prepare=false")
            Conride.Open()
            Using Comride As New MySqlCommand("select duration as 'durationDB' from golfcartreservation.ride where rideID=?rideID;", Conride)
                Comride.CommandType = Data.CommandType.Text
                Comride.Parameters.AddWithValue("?rideID", Convert.ToInt32(GolfCartRegistration.rideIdGlobal))

                Using RDRride = Comride.ExecuteReader()
                    If RDRride.HasRows Then
                        Do While RDRride.Read
                            'Do stuff here
                            TextBox2.Text = (Convert.ToInt32(RDRride.Item("durationDB")) * 5).ToString()


                        Loop


                    End If

                End Using
            End Using
            Conride.Close()
        End Using


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

    End Sub
End Class