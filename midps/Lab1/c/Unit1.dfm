object Form1: TForm1
  Left = 477
  Top = 200
  Width = 432
  Height = 356
  Caption = 'MIDPS'
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 128
    Top = 96
    Width = 257
    Height = 177
    OnPaint = PaintBox1Paint
  end
  object Label1: TLabel
    Left = 288
    Top = 16
    Width = 90
    Height = 13
    Caption = 'Data si ora curenta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 56
    Width = 341
    Height = 24
    Caption = 'Resurse  grafice  al mediului C++ Builder'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 8
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Stop'
    Enabled = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 272
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Panel1: TPanel
    Left = 88
    Top = 144
    Width = 33
    Height = 129
    TabOrder = 4
  end
  object Panel2: TPanel
    Left = 88
    Top = 96
    Width = 33
    Height = 97
    Color = clActiveBorder
    TabOrder = 5
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 376
    Top = 280
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer2Timer
    Left = 344
    Top = 280
  end
end
