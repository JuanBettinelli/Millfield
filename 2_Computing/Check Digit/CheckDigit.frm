VERSION 5.00
Begin VB.Form FrmCalcCheckDigit 
   Caption         =   "Calculate Check Digit For ISBN"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   8595
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox TxtCheckDigit 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   5880
      TabIndex        =   4
      Top             =   840
      Width           =   855
   End
   Begin VB.TextBox TxtInputISBN 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   1560
      TabIndex        =   1
      Top             =   840
      Width           =   2895
   End
   Begin VB.CommandButton CmdCalcCheckDigit 
      Caption         =   "Calculate Check Digit"
      Height          =   975
      Left            =   1560
      TabIndex        =   0
      Top             =   2880
      Width           =   3615
   End
   Begin VB.Label LblCheckDigit 
      Alignment       =   2  'Center
      Caption         =   "Check Digit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4800
      TabIndex        =   5
      Top             =   1080
      Width           =   855
   End
   Begin VB.Label LblIsItCorrect 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1560
      TabIndex        =   3
      Top             =   4920
      Width           =   3615
   End
   Begin VB.Label LblISBN 
      Alignment       =   2  'Center
      Caption         =   "ISBN"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      TabIndex        =   2
      Top             =   1080
      Width           =   855
   End
End
Attribute VB_Name = "FrmCalcCheckDigit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


'Calculate the Check Digit for an ISBN

Dim ISBN As String          'Global Declaration

Private Sub CmdCalcCheckDigit_Click()

Dim CheckDigitValue, WeightedSum, Weight, Digit, CalculatedCheckDigit, Remainder As Integer
Dim InputCheckDigit As String           'Declare variables in subroutine (local variables)

    ISBN = TxtInputISBN.Text
    
    WeightedSum = 0
    For Weight = 2 To Len(ISBN) + 1
    
        Digit = Mid(ISBN, Len(ISBN) - Weight + 2, 1)
        WeightedSum = WeightedSum + Digit * Weight
        
    Next Weight
    
    Remainder = WeightedSum Mod 11
    CalculatedCheckDigit = 11 - Remainder
    
    InputCheckDigit = TxtCheckDigit.Text
    
    'Use "Select Case" as it is more efficient
    
    Select Case InputCheckDigit
        Case "X"
            CheckDigitValue = 10
        Case "0"
            CheckDigitValue = 11
        Case Else
            CheckDigitValue = Val(InputCheckDigit)
    End Select
    
    If CalculatedCheckDigit = CheckDigitValue Then
        LblIsItCorrect.Caption = "Check Digit " & CalculatedCheckDigit & " is Correct !!"
    Else: LblIsItCorrect.Caption = "Check Digit " & CalculatedCheckDigit & " is Incorrect !!"
    End If
    
End Sub

Private Sub TxtInputISBN_KeyUp(KeyCode As Integer, Shift As Integer)

    'vbKey0..vbKey9 = '0'..'9'
    'vbKeyNumpad0..vbKeyNumpad9 = '0'..'9' (on Keypad)

    If Not ((KeyCode >= vbKey0) And (KeyCode <= vbKey9) _
        Or (KeyCode >= vbKeyNumpad0) And (KeyCode <= vbKeyNumpad9)) Then
        
        MsgBox "Invalid Digit"
        ISBN = Mid(TxtInputISBN.Text, 1, Len(TxtInputISBN.Text) - 1)
        TxtInputISBN.Text = ISBN
        TxtInputISBN.SelStart = Len(TxtInputISBN)
    End If
    
End Sub

Private Sub Form_Activate()

    TxtInputISBN.SetFocus       'Place cursor in text box
    
End Sub

