object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 602
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 877
    Height = 602
    ActivePage = TabSheet1
    Align = alClient
    DoubleBuffered = True
    HotTrack = True
    MultiLine = True
    ParentDoubleBuffered = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Predaj'
      ExplicitLeft = 0
      ExplicitTop = 28
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 305
        Height = 497
        Caption = 'Panel1'
        TabOrder = 0
        object RzButton1: TRzButton
          Left = 179
          Top = 439
          Width = 121
          Height = 49
          Caption = 'Predaj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object RzDBGrid1: TRzDBGrid
          Left = 1
          Top = 1
          Width = 303
          Height = 304
          Align = alTop
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
        object RzButton2: TRzButton
          Left = 16
          Top = 438
          Width = 121
          Height = 49
          Caption = 'Vymaz'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText1: TStaticText
          Left = 16
          Top = 311
          Width = 102
          Height = 33
          Caption = 'Celkom:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText2: TStaticText
          Left = 35
          Top = 349
          Width = 265
          Height = 83
          Caption = '1 000.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -80
          Font.Name = 'DS-Digital'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
      object Panel2: TPanel
        Left = 305
        Top = 0
        Width = 568
        Height = 433
        Caption = 'Panel2'
        TabOrder = 1
        object RzDBGrid2: TRzDBGrid
          Left = 1
          Top = 1
          Width = 566
          Height = 431
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
    end
    object TabSheet4: TTabSheet
      Caption = 'Vydaj'
      ImageIndex = 3
    end
    object TabSheet5: TTabSheet
      Caption = 'Prijem'
      ImageIndex = 4
    end
    object TabSheet2: TTabSheet
      Caption = 'Skladove karty'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'Nastavenie'
      ImageIndex = 2
    end
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 752
    Top = 504
  end
end