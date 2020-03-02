object Form1: TForm1
  Left = 201
  Top = 380
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Fraktal Explorer'
  ClientHeight = 502
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 502
    Height = 502
  end
  object Label1: TLabel
    Left = 512
    Top = 96
    Width = 17
    Height = 13
    Caption = 'Rot'
  end
  object Label2: TLabel
    Left = 512
    Top = 187
    Width = 72
    Height = 20
    Caption = 'Iteration ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 568
    Top = 208
    Width = 70
    Height = 13
    Caption = 'max 10000000'
  end
  object Label4: TLabel
    Left = 512
    Top = 208
    Width = 34
    Height = 13
    Caption = 'min -17'
  end
  object Label5: TLabel
    Left = 512
    Top = 128
    Width = 23
    Height = 13
    Caption = 'Gr'#252'n'
  end
  object Label6: TLabel
    Left = 512
    Top = 160
    Width = 21
    Height = 13
    Caption = 'Blau'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Gauge1: TGauge
    Left = 512
    Top = 368
    Width = 129
    Height = 25
    Progress = 0
  end
  object Label7: TLabel
    Left = 512
    Top = 227
    Width = 39
    Height = 13
    Caption = 'Zoom = '
  end
  object Label8: TLabel
    Left = 512
    Top = 266
    Width = 34
    Height = 13
    Caption = 'Real = '
  end
  object Label9: TLabel
    Left = 512
    Top = 290
    Width = 49
    Height = 13
    Caption = 'Imagin'#228'r ='
  end
  object Label10: TLabel
    Left = 512
    Top = 248
    Width = 79
    Height = 13
    Caption = 'Ver'#228'ndern von a'
  end
  object BitBtn1: TBitBtn
    Left = 512
    Top = 469
    Width = 129
    Height = 25
    TabOrder = 0
    Kind = bkClose
  end
  object Button1: TButton
    Left = 512
    Top = 408
    Width = 129
    Height = 25
    Caption = 'Mandelbrot-Menge'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 512
    Top = 440
    Width = 129
    Height = 25
    Caption = 'Wei'#223'bild'
    TabOrder = 2
    OnClick = Button2Click
  end
  object RadioGroup1: TRadioGroup
    Left = 512
    Top = 8
    Width = 129
    Height = 73
    Caption = 'Fraktal'
    ItemIndex = 0
    Items.Strings = (
      'Mandelbrot-Menge'
      'Julia-Menge')
    TabOrder = 3
    OnClick = RadioGroup1Click
  end
  object Edit1: TEdit
    Left = 584
    Top = 187
    Width = 57
    Height = 21
    MaxLength = 8
    TabOrder = 4
    Text = '10'
  end
  object Edit2: TEdit
    Left = 536
    Top = 88
    Width = 73
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 9
    ParentFont = False
    TabOrder = 5
    Text = '1'
  end
  object Edit3: TEdit
    Left = 536
    Top = 120
    Width = 73
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 9
    ParentFont = False
    TabOrder = 6
    Text = '335962222'
  end
  object Edit4: TEdit
    Left = 536
    Top = 152
    Width = 73
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 9
    ParentFont = False
    TabOrder = 7
    Text = '1'
  end
  object BitBtn2: TBitBtn
    Left = 616
    Top = 88
    Width = 26
    Height = 26
    TabOrder = 8
    WordWrap = True
    OnClick = BitBtn2Click
    Kind = bkRetry
  end
  object BitBtn3: TBitBtn
    Left = 616
    Top = 120
    Width = 26
    Height = 26
    TabOrder = 9
    WordWrap = True
    OnClick = BitBtn3Click
    Kind = bkRetry
  end
  object BitBtn4: TBitBtn
    Left = 616
    Top = 152
    Width = 26
    Height = 26
    TabOrder = 10
    WordWrap = True
    OnClick = BitBtn4Click
    Kind = bkRetry
  end
  object Edit5: TEdit
    Left = 552
    Top = 224
    Width = 89
    Height = 21
    TabOrder = 11
    Text = '120'
    OnExit = Edit5Exit
  end
  object Edit6: TEdit
    Left = 568
    Top = 264
    Width = 73
    Height = 21
    TabOrder = 12
    Text = '0'
    OnExit = Edit6Exit
  end
  object Edit7: TEdit
    Left = 568
    Top = 288
    Width = 73
    Height = 21
    TabOrder = 13
    Text = '0'
    OnExit = Edit7Exit
  end
end
