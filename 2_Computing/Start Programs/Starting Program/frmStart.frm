VERSION 5.00
Begin VB.Form frmStart 
   BackColor       =   &H00008000&
   BorderStyle     =   0  'None
   Caption         =   "frmStart"
   ClientHeight    =   9660
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11010
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9660
   ScaleWidth      =   11010
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.OptionButton optThree 
      BackColor       =   &H0000C000&
      Caption         =   "Third option button"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6120
      TabIndex        =   9
      Top             =   5880
      Width           =   2775
   End
   Begin VB.OptionButton optTwo 
      BackColor       =   &H0000C000&
      Caption         =   "second option button"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6120
      TabIndex        =   8
      Top             =   5280
      Width           =   2775
   End
   Begin VB.OptionButton optOne 
      BackColor       =   &H0000C000&
      Caption         =   "First option button"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6120
      TabIndex        =   7
      Top             =   4680
      Width           =   2775
   End
   Begin VB.CheckBox chkThree 
      BackColor       =   &H0000C000&
      Caption         =   "Third check box"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3240
      TabIndex        =   6
      Top             =   5880
      Width           =   2655
   End
   Begin VB.CheckBox chkTwo 
      BackColor       =   &H0000C000&
      Caption         =   "Second check box"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3240
      TabIndex        =   5
      Top             =   5280
      Width           =   2655
   End
   Begin VB.CheckBox chkOne 
      BackColor       =   &H0000C000&
      Caption         =   "First check box"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3240
      TabIndex        =   4
      Top             =   4680
      Width           =   2655
   End
   Begin VB.CommandButton cmdNext 
      BackColor       =   &H00C000C0&
      Caption         =   "Next"
      Height          =   615
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   7080
      Width           =   2775
   End
   Begin VB.TextBox txtMessage 
      Height          =   615
      Left            =   3240
      TabIndex        =   1
      Text            =   "hello"
      Top             =   3720
      Width           =   4935
   End
   Begin VB.CommandButton cmdStart 
      BackColor       =   &H0080C0FF&
      Caption         =   "Start"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   3840
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   2400
      Width           =   3375
   End
   Begin VB.Label lblTitle 
      BackColor       =   &H0000C000&
      Caption         =   "Starting to program"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3240
      TabIndex        =   3
      Top             =   960
      Width           =   5055
   End
End
Attribute VB_Name = "frmStart"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdStart_Click()

    MsgBox ("Hello, I'm Juan")
    txtMessage.Font.Size = 20
    txtMessage.Text = "I'm from Germany"

End Sub

Private Sub cmdStart_KeyPress(KeyAscii As Integer)

    MsgBox ("Hello, I'm Juan 2")
    txtMessage.Text = "I'm from Germany 2"

End Sub

Private Sub txtMessage_GotFocus()

    MsgBox ("Hello, I'm Juan 3")
    txtMessage.Text = "I'm from Germany 3"

End Sub

Private Sub cmdNext_Click()

    Me.Hide
    frmNext.Show

End Sub

Private Sub Form_Load()

    MsgBox ("Welcome to my program")
    chkOne.Value = 1
    optOne.Value = True

End Sub


