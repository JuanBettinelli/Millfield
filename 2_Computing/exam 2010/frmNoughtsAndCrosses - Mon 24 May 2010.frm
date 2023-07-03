VERSION 5.00
Begin VB.Form frmNoughtsAndCrosses 
   Caption         =   "Form1"
   ClientHeight    =   8235
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9750
   LinkTopic       =   "Form1"
   ScaleHeight     =   8235
   ScaleWidth      =   9750
   StartUpPosition =   3  'Windows Default
   Begin VB.Label lblWhoseMove 
      Caption         =   "lblWhoseMove"
      Height          =   615
      Left            =   1560
      TabIndex        =   3
      Top             =   3960
      Width           =   1935
   End
   Begin VB.Label Label3 
      Caption         =   "Label3"
      Height          =   615
      Left            =   1560
      TabIndex        =   2
      Top             =   3120
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   615
      Left            =   1560
      TabIndex        =   1
      Top             =   2280
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   615
      Left            =   1560
      TabIndex        =   0
      Top             =   1440
      Width           =   1695
   End
End
Attribute VB_Name = "frmNoughtsAndCrosses"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Skeleton Program code for the AQA COMP1 Summer 2010 examination
'this code should be used in conjunction with the Preliminary Materials
'written by the AQA COMP1 Programmer Team
'developed in the Microsoft Visual Basic 6 programming environment

Dim Board(1 To 4, 1 To 4) As String
Dim PlayerOneName As String
Dim PlayerTwoName As String
Dim PlayerOneScore As Single
Dim PlayerTwoScore As Single
Dim XCoord As Integer
Dim YCoord As Integer
Dim ValidMove As Boolean
Dim NoOfMoves As Integer
Dim GameHasBeenWon As Boolean
Dim GameHasBeenDrawn As Boolean
Dim CurrentSymbol As String
Dim StartSymbol As String
Dim PlayerOneSymbol As String
Dim PlayerTwoSymbol As String
Dim Answer As String

'****************** variables added by GRC
Dim Choice As String
Dim ValidNameLength As Boolean


Private Sub Form_Load()
   Randomize
   frmNoughtsAndCrosses.Caption = "Pre-release program COMP1 Summer 2010"
   frmNoughtsAndCrosses.Width = 6000
   frmNoughtsAndCrosses.Height = 4500
   Label1.Left = 100
   Label1.Top = 100
   Label1.Width = 5000
   Label1.Height = 2000
   Label1.Font = "Courier New"
   Label1.FontSize = 12
   Label2.Left = 100
   Label2.Top = 2500
   Label2.Width = 4000
   Label2.Height = 250
   Label2.Font = "Courier New"
   Label2.FontSize = 12
   Label3.Left = 100
   Label3.Top = 3000
   Label3.Width = 4000
   Label3.Height = 250
   Label3.Font = "Courier New"
   Label3.FontSize = 12
   
   '************** added by GRC to tell whose go it is next
   lblWhoseMove.Left = 100
   lblWhoseMove.Top = 3500
   lblWhoseMove.Width = 4000
   lblWhoseMove.Height = 250
   lblWhoseMove.Font = "Courier New"
   lblWhoseMove.FontSize = 12
   
   '********************* start of code added in by GRC
   '********************* 1. It asks whether you want to play the computer or another player
   Do
        Do
            'checks if you want to play against the computer...
            Choice = InputBox("Do you want to play against the Computer (C) or another player (P)?")
        Loop Until UCase(Choice) = "C" Or UCase(Choice) = "P"
        
        If UCase(Choice) = "C" Then
            'sets player two to be the computer
            PlayerTwoName = "Computer"
        Else: PlayerTwoName = ""
        End If
        
        '***************** 2. It inputs the 2 players' names so that they are different
        
        'Inputs player one's name
        ValidNameLength = True
        PlayerOneName = InputBox("What is the name of player one? ")
        
        'checks lentgh of player one name is in range 2..15
        If Len(PlayerOneName) < 2 Or Len(PlayerOneName) > 15 Then
            MsgBox ("Player 1 Name Length must be 2..15")
            ValidNameLength = False
        End If
   Loop Until ValidNameLength = True
   
   If PlayerTwoName <> "Computer" Then
        Do
            'inputs player two's name
            ValidNameLength = True
            PlayerTwoName = InputBox("What is the name of player two? ")
            
            'checks length is in range 2..15
            If Len(PlayerTwoName) < 2 Or Len(PlayerTwoName) > 15 Then
                MsgBox ("Player 2 Name Length must be 2..15")
                ValidNameLength = False
            ElseIf PlayerOneName = PlayerTwoName Then
                '....and ensures both names are different
                MsgBox ("Player 2 Name must be different to Player 1 Name")
                ValidNameLength = False
            End If
        Loop Until ValidNameLength = True And PlayerOneName <> PlayerTwoName
    End If
    '********************* end of code added in by GRC
   
   PlayerOneScore = 0
   PlayerTwoScore = 0
   Do  'Choose player one's symbol
      PlayerOneSymbol = InputBox(PlayerOneName & ", what symbol do you wish to use, X or O?")
      If Not (PlayerOneSymbol = "X" Or PlayerOneSymbol = "O") Then
         MsgBox ("Symbol to play must be uppercase X or O")
      End If
   Loop Until PlayerOneSymbol = "X" Or PlayerOneSymbol = "O"
   If PlayerOneSymbol = "X" Then
      PlayerTwoSymbol = "O"
   Else
      PlayerTwoSymbol = "X"
   End If
   StartSymbol = GetWhoStarts()
   Do 'Play a game
      Label2.Caption = ""
      Label3.Caption = ""
      
      '************** added by GRC
      lblWhoseMove.Caption = ""
      
      NoOfMoves = 0
      GameHasBeenDrawn = False
      GameHasBeenWon = False
      Call ClearBoard(Board)
      Call DisplayBoard(Board)
      frmNoughtsAndCrosses.Show
      If StartSymbol = PlayerOneSymbol Then
         MsgBox (PlayerOneName & " starts playing " & StartSymbol)
      Else
         MsgBox (PlayerTwoName & " starts playing " & StartSymbol)
      End If
      CurrentSymbol = StartSymbol
      Do  'Play until a player wins or the game is drawn
         Do  'Get a valid move
         
            '************** start of code added by GRC
            '******* 3. The current player is chosen
            
            'decides who is the current player
            If CurrentSymbol = PlayerOneSymbol Then
                CurrentPlayer = PlayerOneName
            Else
                CurrentPlayer = PlayerTwoName
            End If
            
            'a caption shows whose move it is
            lblWhoseMove.Caption = "It is " & CurrentPlayer & "'s turn playing " & CurrentSymbol
            
            '******* 4. The current player inputs the coordinates for a move
           
            If CurrentPlayer = "Computer" Then
                'the computer makes its move......
                Call GetComputerCoordinates(XCoord, YCoord)
            Else
                'player one makes a move......
                Call GetMoveCoordinates(XCoord, YCoord)
            End If
            
            '************** end of code added by GRC
            
            ValidMove = CheckValidMove(XCoord, YCoord, Board)
            Label2.Caption = "X coordinate selected: " & XCoord
            Label3.Caption = "Y coordinate selected: " & YCoord
            
            '************* code changed by GRC
            '*** 5. The message is changed so that it tells if the position is already taken
            
            If Not ValidMove And CurrentPlayer <> "Computer" Then
                MsgBox ("Coordinates invalid or position already taken, please try again")
            End If
         
         Loop Until ValidMove
         Board(XCoord, YCoord) = CurrentSymbol
         Call DisplayBoard(Board)
         GameHasBeenWon = CheckXOrOHasWon(Board)
         NoOfMoves = NoOfMoves + 1
         If Not GameHasBeenWon Then
            If NoOfMoves = 16 Then 'Check if maximum number of allowed moves has been reached
               GameHasBeenDrawn = True
            Else
               If CurrentSymbol = "X" Then
                  CurrentSymbol = "O"
               Else
                  CurrentSymbol = "X"
               End If
            End If
         End If
      Loop Until GameHasBeenWon Or GameHasBeenDrawn
      If GameHasBeenWon Then 'Update scores and display result
         If PlayerOneSymbol = CurrentSymbol Then
            MsgBox (PlayerOneName & ", congratulations you win!")
            PlayerOneScore = PlayerOneScore + 1
         Else
            MsgBox (PlayerTwoName & ", congratulations you win!")
            PlayerTwoScore = PlayerTwoScore + 1
         End If
      Else
         MsgBox ("A draw this time!")
         PlayerOneScore = PlayerOneScore + 0.5
         PlayerTwoScore = PlayerTwoScore + 0.5
      End If
      MsgBox (PlayerOneName & ", your score is: " & PlayerOneScore & vbCrLf & PlayerTwoName & _
                                                            ", your score is: " & PlayerTwoScore)
      If StartSymbol = PlayerOneSymbol Then
         StartSymbol = PlayerTwoSymbol
      Else
         StartSymbol = PlayerOneSymbol
      End If
      Answer = InputBox("Another game Y/N?")
   Loop Until Answer = "N" Or Answer = "n"
   End
End Sub

Private Sub DisplayBoard(ByRef Board() As String)
   Dim Row As Integer
   Dim Column As Integer
   Dim BoardAsString As String
   BoardAsString = "  | 1 2 3 4"
   BoardAsString = BoardAsString & vbCrLf & "--+--------" & vbCrLf
   For Row = 1 To 4
      BoardAsString = BoardAsString & Row & " | "
      For Column = 1 To 4
         BoardAsString = BoardAsString & Board(Column, Row) & " "
      Next
      BoardAsString = BoardAsString & vbCrLf
   Next
   Label1.Caption = BoardAsString
End Sub

Private Sub ClearBoard(ByRef Board() As String)
   Dim Row As Integer
   Dim Column As Integer
   For Row = 1 To 4
      For Column = 1 To 4
         Board(Column, Row) = " "
      Next
   Next
End Sub

Sub GetMoveCoordinates(ByRef XCoordinate As Integer, ByRef YCoordinate As Integer)

'*** 6. The length of the X and Y coordinates are changed to ensure that they are not too long

'******* string variables added by GRC to ensure that a long number does not crash the program
Dim XCoordStr As String
Dim YCoordStr As String

   XCoordStr = Val(InputBox("Enter X coordinate: "))
   YCoordStr = Val(InputBox("Enter Y coordinate: "))
   
   '************** code added by GRC to change a number/ string to a shorter one so that
   '************** the program will not crash due to the number/ string being too long
   XCoordinate = Left(XCoordStr, 4)
   YCoordinate = Left(YCoordStr, 4)
    
End Sub

Function CheckValidMove(ByVal XCoordinate As Integer, ByVal YCoordinate As Integer, _
ByRef Board() As String)

   Dim ValidMove As Boolean
   
   ValidMove = True
   
   '*************** 7. Checks if the coordinates are valid or not
   
   '************* added by GRC to check for non-numeric inputs: a non-numeric input becomes 0
   If XCoordinate = 0 Or YCoordinate = 0 Then
        ValidMove = False
        'exits if non-numeric inputs found
        Exit Function
   End If
    
   '***************** changed by GRC to check that x and y coordinates are valid
   If XCoordinate < 1 Or XCoordinate > 4 Or YCoordinate < 1 Or YCoordinate > 4 Then
        ValidMove = False
        '******* exits if non-numeric inputs found
        '******* if the co-ordinates are too large the program will crash!
        Exit Function
   End If
   
   '*************** 8. Checks if the position has already been taken
    
   '************ added by GRC to make sure that a symbol is only allowed in a blank position
   If Board(XCoordinate, YCoordinate) <> " " Then ValidMove = False
        
   CheckValidMove = ValidMove
   
End Function

Function CheckXOrOHasWon(ByRef Board() As String) As Boolean
   Dim Row As Integer
   Dim Column As Integer
   Dim XOrOHasWon As Boolean
   XOrOHasWon = False
   For Column = 1 To 4
      If (Board(Column, 1) = Board(Column, 2) And Board(Column, 2) = Board(Column, 3) And _
                                        Board(Column, 2) <> " ") _
         Or (Board(Column, 2) = Board(Column, 3) And Board(Column, 3) = Board(Column, 4) And _
                                        Board(Column, 3) <> " ") Then
            XOrOHasWon = True
      End If
   Next
   
   For Row = 1 To 4
      If (Board(1, Row) = Board(2, Row) And Board(2, Row) = Board(3, Row) And _
                                Board(2, Row) <> " ") _
         Or (Board(2, Row) = Board(3, Row) And Board(3, Row) = Board(4, Row) And _
                                Board(3, Row) <> " ") Then
            XOrOHasWon = True
      End If
   Next
   
   '**************** 9. Checks for wins on the diagonals
   
   '**************** code added by GRC to show a win on the main diagonal
   If (Board(1, 1) = Board(2, 2) And Board(2, 2) = Board(3, 3) And _
                                        Board(2, 2) <> " ") _
      Or (Board(2, 2) = Board(3, 3) And Board(3, 3) = Board(4, 4) And _
                                        Board(3, 3) <> " ") Then
         XOrOHasWon = True
   End If
                                        
   '**************** code added by GRC to show a win on the other diagonal
   If (Board(1, 4) = Board(2, 3) And Board(2, 3) = Board(3, 2) And _
                                        Board(2, 3) <> " ") _
      Or (Board(2, 3) = Board(3, 2) And Board(3, 2) = Board(4, 1) And _
                                        Board(3, 2) <> " ") Then
         XOrOHasWon = True
   End If
                                                        
   CheckXOrOHasWon = XOrOHasWon
End Function

Function GetWhoStarts() As String
   Dim RandomNo As Integer
   Dim WhoStarts As String
   
   'generates a random number between 1 and 100.999999....
   'this random number will either be even or odd
   RandomNo = Rnd() * 100 + 1
   
   'if the random number is even then X starts
   If RandomNo Mod 2 = 0 Then
      WhoStarts = "X"
   Else 'otherwise O starts
      WhoStarts = "O"
   End If
   
   'GetWhoStarts will have the value "X" or "O"
   GetWhoStarts = WhoStarts
   
End Function

'*************** added by GRC
Sub GetComputerCoordinates(ByRef XCoordinate As Integer, ByRef YCoordinate As Integer)
   
   '**************** 10. Chooses the computer's next move randomly
    'chooses Computer's move randomly
    XCoordinate = (Rnd() * 100) Mod 4 + 1
    YCoordinate = (Rnd() * 100) Mod 4 + 1
    
End Sub




