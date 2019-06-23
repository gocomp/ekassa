unit ekassa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, JvComponentBase, JvEnterTab, RzButton,
  Vcl.StdCtrls, RzDBGrid, Vcl.Mask, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    JvEnterAsTab1: TJvEnterAsTab;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    predajb: TRzButton;
    RzDBGrid1: TRzDBGrid;
    vymaz: TRzButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    RzDBGrid2: TRzDBGrid;
    Panel3: TPanel;
    predaj: TPanel;
    vystavit: TRzButton;
    storno: TRzButton;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    Edit1: TEdit;
    vratit: TStaticText;
    celkomp: TStaticText;
    RzButton1: TRzButton;
    vyber: TPanel;
    RzButton2: TRzButton;
    RzButton3: TRzButton;
    StaticText7: TStaticText;
    vkus: TMaskEdit;
    ptcelkom: TStaticText;
    pcelkom: TStaticText;
    vynazov: TDBText;
    procedure RzButton1Click(Sender: TObject);
    procedure vkusChange(Sender: TObject);
    procedure RzDBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses db;

procedure TForm1.RzDBGrid2DblClick(Sender: TObject);
begin
vyber.Visible:=true;
vkus.SetFocus;
end;

procedure TForm1.vkusChange(Sender: TObject);
begin
pcelkom.Caption:= floattostr(dbform.skladcena.value*strtoint(vkus.Text));
end;

procedure TForm1.RzButton1Click(Sender: TObject);
begin
dbform.FDConnection1.Close;
close;
end;

end.
