VERSION 5.00
Begin VB.Form frmPrimeFactors 
   Caption         =   "Finding The Prime Factors"
   ClientHeight    =   6795
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9480
   LinkTopic       =   "Form1"
   ScaleHeight     =   6795
   ScaleWidth      =   9480
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdFindingPrimeFactors 
      Caption         =   "Find The Prime Factors"
      Height          =   735
      Left            =   2400
      TabIndex        =   0
      Top             =   3120
      Width           =   2895
   End
End
Attribute VB_Name = "frmPrimeFactors"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim n As Integer

Private Sub cmdFindingPrimeFactors_Click()

    n = InputBox("Integer 'n' = ")
    Call FindPrimeFactors(n)

End Sub

Private Sub FindPrimeFactors(n As Integer)

    '//Finds every factor of a given natural number, n
    '//Input: An integer n >= 2
    '//Output: Factors
    
    PrimeFactorString = ""
    
    Do While n > 1
        PrimeFactor = LeastPrimeFactor(n)
        PrimeFactorString = PrimeFactor & ", " & PrimeFactorString
        n = Int(n / PrimeFactor)      '//Integer division
    Loop
    
    MsgBox ("Prime Factors = " & PrimeFactorString)
    
End Sub

Function LeastPrimeFactor(n As Integer)

    '//Finds smallest prime factor of a given natural number, n
    '//Input: An integer n >= 2
    '//Output: Smallest prime factor
    
    i = 1
    Do
        i = i + 1
    Loop Until (n Mod i) = 0     '//Integer remainder division
    LeastPrimeFactor = i

End Function
