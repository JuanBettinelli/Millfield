VERSION 5.00
Begin VB.Form form_welcome 
   BackColor       =   &H00FF8080&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "                Games by Nick Timms"
   ClientHeight    =   2115
   ClientLeft      =   45
   ClientTop       =   255
   ClientWidth     =   2985
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2115
   ScaleWidth      =   2985
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmd_play 
      BackColor       =   &H00FF8080&
      Caption         =   "me and my friend want to play!"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1680
      Width           =   2655
   End
   Begin VB.Label lblInfo 
      BackColor       =   &H00FF8080&
      Caption         =   $"form_welcome.frx":0000
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   975
      Left            =   120
      TabIndex        =   1
      Top             =   720
      Width           =   2775
   End
   Begin VB.Label lblPageTitle 
      BackColor       =   &H00FF8080&
      Caption         =   "Games by Nick Timms: Noughts and Crosses!"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   615
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   2895
   End
End
Attribute VB_Name = "form_welcome"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_play_Click()
        
        
        form_welcome.Hide
        form_tictactoe.Show
End Sub

Private Sub Form_Unload(Cancel As Integer)


        Unload form_draw
        Unload form_tictactoe
        Unload form_welcome
End Sub
