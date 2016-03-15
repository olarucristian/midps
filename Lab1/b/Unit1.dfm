object Form1: TForm1
  Left = 473
  Top = 243
  Width = 397
  Height = 277
  Caption = 'Form1'
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 272
    Top = 8
    Width = 55
    Height = 16
    Caption = 'Data/Ora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 104
    Top = 72
    Width = 205
    Height = 22
    Caption = 'C++ Builder Cronometru'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 16
    Width = 179
    Height = 16
    Caption = 'Realizarea unui cronometru in '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 64
    Top = 32
    Width = 68
    Height = 16
    Caption = 'C++ Builder'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 96
    Top = 120
    Width = 225
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '00 min 00 sec 00 zec'
  end
  object Button1: TButton
    Left = 8
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Zero'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 288
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Edit2: TEdit
    Left = 232
    Top = 24
    Width = 137
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = 'Edit2'
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 328
    Top = 120
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 336
    Top = 48
  end
end
