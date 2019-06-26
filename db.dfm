object dbform: Tdbform
  Left = 0
  Top = 0
  Caption = 'db'
  ClientHeight = 194
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DNastavenia: TDataSource
    DataSet = nastavenie
    Left = 335
    Top = 16
  end
  object DVydaj: TDataSource
    DataSet = vydaj
    Left = 288
    Top = 16
  end
  object DPrijem: TDataSource
    DataSet = prijem
    Left = 407
    Top = 32
  end
  object DPredajka: TDataSource
    DataSet = predajka
    Left = 455
    Top = 32
  end
  object DSklad: TDataSource
    DataSet = sklad
    Left = 232
    Top = 16
  end
  object DPartner: TDataSource
    DataSet = partner
    Left = 512
    Top = 40
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 128
    Top = 32
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=kassa'
      'User_Name=root'
      'Password=0312gjoe'
      'Server=localhost'
      'DriverID=MySQL')
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    Connected = True
    LoginPrompt = False
    Transaction = FDTransaction1
    Left = 40
    Top = 24
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 72
    Top = 128
  end
  object sklad: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'kassa.sklad'
    TableName = 'kassa.sklad'
    Left = 184
    Top = 96
    object skladid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object skladnazov: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'nazov'
      Origin = 'nazov'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object skladcena: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'cena'
      Origin = 'cena'
    end
    object skladdph: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'dph'
      Origin = 'dph'
    end
    object skladkus: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'kus'
      Origin = 'kus'
    end
  end
  object vydaj: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'kassa.vydaj'
    TableName = 'kassa.vydaj'
    Left = 240
    Top = 104
    object vydajid: TFDAutoIncField
      DisplayWidth = 2
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object vydajnazov: TMemoField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'nazov'
      Origin = 'nazov'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object vydajkus: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 7
      FieldName = 'kus'
      Origin = 'kus'
    end
    object vydajcena: TSingleField
      AutoGenerateValue = arDefault
      DisplayWidth = 7
      FieldName = 'cena'
      Origin = 'cena'
    end
    object vydajdph: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 4
      FieldName = 'dph'
      Origin = 'dph'
    end
  end
  object nastavenie: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'kassa.nastavenie'
    TableName = 'kassa.nastavenie'
    Left = 296
    Top = 112
    object nastavenieID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ReadOnly = True
    end
    object nastaveniefirma: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'firma'
      Origin = 'firma'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object nastavenieadresa: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'adresa'
      Origin = 'adresa'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object nastaveniemesto: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'mesto'
      Origin = 'mesto'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object nastaveniepsc: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'psc'
      Origin = 'psc'
    end
    object nastavenieico: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ico'
      Origin = 'ico'
    end
    object nastaveniedic: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'dic'
      Origin = 'dic'
    end
    object nastavenieicdph: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'icdph'
      Origin = 'icdph'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object nastaveniedkp: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'dkp'
      Origin = 'dkp'
    end
    object nastavenierok: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'rok'
      Origin = 'rok'
    end
    object nastavenieblokcislo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'blok-cislo'
      Origin = '`blok-cislo`'
    end
  end
  object prijem: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'kassa.prijem'
    TableName = 'kassa.prijem'
    Left = 352
    Top = 112
    object prijemid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object predajka: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'kassa.predajka'
    TableName = 'kassa.predajka'
    Left = 416
    Top = 120
    object predajkaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object predajkapartnerid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'partnerid'
      Origin = 'partnerid'
    end
    object predajkanazov: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'nazov'
      Origin = 'nazov'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object predajkacenacelkom: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'cenacelkom'
      Origin = 'cenacelkom'
    end
    object predajkadatumcas: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'datumcas'
      Origin = 'datumcas'
    end
    object predajkadph: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'dph'
      Origin = 'dph'
    end
    object predajkaodoslane: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'odoslane'
      Origin = 'odoslane'
    end
    object predajkadanovyuradid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'danovyuradid'
      Origin = 'danovyuradid'
    end
    object predajkaodoslanedatum: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'odoslanedatum'
      Origin = 'odoslanedatum'
    end
    object predajkavystavene: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'vystavene'
      Origin = 'vystavene'
    end
  end
  object partner: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'kassa.partner'
    TableName = 'kassa.partner'
    Left = 504
    Top = 120
    object partnerid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object partnerfirma: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'firma'
      Origin = 'firma'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object partnerico: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ico'
      Origin = 'ico'
    end
    object partnerdic: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'dic'
      Origin = 'dic'
    end
    object partnericdph: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'icdph'
      Origin = 'icdph'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object partneradresa: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'adresa'
      Origin = 'adresa'
      BlobType = ftMemo
      DisplayValue = dvFull
    end
    object partnerpsc: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'psc'
      Origin = 'psc'
    end
    object partnerzlava: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'zlava'
      Origin = 'zlava'
    end
  end
  object dbtemp: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 624
    Top = 72
    object dbtempid: TIntegerField
      FieldName = 'id'
    end
    object dbtempnazov: TStringField
      FieldName = 'nazov'
      Size = 50
    end
    object dbtempkus: TIntegerField
      FieldName = 'kus'
    end
    object dbtempcena: TCurrencyField
      FieldName = 'cena'
    end
    object dbtempcenacelkom: TCurrencyField
      FieldName = 'cenacelkom'
    end
    object dbtempdph: TIntegerField
      FieldName = 'dph'
    end
  end
  object dtemp: TDataSource
    DataSet = dbtemp
    Left = 624
    Top = 24
  end
end
