Imports WebMasterV4.SQLFunction
Imports WebMasterV4.Utility
Imports WebMasterV4.GlobalString
Public Class MeaInspection
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            generateReport()
        End If
    End Sub

    Sub generateReport()
        Dim ewo As String = Request.QueryString("wo")
        If ewo = String.Empty Then Exit Sub
        Dim dt As New DataTable
        Dim html As New StringBuilder
        Dim query As String = "exec dbo.[InspDetailWO] " & evar(ewo, 1) & ""
        dt = GetDataTable(query)
        If dt.Rows.Count > 0 Then
            html.Append(dt.Rows(0)(0))
        End If

        phMeaRpt.Controls.Add(New Literal() With {
            .Text = html.ToString
        })
    End Sub

End Class