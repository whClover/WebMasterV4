Imports ClosedXML.Excel
Imports SQLFunction
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports GlobalString
Imports DocumentFormat.OpenXml.Math

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

    Public Shared Sub BindDataDropDown(ByVal ObjName As DropDownList, ByVal query As String, ByVal ObjText As String, ByVal ObjVal As String)
        Dim dt As New DataTable
        dt = SQLFunction.GetDataTable(query)
        ObjName.DataSource = dt
        ObjName.DataTextField = ObjText
        ObjName.DataValueField = ObjVal
        ObjName.DataBind()
    End Sub

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

    Public Shared Function errPicker(ByVal filename As String, ByVal errormsg As String)
        Dim str_Return As String

        str_Return = "<strong>Error Occured. Please Capture This Error and Send to TRahayu@thiess.co.id and MISetiawan@thiess.co.id</strong><br/> " _
                    & "Page: " & filename & "<br />" _
                    & "Error: " & errormsg

        Return str_Return
    End Function

    Private _page As Page
    Public Sub New(ByVal currentPage As Page)
        _page = currentPage
    End Sub
    Public Function ModalV1(ByVal url As String, Optional param1 As String = "", Optional param2 As String = "")
        Try
            Dim eParam As String = ""
            If param1 <> String.Empty Then eParam = eParam & "?" & param1
            If param2 <> String.Empty Then eParam = eParam & "&" & param2

            If Len(eParam) > 0 Then
                url = url & eParam
            End If

            Dim eJScript As String = "window.open('" & url & "','_blank'," & GlobalString.popupsize & ")"
            _page.ClientScript.RegisterStartupScript(_page.GetType(), "script", eJScript, True)
            Return 0
        Catch ex As Exception
            Return ex.Message
        End Try
    End Function

    Public Function closeMe()
        Try
            _page.ClientScript.RegisterStartupScript(Me.GetType(), "closeTab", "window.close();", True)
            Return 0
        Catch ex As Exception
            Return ex.Message
        End Try
    End Function
End Class
