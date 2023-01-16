Imports System.Web.DynamicData
Imports Microsoft.Ajax.Utilities
Imports WebMasterV4.SQLFunction
Imports WebMasterV4.Utility
Imports System.Web.UI
Imports System.Security.Cryptography

Public Class Users
    Inherits System.Web.UI.Page

    Public tempfilter As String = ""
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("checkboxList") Is Nothing Then
                Session("checkboxList") = New List(Of Boolean)
            End If
            GenerateJobTitle()
            GenerateData()
        End If
    End Sub

    Private Sub filtering()
        tempfilter = ""
        Dim title As String = ""
        For Each item As ListItem In ddTitle.Items
            If item.Selected Then
                'message += item.Text + " " + item.Value + "\n"
                title += evar(item.Value, 1) + ","
            End If
        Next
        If title <> String.Empty Then
            title = Left(title, Len(title) - 1)
        End If

        If tFullName.Text <> String.Empty Then tempfilter = tempfilter + " and FullName like" + evar(tFullName.Text, 11)
        If tUserID.Text <> String.Empty Then tempfilter = tempfilter + " and UserID like" + evar(tUserID.Text, 11)
        'If tJobTitle.Text <> String.Empty Then tempfilter = tempfilter + " and JobTitle like" + evar(tJobTitle.Text, 11)
        If title <> String.Empty Then tempfilter = " and JobTitle in(" & title & ")" & tempfilter

        If Len(tempfilter) > 0 Then
            tempfilter = " where " + Right(tempfilter, Len(tempfilter) - 4)
        End If
    End Sub

    Private Sub GenerateData()
        filtering()
        Dim dt As New DataTable
        Dim query As String = "select * from tbl_user" & tempfilter
        'Dim theobject As GridView = CType(FindControl("gvUser"), GridView)
        dt = GetDataTable(query)
        gvUser.DataSource = dt
        gvUser.DataBind()
    End Sub

    Sub GenerateJobTitle()
        Dim query As String = "select distinct(JobTitle) from tbl_user"
        BindDataListBox(ddTitle, query, "JobTitle", "JobTitle")
    End Sub

    Protected Sub gvUser_RowDataBound(sender As Object, e As GridViewRowEventArgs)
        If e.Row.RowType = DataControlRowType.DataRow Then
        ElseIf e.Row.RowType = DataControlRowType.EmptyDataRow Then
            e.Row.Cells(0).Text = "No data available"
            e.Row.Cells(0).ForeColor = System.Drawing.Color.Red
            Exit Sub
        End If
    End Sub

    Protected Sub bSearch_Click(sender As Object, e As EventArgs)
        GenerateData()
    End Sub

    Protected Sub chkSelectAll_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs)
        Dim headerCheckBox As CheckBox = DirectCast(sender, CheckBox)
        Dim chkAll As CheckBox = DirectCast(gvUser.HeaderRow.FindControl("chkSelectAll"), CheckBox)
        Session("CheckAll") = chkAll.Checked

        For Each row As GridViewRow In gvUser.Rows
            Dim cell As TableCell = row.Cells(0)
            Dim chkSelect As CheckBox = DirectCast(cell.FindControl("chkSelect"), CheckBox)
            chkSelect.Checked = headerCheckBox.Checked
        Next
    End Sub


    Protected Sub bGetCheck_Click(sender As Object, e As EventArgs)
        Dim selectData As String = ""
        For i As Integer = 0 To gvUser.Rows.Count - 1
            Dim cb As CheckBox = DirectCast(gvUser.Rows(i).FindControl("chkSelect"), CheckBox)
            If cb IsNot Nothing AndAlso cb.Checked Then
                Dim euserid As String = gvUser.Rows(i).Cells(2).Text
                selectData += evar(euserid, 1) + ","
            End If
        Next
        If selectData <> String.Empty Then
            selectData = Left(selectData, Len(selectData) - 1)
        End If
        MsgBox(selectData)
        'lanjutkan sendiri yah... :P
    End Sub

    Protected Sub bExport_Click(sender As Object, e As EventArgs)
        filtering()
        Dim str As String = "select * from tbl_User" & tempfilter

        ExportToExcelXML(str, "sample")
    End Sub
End Class