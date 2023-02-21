﻿Imports WebMasterV4.SQLFunction
Imports WebMasterV4.Utility
Imports WebMasterV4.GlobalString
Imports DocumentFormat.OpenXml.Wordprocessing

Public Class MeaInspTemplateSec
    Inherits System.Web.UI.Page
    Dim utility As New Utility(Me)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            bindingData()
            bindingHeader()
        End If
    End Sub

    Sub bindingHeader()
        Dim eid As String = Request.QueryString("id")
        Dim dt As New DataTable
        dt = GetDataTable("select * from v_InspTemplateList where IDGroup=" & eid)

        tID.Text = dt.Rows(0)(0)
        tUnitDesc.Text = dt.Rows(0)(1)
        tComp.Text = dt.Rows(0)(2)
        tDesc.Text = dt.Rows(0)(3)
        tRegBy.Text = dt.Rows(0)(4)
        tRegDate.Text = dt.Rows(0)(5)
    End Sub

    Sub bindingData()
        Dim eidgp As String = Request.QueryString("id")
        If eidgp = String.Empty Then Exit Sub

        Dim query As String = "select distinct(SectionName),CONVERT(varchar(10), SeqSection) as SeqText,SeqSection,AfterInspection from v_InspDetailRev where IDGroup=" & eidgp & " order by SeqSection"
        Dim dt As New DataTable
        dt = GetDataTable(query)
        gvSection.DataSource = dt
        gvSection.DataBind()
    End Sub

    Protected Sub bUpload_Click(sender As Object, e As EventArgs)
        utility.ModalV2("MainContent_MeaTemplateSecUpload_Panel1")
    End Sub

    Protected Sub bAdd_Click(sender As Object, e As EventArgs)
        Dim eid As String = Request.QueryString("id")
        Dim IDGroup As HiddenField = DirectCast(MeaTemplateSecEdit.FindControl("IDGroup"), HiddenField)
        Dim seq As TextBox = DirectCast(MeaTemplateSecEdit.FindControl("tSeq"), TextBox)
        Dim sec As TextBox = DirectCast(MeaTemplateSecEdit.FindControl("tSection"), TextBox)

        IDGroup.Value = eid
        seq.Text = String.Empty
        sec.Text = String.Empty

        utility.ModalV2("MainContent_MeaTemplateSecEdit_Panel1")
    End Sub

    Protected Sub bEdit_Click(sender As Object, e As EventArgs)
        Dim eid As String = Request.QueryString("id")

        Dim button As Button = CType(sender, Button)
        Dim eseq As String = button.Attributes("seq")
        Dim esec As String = button.Attributes("sec")
        Dim aftinsp As String = button.Attributes("aftinsp")

        Dim IDGroup As HiddenField = DirectCast(MeaTemplateSecEdit.FindControl("IDGroup"), HiddenField)
        Dim seq As TextBox = DirectCast(MeaTemplateSecEdit.FindControl("tSeq"), TextBox)
        Dim cursec As HiddenField = DirectCast(MeaTemplateSecEdit.FindControl("cursection"), HiddenField)
        Dim sec As TextBox = DirectCast(MeaTemplateSecEdit.FindControl("tSection"), TextBox)
        Dim eaftinsp As DropDownList = DirectCast(MeaTemplateSecEdit.FindControl("ddAftInsp"), DropDownList)

        IDGroup.Value = eid
        seq.Text = eseq
        cursec.Value = esec
        sec.Text = esec

        If aftinsp = "False" Then
            eaftinsp.SelectedValue = "0"
        Else
            eaftinsp.SelectedValue = "1"
        End If

        'eaftinsp.SelectedValue = aftinsp

        utility.ModalV2("MainContent_MeaTemplateSecEdit_Panel1")
    End Sub

    Protected Sub bBack_Click(sender As Object, e As EventArgs)
        Response.Redirect(urlMeasureTemplate)
    End Sub

    Protected Sub bDelete_Click(sender As Object, e As EventArgs)
        Dim eid As String = Request.QueryString("id")
        Dim button As Button = CType(sender, Button)
        Dim eseq As String = button.Attributes("seq")
        Dim esec As String = button.Attributes("sec")

        If CheckGroup(45) = True Then
            Try
                Dim query As String = "update tbl_InspTemplateDetailRev set [Active]=0 where IDGroup=" & eid & " and SectionName=" & evar(esec, 1) & " and SeqSection=" & eseq
                executeQuery(query)
                bindingData()
            Catch ex As Exception
                err_handler(GetCurrentPageName(), GetCurrentMethodName, ex.Message)
            End Try
        Else
            utility.showAlert(
                templateNotif(1, 45)
            )
        End If

    End Sub

    Protected Sub bDetails_Click(sender As Object, e As EventArgs)
        Dim eid As String = Request.QueryString("id")

        Dim button As Button = CType(sender, Button)
        Dim esec As String = button.Attributes("sec")
        Response.Redirect(urlMeasureTemplateSecDetails & "?id=" & eid & "&section=" & esec)
    End Sub

    Protected Sub bShowSample_Click(sender As Object, e As EventArgs)
        Dim eid As String = Request.QueryString("id")
        Dim query As String = "exec dbo.[InspAssignWO] " & evar(eid, 1) & "," & evar(eid, 1)
        executeQuery(query)

        Response.Redirect(urlMeasureTemplateShow & "?id=" & eid)
    End Sub
End Class