VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Powers"
   ClientHeight    =   8505
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10125
   LinkTopic       =   "Form1"
   ScaleHeight     =   8505
   ScaleWidth      =   10125
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdString 
      Caption         =   "String"
      Height          =   855
      Left            =   5760
      TabIndex        =   3
      Top             =   4440
      Width           =   2295
   End
   Begin VB.CommandButton cmdPi 
      Caption         =   "Pi"
      Height          =   735
      Left            =   2040
      TabIndex        =   2
      Top             =   6000
      Width           =   2415
   End
   Begin VB.CommandButton cmdReadNumber 
      Caption         =   "Read Numbers"
      Height          =   735
      Left            =   2040
      TabIndex        =   0
      Top             =   4440
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "Number raised to a Power"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   2040
      TabIndex        =   1
      Top             =   2400
      Width           =   5535
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

     'Global Variables
     Const pi = 3.1415

Private Sub cmdPi_Click()

     'Local Variables
     Const pi = 2.1415

     MsgBox ("pi = " & pi)

End Sub

Private Sub cmdReadNumber_Click()

    'Local Variables
    Dim NewY As String
    Dim Number As String
    Dim Y As String
    Dim Result As Long
    
    MsgBox ("pi = " & pi)
    
    Number = InputBox("Number = ")
    Y = InputBox("Power = ")
    Result = 1
    
    'is the data valid?
    If IsNumeric(Number) And IsNumeric(Y) Then
        NewY = Val(Y)
        'checks for integer value
        If NewY = Int(NewY) Then
            Do
                MsgBox ("X =" & Val(Number) & " Y = " & Val(Y) & " Result = " & Result)
                Result = Result * Number
                Y = Y - 1
            Loop Until Y = 0
    
            MsgBox ("Cube of " & Number & " = " & Result)
         Else: MsgBox ("Y must be an integer")
         End If
    Else: MsgBox ("Invalid data")
    End If
    
End Sub

Private Sub cmdString_Click()

Dim MyString As String
Dim i As Byte

    MyString = InputBox("String = ")
    
    For i = 1 To Len(MyString)
        MsgBox ("Character " & i & " = '" & Mid(MyString, i, 1) & "'")
    Next i
        

End Sub

'q.6 WrongAnswers = NumberOfQuestions - CorrectAnswers
'q.7 PercentageCorrectAnswers = CorrectAnswers/ NumberAttempted * 100
'q.8 PercentageAttempted = NumberAttempted/ NumberOfQuestions * 100
'q.9 NumberOfFivePoundNotes = Int(Amount/5)

'example FirstName = "Juan"
'        Surname = "Bettinelli"
'        Name = FirstName & " " & Surname

'4*(7+3)


Private Sub Form_Load()

End Sub
