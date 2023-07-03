VERSION 5.00
Begin VB.Form frmColours 
   BackColor       =   &H00C0E0FF&
   Caption         =   "Colours"
   ClientHeight    =   8280
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10470
   LinkTopic       =   "Form1"
   ScaleHeight     =   8280
   ScaleWidth      =   10470
   StartUpPosition =   3  'Windows Default
   Begin VB.HScrollBar HsbGreen 
      Height          =   495
      Left            =   4920
      Max             =   255
      TabIndex        =   8
      Top             =   4200
      Width           =   4095
   End
   Begin VB.HScrollBar hsbBlue 
      Height          =   495
      Left            =   4920
      Max             =   255
      TabIndex        =   6
      Top             =   4920
      Width           =   4095
   End
   Begin VB.OptionButton opdGreen 
      Caption         =   "Green"
      Height          =   375
      Left            =   1920
      TabIndex        =   5
      Top             =   4200
      Width           =   1455
   End
   Begin VB.HScrollBar hsbRed 
      Height          =   495
      Left            =   4920
      Max             =   255
      TabIndex        =   3
      Top             =   3480
      Width           =   4095
   End
   Begin VB.OptionButton opdBlue 
      Caption         =   "Blue"
      Height          =   375
      Left            =   1920
      TabIndex        =   2
      Top             =   4800
      Width           =   1455
   End
   Begin VB.OptionButton optRed 
      Caption         =   "Red"
      Height          =   375
      Left            =   1920
      TabIndex        =   1
      Top             =   3600
      Value           =   -1  'True
      Width           =   1455
   End
   Begin VB.TextBox txtColour 
      BackColor       =   &H00000000&
      Height          =   1335
      Left            =   2040
      TabIndex        =   0
      Top             =   1200
      Width           =   6975
   End
   Begin VB.Label Label6 
      Caption         =   "Colour ="
      Height          =   495
      Left            =   5880
      TabIndex        =   13
      Top             =   6960
      Width           =   1335
   End
   Begin VB.Label Label5 
      Caption         =   "No. of Colours = "
      Height          =   495
      Left            =   5880
      TabIndex        =   12
      Top             =   6360
      Width           =   1335
   End
   Begin VB.Label lblColours 
      Caption         =   "0"
      Height          =   495
      Left            =   7440
      TabIndex        =   11
      Top             =   6960
      Width           =   1335
   End
   Begin VB.Label lblShades 
      Height          =   495
      Left            =   7440
      TabIndex        =   10
      Top             =   6360
      Width           =   1335
   End
   Begin VB.Label Label3 
      Caption         =   "Green"
      Height          =   375
      Left            =   4080
      TabIndex        =   9
      Top             =   4320
      Width           =   735
   End
   Begin VB.Label Label2 
      Caption         =   "Blue"
      Height          =   375
      Left            =   4080
      TabIndex        =   7
      Top             =   5040
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "Red"
      Height          =   375
      Left            =   4080
      TabIndex        =   4
      Top             =   3600
      Width           =   735
   End
End
Attribute VB_Name = "frmColours"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()

    lblShades.Caption = "16 million"

End Sub

Private Sub optRed_Click()

    txtColour.BackColor = QBColor(12)

End Sub

Private Sub opdGreen_Click()

    txtColour.BackColor = QBColor(2)
    
End Sub

Private Sub opdBlue_Click()

    txtColour.BackColor = QBColor(1)
    
End Sub

Private Sub hsbRed_Change()

    txtColour.BackColor = RGB(hsbRed.Value, HsbGreen.Value, hsbBlue.Value)
    lblColours.Caption = txtColour.BackColor

End Sub

Private Sub hsbGreen_Change()

    txtColour.BackColor = RGB(hsbRed.Value, HsbGreen.Value, hsbBlue.Value)
    lblColours.Caption = txtColour.BackColor

End Sub

Private Sub hsbBlue_Change()

    txtColour.BackColor = RGB(hsbRed.Value, HsbGreen.Value, hsbBlue.Value)
    lblColours.Caption = txtColour.BackColor

End Sub




