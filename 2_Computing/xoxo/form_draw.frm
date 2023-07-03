VERSION 5.00
Begin VB.Form form_draw 
   BackColor       =   &H00FF8080&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Draw Game"
   ClientHeight    =   1035
   ClientLeft      =   45
   ClientTop       =   255
   ClientWidth     =   2550
   Icon            =   "form_draw.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1035
   ScaleWidth      =   2550
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdNo 
      BackColor       =   &H00FFC0C0&
      Caption         =   "&No"
      Height          =   375
      Left            =   1680
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   600
      Width           =   735
   End
   Begin VB.CommandButton cmdYes 
      BackColor       =   &H00FFC0C0&
      Caption         =   "&Yes"
      Height          =   375
      Left            =   1680
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "You two idiots. Neither of you won! ah well. wanna try again?"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   1575
   End
End
Attribute VB_Name = "form_draw"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Unload(Cancel As Integer)


        Unload form_draw
        Unload form_tictactoe
        Unload form_welcome
End Sub

Private Sub cmdNo_Click()
    
    
    Unload form_tictactoe
    Unload form_welcome
    Unload form_draw
End Sub

Private Sub cmdYes_Click()
    
    
    form_draw.Hide
    form_tictactoe.Show
    form_tictactoe.HideAll
    form_tictactoe.lblBox.Caption = "Welcome to XOXOXO"
End Sub

