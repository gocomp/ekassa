unit ekassa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, JvComponentBase, JvEnterTab, RzButton,
  Vcl.StdCtrls, RzDBGrid, Vcl.Mask, Vcl.DBCtrls, RzEdit;

type
  TForm1 = class(TForm)
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
    Celkomcena: TStaticText;
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
    vyuloz: TCheckBox;
    vynazov: TRzEdit;
    vcena: TMaskEdit;
    StaticText6: TStaticText;
    procedure RzButton1Click(Sender: TObject);
    procedure vkusChange(Sender: TObject);
    procedure RzDBGrid2DblClick(Sender: TObject);
    procedure vkusKeyPress(Sender: TObject; var Key: Char);
    procedure RzButton3Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure RzDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure vcenaChange(Sender: TObject);
    procedure vymazClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure vynazovKeyPress(Sender: TObject; var Key: Char);
    procedure vcenaKeyPress(Sender: TObject; var Key: Char);
  private
     ccena :double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

uses db;

procedure TForm1.RzButton2Click(Sender: TObject);
begin
dbform.dbtemp.append;
dbform.dbtempnazov.Value:=vynazov.Text;
dbform.dbtempkus.Value:=strtoint(vkus.Text);
dbform.dbtempcena.Value:=strtofloat(vcena.Text);
dbform.dbtempcenacelkom.Value:=strtofloat(vcena.Text)*strtoint(vkus.Text);
ccena:=ccena+dbform.dbtempcenacelkom.Value;
//dbform.dbtempdph.Value:=dbform.skladdph.Value;

dbform.dbtemp.Post;
if vyuloz.Checked then
begin
dbform.sklad.Append;
dbform.skladnazov.Value:=vynazov.Text;
dbform.skladcena.Value:=strtofloat(vcena.Text);
dbform.skladdph.Value:=20;
dbform.sklad.Post;
dbform.sklad.Refresh;

end;

celkomcena.Caption:=floattostrf(ccena, ffCurrency, 8, 4);
vyber.Visible:=false;
RzDBGrid2.SetFocus;

end;

procedure TForm1.RzButton3Click(Sender: TObject);
begin
vyber.Visible:=false;
RzDBGrid2.SetFocus;
end;

procedure TForm1.RzDBGrid2DblClick(Sender: TObject);
begin

vynazov.Text:=dbform.skladnazov.Value;
vkus.Text:='1';
vcena.Text:=floattostrf(dbform.skladcena.value, ffNumber, 8, 4);
pcelkom.Caption:=floattostrf(dbform.skladcena.value*1, ffCurrency, 8, 4);
vyber.Visible:=true;
vkus.SetFocus;
end;

procedure TForm1.RzDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then
      RzDBGrid2DblClick(sender);

end;

procedure TForm1.vcenaChange(Sender: TObject);
begin
if vyber.Visible then

pcelkom.Caption:=floattostrf(strtofloat(vcena.Text)*strtoint(vkus.Text), ffCurrency, 8, 4);
end;

procedure TForm1.vcenaKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
RzButton2.Click;

if Key=#27 then
RzButton3.Click;
end;

procedure TForm1.vkusChange(Sender: TObject);
begin
if vyber.Visible then
pcelkom.Caption:=floattostrf(strtofloat(vcena.Text)*strtoint(vkus.Text), ffCurrency, 8, 4);
//floattostr(dbform.skladcena.value*strtoint(vkus.Text));
end;

procedure TForm1.vkusKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
RzButton2.Click;

if Key=#27 then
RzButton3.Click;

end;

procedure TForm1.vymazClick(Sender: TObject);
begin
dbform.dbtemp.Delete;
end;

procedure TForm1.vynazovKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then
    vkus.SetFocus;

if Key=#27 then
RzButton3.Click;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
ccena:=0;
end;

procedure TForm1.RzButton1Click(Sender: TObject);
begin
dbform.FDConnection1.Close;
close;
end;

end.
