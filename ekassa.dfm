object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Lite-Kassa'
  ClientHeight = 764
  ClientWidth = 1165
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
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
    object TabSheet1: TTabSheet
      Caption = 'Predaj'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 385
        Height = 603
        Align = alLeft
        Caption = 'Panel1'
        TabOrder = 0
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
          OnClick = predajbClick
        end
        object RzDBGrid1: TRzDBGrid
          Left = 1
          Top = 1
          Width = 383
          Height = 404
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = dbform.dtemp
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
              FieldName = 'id'
              Width = 23
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nazov'
              Width = 146
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kus'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cena'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cenacelkom'
              Width = 86
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
          OnClick = vymazClick
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
        end
        object Celkomcena: TStaticText
          Left = 79
          Top = 449
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
        object RzDBGrid2: TRzDBGrid
          Left = 1
          Top = 1
          Width = 770
          Height = 601
          Align = alClient
          DataSource = dbform.DSklad
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = RzDBGrid2DblClick
          OnKeyPress = RzDBGrid2KeyPress
          AltRowShading = True
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 603
        Width = 1157
        Height = 133
        Align = alBottom
        TabOrder = 2
        DesignSize = (
          1157
          133)
        object RzButton1: TRzButton
          Left = 1016
          Top = 72
          Width = 131
          Height = 53
          Anchors = [akRight, akBottom]
          Caption = 'Ukoncit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = RzButton1Click
        end
        object Memo1: TMemo
          Left = 16
          Top = 16
          Width = 577
          Height = 89
          Lines.Strings = (
            'Memo1')
          TabOrder = 1
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
  object predaj: TPanel
    Left = 504
    Top = 181
    Width = 369
    Height = 353
    Anchors = [akLeft]
    TabOrder = 1
    Visible = False
    DesignSize = (
      369
      353)
    object vystavit: TRzButton
      Left = 192
      Top = 263
      Width = 161
      Height = 81
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
  object vyber: TPanel
    Left = 512
    Top = 186
    Width = 353
    Height = 279
    TabOrder = 2
    Visible = False
    DesignSize = (
      353
      279)
    object RzButton2: TRzButton
      Left = 198
      Top = 198
      Width = 145
      Height = 72
      Caption = 'Dalej'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = RzButton2Click
    end
    object RzButton3: TRzButton
      Left = 15
      Top = 215
      Width = 115
      Height = 50
      Caption = 'Spat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = RzButton3Click
    end
    object StaticText7: TStaticText
      Left = 196
      Top = 49
      Width = 57
      Height = 33
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Kus:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object vkus: TMaskEdit
      Left = 259
      Top = 51
      Width = 85
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = ''
      OnChange = vkusChange
      OnKeyPress = vkusKeyPress
    end
    object ptcelkom: TStaticText
      Left = 118
      Top = 160
      Width = 82
      Height = 27
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Celkom:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object pcelkom: TStaticText
      Left = 206
      Top = 143
      Width = 138
      Height = 44
      Alignment = taRightJustify
      Anchors = [akLeft, akRight, akBottom]
      AutoSize = False
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object vyuloz: TCheckBox
      Left = 15
      Top = 45
      Width = 97
      Height = 17
      TabStop = False
      Caption = 'Ulozit produkt'
      TabOrder = 4
    end
    object vynazov: TRzEdit
      Left = 8
      Top = 8
      Width = 337
      Height = 31
      Text = ''
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = vynazovKeyPress
    end
    object vcena: TMaskEdit
      Left = 259
      Top = 99
      Width = 85
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = ''
      OnChange = vcenaChange
      OnKeyPress = vcenaKeyPress
    end
    object StaticText6: TStaticText
      Left = 181
      Top = 99
      Width = 72
      Height = 33
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Cena:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Name = 'state'
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 420
    Top = 232
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 436
    Top = 176
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://localhost:3010/api/v1/connectivity/status'
    Params = <>
    Left = 436
    Top = 120
  end
end
