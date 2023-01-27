Imports WebMasterV4.SQLFunction
Imports WebMasterV4.Utility
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

        Dim query As String = "select distinct(SectionName),CONVERT(varchar(10), SeqSection) as SeqText,SeqSection from v_InspDetailRev where IDGroup=" & eidgp & " order by SeqSection"
        Dim dt As New DataTable
        dt = GetDataTable(query)
        gvSection.DataSource = dt
        gvSection.DataBind()
    End Sub

    Protected Sub bUpload_Click(sender As Object, e As EventArgs)
        Dim eid As String = Request.QueryString("id")
        utility.ModalV1("MeaInspTemplateUpload.aspx?id=" & eid)
    End Sub

    Protected Sub bAdd_Click(sender As Object, e As EventArgs)
        utility.ModalV1("MeaInspTemplateAddEdit.aspx?id=0")
    End Sub

    Protected Sub gvSection_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        If e.CommandName = "Edit" Then
            Dim rowIndex As Integer = Convert.ToInt32(e.CommandArgument)
            Dim row As GridViewRow = gvSection.Rows(rowIndex)

            Dim eid As String = Request.QueryString("id")
            Dim Seq As String = row.Cells(1).Text
            Dim Sec As String = row.Cells(2).Text

            utility.ModalV1("MeaInspTemplateAddEdit.aspx?id=" & eid & "seq=" & Seq & "sec=" & Sec)
        End If
    End Sub

    Protected Sub bEdit_Click(sender As Object, e As EventArgs)
        Dim eid As String = Request.QueryString("id")

        Dim button As Button = CType(sender, Button)
        Dim eseq As String = button.Attributes("seq")
        Dim esec As String = button.Attributes("sec")
        utility.ModalV1("MeaInspTemplateAddEdit.aspx?id=" & eid & "&seq=" & eseq & "&sec=" & esec)
    End Sub
End Class