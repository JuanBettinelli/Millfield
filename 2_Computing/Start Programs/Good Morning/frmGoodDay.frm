VERSION 5.00
Begin VB.Form frmGoodDay 
   Caption         =   "Good * something *!"
   ClientHeight    =   8265
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10065
   LinkTopic       =   "Form1"
   ScaleHeight     =   8265
   ScaleWidth      =   10065
   StartUpPosition =   3  'Windows Default
   Begin VB.OptionButton optNight 
      Caption         =   "5pm-7am"
      Height          =   855
      Left            =   2160
      TabIndex        =   3
      Top             =   5520
      Width           =   1455
   End
   Begin VB.OptionButton optafternoon 
      Caption         =   "midday-5pm"
      Height          =   855
      Left            =   2160
      TabIndex        =   2
      Top             =   4440
      Width           =   1455
   End
   Begin VB.OptionButton optMorning 
      Caption         =   "7am-midday"
      Height          =   855
      Left            =   2160
      TabIndex        =   1
      Top             =   3360
      Value           =   -1  'True
      Width           =   1455
   End
   Begin VB.Label lblGoodDay 
      Caption         =   "Good Morning"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   2160
      TabIndex        =   0
      Top             =   960
      Width           =   5775
   End
End
Attribute VB_Name = "frmGoodDay"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub optafternoon_Click()

    lblGoodDay.Caption = "Good Afternoon"

End Sub

Private Sub optMorning_Click()

    lblGoodDay.Caption = "Good Morning"
    
End Sub

Private Sub optNight_Click()

    lblGoodDay.Caption = "Good Night"

End Sub
