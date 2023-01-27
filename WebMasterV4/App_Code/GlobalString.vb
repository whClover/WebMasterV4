Public Class GlobalString
    Public Shared popupsize As String = "'width=1200,height=800,left=200,top=200,resizable=yes'"

    'variabel untuk link web-nya,
    Public Shared urlMainMenu As String = "~/"
    Public Shared urlError As String = "~/Views/Shared/ErrorPage.aspx"

    Public Shared urlTCRCLogin As String = "~/LoginPage.aspx?id=1"
    Public Shared urlTCRC As String = "~/Views/TCRC/"
    Public Shared urlTCRCIx As String = urlTCRC & "Index.aspx"
    Public Shared urlTCRCWorkshop As String = urlTCRC & "Workshop/"
    Public Shared urlTCRCWorkshopIx As String = urlTCRCWorkshop & "Index.aspx"

    'TCRC: Measurement Inspection Module
    Public Shared urlInspection As String = urlTCRCWorkshop & "/Inspection/"
    Public Shared urlMeasureTemplate As String = urlInspection & "MeaInspTemplate.aspx"
    Public Shared urlMeasureTemplateSec As String = urlInspection & "MeaInspTemplateSec.aspx"
    'END
End Class
