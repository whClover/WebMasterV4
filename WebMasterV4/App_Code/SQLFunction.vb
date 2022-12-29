Imports System.Data
Imports System.Data.SqlClient

Public Class SQLFunction
    Public Shared connString As String = ConfigurationManager.ConnectionStrings("ComponentString").ConnectionString

    Public Shared Function GetDataTable(ByVal Query As String) As DataTable
        Dim dt As New DataTable

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
            ' Mengelola error yang terjadi
            dt.Columns.Add("ErrorMessage", GetType(String))
            dt.Rows.Add(ex.Message)
        End Try

        Return dt
    End Function
End Class
