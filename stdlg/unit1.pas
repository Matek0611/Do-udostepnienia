unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics,
  Dialogs, StdCtrls, ExtCtrls, Buttons, SynTaskDialog;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  Task: TTaskDialog;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Task.Inst := 'Saving application settings';
Task.Content := 'This is the content';
Task.Radios := 'Store settings in registry'#10'Store settings in XML file';
Task.Verify := 'Do no ask for this setting next time'; Task.VerifyChecked := true;
Task.Footer := 'XML file is perhaps a better choice';
Task.Execute([],0,[],tiQuestion,tfiInformation,200);
end;

end.

