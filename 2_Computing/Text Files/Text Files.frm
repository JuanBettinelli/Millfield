VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7440
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10155
   LinkTopic       =   "Form1"
   ScaleHeight     =   7440
   ScaleWidth      =   10155
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdRead 
      Caption         =   "Read text fiel"
      Height          =   615
      Left            =   2400
      TabIndex        =   0
      Top             =   1440
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdRead_Click()

    FileNameIn = "example.dat"
    Open FileNameIn For Input As 1
    
    FileNameOut = "example2.dat"
    Open FileNameOut For Output As 2
    
    Do While Not EOF(1)
        Input #1, NextData
        MsgBox ("Data= " & NextData)
        Write #2, NextData
    Loop
        
End Sub
