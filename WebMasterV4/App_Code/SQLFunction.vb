Imports System.Data
Imports System.Data.SqlClient
Imports WebMasterV4.Utility
Imports WebMasterV4.GlobalString
Imports DocumentFormat.OpenXml.Office.Word
Imports System.Web
Imports System.IO

Public Class SQLFunction
    Public Shared connString As String = ConfigurationManager.ConnectionStrings("ComponentString").ConnectionString


    Shared clsname As String = "SQLFunction"

    Public Shared Function GetDataTable(ByVal Query As String) As DataTable
        Dim dt As New DataTable
        Dim methodName As String = System.Reflection.MethodBase.GetCurrentMethod().Name

        Try
            Dim cn As New SqlConnection(connString)
            Dim cmd As New SqlCommand()
            Dim da As New SqlDataAdapter()
            cn.Open()
            cmd.Connection = cn
            cmd.CommandType = CommandType.Text
            cmd.CommandText = Query
            da.SelectCommand = cmd
            da.Fill(dt)
            cn.Close()
            cn.Dispose()
            cmd.Dispose()
            da.Dispose()
            Return dt
        Catch ex As Exception
            err_handler(clsname & "-" & GetCurrentPageName(), GetCurrentMethodName, ex.Message)
        End Try

        Return dt
    End Function

    Public Shared Function GetDataTableV2(pageIndex As Integer, pageSize As Integer, ByVal Query As String, ByVal OrderBy As String) As DataTable
        Dim dt As New DataTable
        Dim cn As New SqlConnection(connString)
        Dim cmd As New SqlCommand()
        Dim da As New SqlDataAdapter()
        cn.Open()
        cmd.Connection = cn
        cmd.CommandType = CommandType.Text
        cmd.CommandText = Query & " ORDER BY " & OrderBy & " OFFSET (@PageIndex * @PageSize) ROWS FETCH NEXT @PageSize ROWS ONLY"
        cmd.Parameters.AddWithValue("@PageIndex", pageIndex)
        cmd.Parameters.AddWithValue("@PageSize", pageSize)

        Using reader As SqlDataReader = cmd.ExecuteReader()
            dt.Load(reader)
        End Using

        Return dt

        'Below to use next & prev button:
        'Protected Sub bNext_Click(sender As Object, e As EventArgs)
        '    'Increment the page index
        '    ViewState("PageIndex") = ViewState("PageIndex") + 1

        '    'Load the data for the new page
        '    LoadData()
        'End Sub

        'Protected Sub bPrev_Click(sender As Object, e As EventArgs)
        '    'Decrement the page index
        '    ViewState("PageIndex") = ViewState("PageIndex") - 1

        '    'Load the data for the new page
        '    LoadData()
        'End Sub

    End Function

    Public Shared Function executeQuery(ByVal Query As String) As String
        Try
            Dim cn As New SqlConnection(connString)
            cn.Open()
            Dim cm As New SqlCommand(Query, cn)
            Dim rd As SqlDataReader = cm.ExecuteReader
            rd.Read()

            cm.Connection.Close()
            cm.Connection.Dispose()
            rd.Close()
            cn.Close()


        Catch ex As Exception
            err_handler(clsname & "-" & GetCurrentPageName(), GetCurrentMethodName, ex.Message)
        End Try

        Return "0"
    End Function
End Class
