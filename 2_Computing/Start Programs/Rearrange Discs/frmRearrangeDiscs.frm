VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8565
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9705
   LinkTopic       =   "Form1"
   ScaleHeight     =   8565
   ScaleWidth      =   9705
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdDistinctElements 
      Caption         =   "Distinct Elements"
      Height          =   855
      Left            =   3360
      TabIndex        =   1
      Top             =   4080
      Width           =   2295
   End
   Begin VB.CommandButton cmdRerrangeDiscs 
      Caption         =   "Rerrange Discs"
      Height          =   975
      Left            =   3360
      TabIndex        =   0
      Top             =   2400
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim LineOfDiscs(100) As String
Dim n As Byte
'================================
Dim A(100) As String

Private Sub cmdRerrangeDiscs_Click()

    NoOfDiscs = InputBox("No. of Discs (even number) = ")
    n = NoOfDiscs
    
    For position = 1 To n / 2
        LineOfDiscs(position) = "b"
        LineOfDiscsString = LineOfDiscsString & LineOfDiscs(position)
    Next position
    
    For position = (n / 2 + 1) To n
        LineOfDiscs(position) = "w"
        LineOfDiscsString = LineOfDiscsString & LineOfDiscs(position)
    Next position
    
    Call RearrangeDiscs
    
End Sub

Private Sub RearrangeDiscs()

    '//Rerrange a line of an equal number of black and white Discs
    '//inputs: total number of black and white discs
    '//n, the total no. of discs in line n >= 2
    '//output: rerranged line of discs
    
    '//No. of basic opeartions: C(n) = 1/2 * n * (n-1)
    '//Order of growth of algorithm = O(n^2)
    
    NoOfBasicOperations = 0
    
    n = n - 1
    For NumberOfPairs = n To 1 Step -1
        For j = 1 To NumberOfPairs
            If LineOfDiscs(j) = "b" And LineOfDiscs(j + 1) = "w" Then
                'Basic Operation: Swap LineOfDiscs(j) and LineOfDiscs(j + 1))
                Call Swap(j, j + 1)
            End If
            NoOfBasicOperations = NoOfBasicOperations + 1
        Next j
    Next NumberOfPairs
    
    NewLineOfDiscs = ""
    For position = 1 To n + 1
        NewLineOfDiscs = NewLineOfDiscs & LineOfDiscs(position)
    Next position
    
    MsgBox ("New Line Of Discs = " & NewLineOfDiscs)
    MsgBox ("No. of basic operations = " & NoOfBasicOperations)
    
End Sub

Private Sub Swap(k, m)

    Temp = LineOfDiscs(m)
    LineOfDiscs(m) = LineOfDiscs(k)
    LineOfDiscs(k) = Temp
    
End Sub

'================================================================================

Private Sub cmdDistinctElements_Click()

    '//No. of basic opeartions: C(n) = 1/2 * n * (n-1)
    '//Order of growth of algorithm = O(n^2)

    NoOfElements = InputBox("No. of Elements = ")
    n = NoOfElements
    
     NoOfBasicOperations = 0
    
    For position = 1 To n
        A(position) = InputBox("A (" & position & ") = ")
    Next position

    Result = True
    For i = 1 To (n - 1)
        For j = (i + 1) To n
            If A(i) = A(j) Then
                'Basic operation: compare 2 elements
                Result = False
            End If
            NoOfBasicOperations = NoOfBasicOperations + 1
        Next j
    Next i
    
    MsgBox ("Distinct? = " & Result)
    MsgBox ("No. of basic operations = " & NoOfBasicOperations)

End Sub


