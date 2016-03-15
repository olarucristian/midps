object Form1: TForm1
  Left = 520
  Top = 143
  Width = 496
  Height = 300
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
    Left = 104
    Top = 40
    Width = 292
    Height = 24
    Caption = 'Incrementare decrementare contor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 264
    Top = 120
    Width = 55
    Height = 23
    Caption = 'Label2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowFrame
    Font.Height = -20
    Font.Name = 'Baskerville Old Face'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Button1: TButton
    Left = 64
    Top = 96
    Width = 57
    Height = 25
    Caption = 'Up'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 64
    Top = 152
    Width = 57
    Height = 25
    Caption = 'Down'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 384
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Exit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 144
    Top = 120
    Width = 97
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = 'Edit1'
  end
end
