program kassa;

uses
  Vcl.Forms,
  ekassa in 'ekassa.pas' {Form1},
  db in 'db.pas' {dbform},
  report in 'report.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdbform, dbform);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
