unit db;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tdbform = class(TForm)
    DNastavenia: TDataSource;
    DVydaj: TDataSource;
    DPrijem: TDataSource;
    DPredajka: TDataSource;
    DSklad: TDataSource;
    DPartner: TDataSource;
    FDTransaction1: TFDTransaction;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    sklad: TFDTable;
    vydaj: TFDTable;
    nastavenie: TFDTable;
    prijem: TFDTable;
    predajka: TFDTable;
    partner: TFDTable;
    dbtemp: TFDMemTable;
    skladid: TFDAutoIncField;
    skladnazov: TMemoField;
    skladcena: TSingleField;
    skladdph: TSingleField;
    skladkus: TIntegerField;
    vydajid: TFDAutoIncField;
    nastavenieID: TFDAutoIncField;
    nastaveniefirma: TMemoField;
    nastavenieadresa: TMemoField;
    nastaveniemesto: TMemoField;
    nastaveniepsc: TIntegerField;
    nastavenieico: TIntegerField;
    nastaveniedic: TIntegerField;
    nastavenieicdph: TMemoField;
    nastaveniedkp: TIntegerField;
    nastavenierok: TIntegerField;
    nastavenieblokcislo: TIntegerField;
    prijemid: TFDAutoIncField;
    predajkaid: TFDAutoIncField;
    predajkapartnerid: TIntegerField;
    predajkanazov: TMemoField;
    predajkacenacelkom: TSingleField;
    predajkadatumcas: TDateTimeField;
    predajkadph: TIntegerField;
    predajkaodoslane: TBooleanField;
    predajkadanovyuradid: TIntegerField;
    predajkaodoslanedatum: TDateTimeField;
    partnerid: TFDAutoIncField;
    partnerfirma: TMemoField;
    partnerico: TIntegerField;
    partnerdic: TIntegerField;
    partnericdph: TMemoField;
    partneradresa: TMemoField;
    partnerpsc: TIntegerField;
    partnerzlava: TSingleField;
    vydajnazov: TMemoField;
    vydajcena: TSingleField;
    vydajdph: TIntegerField;
    vydajkus: TIntegerField;
    predajkavystavene: TIntegerField;
    dbtempid: TIntegerField;
    dbtempnazov: TStringField;
    dbtempkus: TIntegerField;
    dbtempcena: TCurrencyField;
    dbtempcenacelkom: TCurrencyField;
    dbtempdph: TIntegerField;
    dtemp: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dbform: Tdbform;

implementation

{$R *.dfm}

end.
