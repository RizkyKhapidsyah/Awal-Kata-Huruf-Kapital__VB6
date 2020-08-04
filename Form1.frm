VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Awal Kapital"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   360
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   1080
      Width           =   3735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Function AwalKataKapital(strKalimat As String)
Dim i As Integer
Dim Temp As String
Dim Lokasi As Integer
Dim huruf As String * 1
  Temp$ = ""
  For i% = 1 To Len(strKalimat)
    huruf = Chr(Asc(Mid(strKalimat, i%, 1)))
    If Len(Trim(huruf)) < 1 Then
      Lokasi% = i% + 1
    End If
    If i% = Lokasi% Or i% = 1 Then
       Temp$ = Temp$ + UCase(Chr(Asc(Mid(strKalimat, _
               i%, 1))))
    Else
       Temp$ = Temp$ + LCase(Chr(Asc(Mid(strKalimat, _
                i%, 1))))
    End If
  Next i
  AwalKataKapital = Temp$
End Function

Private Sub Text1_Change()
  Dim posisi As Integer
  posisi = Text1.SelStart
  Text1.Text = AwalKataKapital(Text1.Text)
  Text1.SelStart = posisi
End Sub


