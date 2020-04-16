unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    SpinEdit1: TSpinEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function widerightstr(s: string; num: integer): string;
var
  s1, s2: widestring;
  len, i: integer;

begin
  if num < 1 then
  begin
    result := '';
    exit;
  end;

  s1 := s;
  len := length(s1);

  if num >= len then
  begin
    result := s;
    exit;
  end;
  setlength(s2, num);
  for i := 1 to num do
    s2[i] := s1[len - num + i];
  result := s2;

end;

function wideleftstr(s: string; num: integer): string;
var
  s1, s2: widestring;
  len, i: integer;

begin
  if num < 1 then
  begin
    result := '';
    exit;
  end;

  s1 := s;
  len := length(s1);

  if num >= len then
  begin
    result := s;
    exit;
  end;
  setlength(s2, num);

  for i := 1 to num do
    s2[i] := s1[i];
  result := s2;

end;

function widedropleftstr(s: string; num: integer): string;
var
  s1, s2: widestring;
  len, i: integer;

begin
  if num < 1 then
  begin
    result := s;
    exit;
  end;

  s1 := s;
  len := length(s1);

  if num >= len then
  begin
    result := '';
    exit;
  end;
  setlength(s2, len - num);
  for i := 1 to len - num do
    s2[i] := s1[num + i];
  result := s2;

end;

function wideDropRightstr(s: string; num: integer): string;
var
  s1, s2: widestring;
  len, i: integer;

begin
  if num < 1 then
  begin
    result := s;
    exit;
  end;

  s1 := s;
  len := length(s1);

  if num >= len then
  begin
    result := '';
    exit;
  end;
  setlength(s2, len - num);
  for i := 1 to len - num do
    s2[i] := s1[i];
  result := s2;

end;

function WideLength(s:string):integer;
var
  s1:WideString;
begin
  s1:=s;
  result:=length(s1);
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
  edit2.Text := widerightstr(Edit1.Text, spinedit1.Value);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit2.Text := wideDropLeftStr(Edit1.Text, spinedit1.Value);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  edit2.Text:=WideLeftStr(Edit1.Text,spinEdit1.Value);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  edit2.Text:=WideDropRightStr(Edit1.Text,SpinEdit1.Value);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  label1.Caption:=inttostr(WideLength(Edit1.Text));
end;

end.

