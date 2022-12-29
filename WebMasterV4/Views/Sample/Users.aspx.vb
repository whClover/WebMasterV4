Imports System.Web.DynamicData
Imports WebMasterV4.SqlFunction

Public Class Users
    Inherits System.Web.UI.Page

    Public tempfilter As String = ""
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GenerateData()
    End Sub

    Private Sub GenerateData()
        Dim dt As New DataTable
        Dim query As String = "select * from tbl_user" & tempfilter
        'Dim theobject As GridView = CType(FindControl("gvUser"), GridView)
        dt = GetDataTable(query)
        gvUser.DataSource = dt
        gvUser.DataBind()
    End Sub
End Class