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
End Class
