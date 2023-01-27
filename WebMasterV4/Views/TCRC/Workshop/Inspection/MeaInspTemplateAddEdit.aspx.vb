Imports WebMasterV4.Utility
Imports WebMasterV4.SQLFunction
Public Class MeaInspTemplateAddEdit
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            bindingData()
        End If
    End Sub

    Sub bindingData()
        Dim eid As String = Request.QueryString("id")
        Dim eseq As String = Request.QueryString("seq")
        Dim esec As String = Request.QueryString("sec")

        If eid = "0" Then
        Else
            tSeq.Text = eseq
            tSectionName.Text = esec
        End If
    End Sub

    Protected Sub bSave_Click(sender As Object, e As EventArgs)
        Dim eid As String = Request.QueryString("id")
        Dim eseq As String = evar(tSeq.Text, 1)
        Dim esec As String = evar(tSectionName.Text, 1)
        Dim ecurSec As String = Request.QueryString("sec")

        Dim tempstring As String = "exec dbo.TCRCMeaInspSectionSubmit " & eid _
            & "," & evar(eseq, 1) & "," & evar(esec, 1) & "," & evar(ecurSec, 1) _
            & eByName()
        executeQuery(tempstring)
    End Sub

    Protected Sub bClose_Click(sender As Object, e As EventArgs)
        Dim utility As New Utility(Me)
        utility.closeMe()
    End Sub
End Class