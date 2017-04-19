VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Form1"
   ClientHeight    =   5850
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8730
   LinkTopic       =   "Form1"
   ScaleHeight     =   5850
   ScaleWidth      =   8730
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   50
      Left            =   3960
      Top             =   2040
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   50
      Left            =   3120
      Top             =   2040
   End
   Begin VB.CommandButton Command2 
      Caption         =   "DETENER"
      Height          =   855
      Left            =   2400
      TabIndex        =   1
      Top             =   2640
      Width           =   2655
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0000C000&
      Caption         =   "INICIAR"
      Height          =   855
      Left            =   2400
      TabIndex        =   0
      Top             =   1080
      Width           =   2775
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFF00&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FF0000&
      Height          =   975
      Left            =   120
      Shape           =   3  'Circle
      Top             =   120
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()
    If Shape1.Top <= 4800 Then
        Shape1.Top = Shape1.Top + 100
    Else
        Shape1.Left = Shape1.Left + 100
    End If
    
    If Shape1.Left >= 7680 Then
        Timer1.Enabled = False
        Timer2.Enabled = True
    End If
End Sub

Private Sub Timer2_Timer()
    If Shape1.Top >= 120 Then
        Shape1.Top = Shape1.Top - 100
    Else
        Shape1.Left = Shape1.Left - 100
    End If
    
    If Shape1.Left <= 120 Then
        Timer2.Enabled = False
        Timer1.Enabled = True
    End If
End Sub
