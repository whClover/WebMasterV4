Imports ClosedXML.Excel
Imports SQLFunction
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO

Public Class Utility
    Public Shared Function evar(ByVal val As Object, ByVal valtype As Integer, Optional vallen As Integer = 255) As String
        Dim eval As String

        If val Is vbNullString Then
            eval = ""
        ElseIf val = "" Then
            eval = "NULL"
        ElseIf val = String.Empty Then
            eval = "NULL"
        Else
            val = Trim(val)
            Select Case valtype
                Case 0 : eval = val
                    'Case 2 : eval = "'" & Format(val, "YYYY-MM-DD") & "'"
                    'Case 2 : eval = "'" & DatePart("yyyy", val) + "-" + DatePart("m", val) + "-" & DatePart("d", val) & "'"
                Case 2


                    If IsDate(val) = False Then
                        eval = "NULL"
                    Else
                        val = CDate(val)
                        eval = "'" & DatePart("yyyy", val) & "-" & DatePart("m", val) & "-" & DatePart("d", val) & "'"
                    End If
                Case 3
                    If IsDate(val) = False Then
                        eval = "NULL"
                    Else
                        val = CDate(val)
                        eval = "'" & DatePart("yyyy", val) & "-" & DatePart("m", val) & "-" & DatePart("d", val) & " " & DatePart("h", val) & ":" & DatePart("n", val) & ":" & DatePart("s", val) & "'"
                    End If

                Case 4 : eval = "'" & Left(val, 3750) & "'"

                Case 11 : eval = "'%" & Left(val, vallen) & "%'"

                Case 14 : eval = "" & val & ""

                Case Else : eval = "'" & Left(val, vallen) & "'"


            End Select


        End If

        Return eval
    End Function

    Public Shared Sub BindDataListBox(ByVal ObjName As ListBox, ByVal query As String, ByVal ObjText As String, ByVal ObjVal As String)
        Dim dt As New DataTable
        dt = SQLFunction.GetDataTable(query)
        ObjName.DataSource = dt
        ObjName.DataTextField = ObjText
        ObjName.DataValueField = ObjVal
        ObjName.DataBind()
    End Sub

    Public Shared Function ExportToExcelXML(ByVal str As String, ByVal title As String)

        Dim t As String = ""

        Try
            Dim dt As DataTable = SQLFunction.GetDataTable(str)
            Dim thetitle As String = title + ".xlsx"
            Using wb As New XLWorkbook()
                wb.Worksheets.Add(dt, title)
                HttpContext.Current.Response.Clear()
                HttpContext.Current.Response.Buffer = True
                HttpContext.Current.Response.Charset = ""
                HttpContext.Current.Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
                HttpContext.Current.Response.AddHeader("content-disposition", "attachment;filename=" + thetitle)

                Using MyMemoryStream As New MemoryStream()
                    wb.SaveAs(MyMemoryStream)
                    MyMemoryStream.WriteTo(HttpContext.Current.Response.OutputStream)
                    HttpContext.Current.Response.Flush()
                    HttpContext.Current.Response.End()
                End Using
            End Using

        Catch ex As Exception
            t = ex.Message
        End Try

        Return t

    End Function
End Class
