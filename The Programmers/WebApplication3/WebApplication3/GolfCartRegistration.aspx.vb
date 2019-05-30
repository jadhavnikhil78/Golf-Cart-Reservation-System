Imports MySql.Data.MySqlClient
Imports System.Diagnostics


Public Class GolfCartRegistration
    Inherits System.Web.UI.Page
    Public Shared rideIdGlobal As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub CheckAvailability_Click(sender As Object, e As EventArgs) Handles CheckAvailability.Click
        System.Diagnostics.Debug.WriteLine("Hi")
        Dim date1 As String = Calendar1.SelectedDate.ToShortDateString.ToString()

        Dim startTime1 As String = DropDownList4.Text.ToString()
        Dim EndTime1 As String = DropDownList5.Text.ToString()

        Dim startTime2 As String = date1 + " " + startTime1
        Dim EndTime2 As String = date1 + " " + EndTime1

        System.Diagnostics.Debug.WriteLine(startTime2.ToString())
        System.Diagnostics.Debug.WriteLine(EndTime2.ToString())

        Using Con As New MySqlConnection("Database=golfcartreservation;Server=localhost;User Id=root;Password=Karmala@3672;ignore prepare=false")
            Con.Open()
            Using Com As New MySqlCommand("select *from golfcartreservation.ride where (?startTime between Start_time and End_time or ?endTime between Start_time and End_time )", Con)
                Com.CommandType = Data.CommandType.Text


                Com.Parameters.AddWithValue("?startTime", Convert.ToDateTime(startTime2)) '"2019-04-19 05:23:00") 'startTime2)
                Com.Parameters.AddWithValue("?endTime", Convert.ToDateTime(EndTime2))

                Using RDR = Com.ExecuteReader()
                    If RDR.HasRows Then
                        Do While RDR.Read
                            'Do stuff here

                            Response.Redirect("NoBooking.aspx")
                            'System.Diagnostics.Debug.WriteLine(RDR.Item("departmentid").ToString())'
                            'System.Diagnostics.Debug.WriteLine(RDR.Item("department").ToString()) '

                        Loop
                    Else
                        Dim st As New DateTime
                        ' st = DateTime.ParseExact(Convert.ToDateTime(startTime2), "yyyy-MM-dd HH:mm:ss", System.Globalization.CultureInfo.InvariantCulture)

                        Dim et As New DateTime
                        'et = DateTime.ParseExact(Convert.ToDateTime(EndTime2), "yyyy-MM-dd HH:mm:ss", System.Globalization.CultureInfo.InvariantCulture)


                        Con.Close()
                        Dim mysqlCon As New MySqlConnection
                        mysqlCon.ConnectionString = "Database=golfcartreservation;Server=localhost;User Id=root;Password=Karmala@3672;ignore prepare=false"

                        Dim mycommand As New MySqlCommand
                        mycommand.CommandType = Data.CommandType.Text
                        mycommand.CommandText = "Insert into golfcartreservation.ride (PersonID,Golf_CartID,start_time,End_time,start_LocationID,End_LocationID) values (1,4,?startTimeSelected,?endTimeSelected,192,134);"

                        mycommand.Connection = mysqlCon
                        mycommand.Parameters.AddWithValue("?startTimeSelected", Convert.ToDateTime(startTime2)) '"2019-04-19 05:23:00") 'startTime2)
                        mycommand.Parameters.AddWithValue("?endTimeSelected", Convert.ToDateTime(EndTime2))

                        mysqlCon.Open()
                        mycommand.ExecuteNonQuery()
                        mysqlCon.Close()

                        Using Conride As New MySqlConnection("Database=golfcartreservation;Server=localhost;User Id=root;Password=Karmala@3672;ignore prepare=false")
                            Conride.Open()
                            Using Comride As New MySqlCommand("select Max(RideID) as 'rideIdDB' from golfcartreservation.ride;", Conride)
                                Comride.CommandType = Data.CommandType.Text

                                Using RDRride = Comride.ExecuteReader()
                                    If RDRride.HasRows Then
                                        Do While RDRride.Read
                                            'Do stuff here
                                            rideIdGlobal = Convert.ToInt32(RDRride.Item("rideIdDB").ToString())
                                            System.Diagnostics.Debug.WriteLine(Convert.ToInt32(RDRride.Item("rideIdDB").ToString()))

                                        Loop


                                    End If

                                End Using
                            End Using
                            Conride.Close()
                        End Using

                        Response.Redirect("Availability.aspx")

                    End If


                    'hgasvdy
                    'sjhgdvhgsda

                End Using
            End Using
            Con.Close()
        End Using
        Response.Redirect("Availability.aspx")
    End Sub
End Class