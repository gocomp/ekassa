object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 764
  ClientWidth = 1165
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    1165
    764)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1165
    Height = 764
    ActivePage = TabSheet1
    Align = alClient
    DoubleBuffered = True
    HotTrack = True
    MultiLine = True
    ParentDoubleBuffered = False
    TabOrder = 0
    ExplicitHeight = 761
    object TabSheet1: TTabSheet
      Caption = 'Predaj'
      ExplicitHeight = 733
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 385
        Height = 603
        Align = alLeft
        Caption = 'Panel1'
        TabOrder = 0
        ExplicitHeight = 600
        DesignSize = (
          385
          603)
        object predajb: TRzButton
          AlignWithMargins = True
          Left = 208
          Top = 538
          Width = 164
          Height = 49
          Anchors = [akRight, akBottom]
          Caption = 'Predaj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ExplicitTop = 535
        end
        object RzDBGrid1: TRzDBGrid
          Left = 1
          Top = 1
          Width = 383
          Height = 404
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = dbform.DVydaj
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          FrameHotTrack = True
          FrameVisible = True
          AltRowShading = True
          Columns = <
            item
              Expanded = False
              FieldName = 'nazov'
              Title.Caption = 'Tovar'
              Width = 139
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kus'
              Title.Caption = 'Kus'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cena'
              Title.Caption = 'Cena'
              Width = 94
              Visible = True
            end>
        end
        object vymaz: TRzButton
          Left = 16
          Top = 539
          Width = 161
          Height = 49
          Anchors = [akRight, akBottom]
          Caption = 'Vymaz'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ExplicitTop = 536
        end
        object StaticText1: TStaticText
          Left = 16
          Top = 411
          Width = 102
          Height = 33
          Anchors = [akLeft, akRight, akBottom]
          Caption = 'Celkom:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          ExplicitTop = 408
        end
        object StaticText2: TStaticText
          Left = 71
          Top = 442
          Width = 261
          Height = 83
          Anchors = [akLeft, akRight, akBottom]
          Caption = '1 000.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -80
          Font.Name = 'DS-Digital'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          ExplicitTop = 439
        end
      end
      object Panel2: TPanel
        Left = 385
        Top = 0
        Width = 772
        Height = 603
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 1
        ExplicitHeight = 600
        object RzDBGrid2: TRzDBGrid
          Left = 1
          Top = 1
          Width = 770
          Height = 601
          Align = alClient
          DataSource = dbform.DSklad
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          AltRowShading = True
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 603
        Width = 1157
        Height = 133
        Align = alBottom
        Caption = 'Panel3'
        TabOrder = 2
        ExplicitTop = 600
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Vydaj'
      ImageIndex = 3
      ExplicitHeight = 733
    end
    object TabSheet5: TTabSheet
      Caption = 'Prijem'
      ImageIndex = 4
      ExplicitHeight = 733
    end
    object TabSheet2: TTabSheet
      Caption = 'Skladove karty'
      ImageIndex = 1
      ExplicitHeight = 733
    end
    object TabSheet3: TTabSheet
      Caption = 'Nastavenie'
      ImageIndex = 2
      ExplicitHeight = 733
    end
  end
  object predaj: TPanel
    Left = 432
    Top = 147
    Width = 369
    Height = 353
    Anchors = [akLeft]
    TabOrder = 1
    DesignSize = (
      369
      353)
    object vystavit: TRzButton
      Left = 192
      Top = 264
      Width = 161
      Height = 81
      Default = True
      Caption = 'Vystavit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object storno: TRzButton
      Left = 38
      Top = 279
      Width = 131
      Height = 57
      Caption = 'Storno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText3: TStaticText
      Left = 30
      Top = 24
      Width = 102
      Height = 33
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Celkom:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object StaticText4: TStaticText
      Left = 30
      Top = 104
      Width = 89
      Height = 33
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Platba:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object StaticText5: TStaticText
      Left = 30
      Top = 192
      Width = 80
      Height = 33
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Vr'#225'tit:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 133
      Top = 104
      Width = 220
      Height = 41
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Text = '0.00'
    end
    object vratit: TStaticText
      Left = 214
      Top = 168
      Width = 147
      Height = 81
      Anchors = [akLeft, akRight, akBottom]
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object celkomp: TStaticText
      Left = 230
      Top = 8
      Width = 123
      Height = 68
      Anchors = [akLeft, akRight, akBottom]
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -53
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 752
    Top = 504
  end
end
