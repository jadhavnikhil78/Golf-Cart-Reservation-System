Imports MySql.Data.MySqlClient
Imports System.Diagnostics



Public Class CancelRide
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim mysqlConn As New MySqlConnection
        mysqlConn.ConnectionString = "Database=golfcartreservation;Server=localhost;User Id=root;Password=Karmala@3672;ignore prepare=false"

        Dim mycommand As New MySqlCommand
        mycommand.CommandType = Data.CommandType.Text
        mycommand.CommandText = "delete from golfcartreservation.payments where RideID=?rideID;
                                delete from golfcartreservation.ride where RideID=?rideID;
"

        mycommand.Connection = mysqlConn
        mycommand.Parameters.AddWithValue("?rideID", TextBox3.Text.ToString()) '"2019-04-19 05:23:00") 'startTime2)

        mysqlConn.Open()
        mycommand.ExecuteNonQuery()
        mysqlConn.Close()

        Response.Redirect("DeleteSuccess.aspx")
    End Sub
End Class