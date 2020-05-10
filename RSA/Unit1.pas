unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Math;

type
  TIncodeMes = array of Integer;
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    EncriptBtn: TButton;
    Memo3: TMemo;
    DecriptBtn: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure EncriptBtnClick(Sender: TObject);
    procedure DecriptBtnClick(Sender: TObject);
  private
    FMes: TIncodeMes;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function Bit(Value, n: Integer): Boolean;
asm
  bt eax, edx
  setc al
  and eax, 0FFh
end;

function FastPower(a, b, n: integer): integer;
var
  i: integer;
  ai: extended;
begin
  ai := a;
  for i := Trunc(log2(b)) - 1 downto 0 do
  if Bit(b, i) then
    ai := Round(sqr(ai) * a) mod n
  else ai := Round(sqr(ai)) mod n;
  result := Round(ai);
end;

function Encrypt(s: string; e, n: integer): TIncodeMes;
var i: Integer;
begin
  SetLength(result, length(s));
  for i:= 0 to Length(s) - 1 do
    result[i] := FastPower(ord(s[i + 1]), e, n)
end;

function Decrypt(s: array of integer; e, n: integer): string;
var
  i: Integer;
begin
  SetLength(Result, Length(s));
  for I := 0 to Length(s) - 1 do
    result[i + 1] := chr(FastPower(s[i], e, n))
end;

procedure TForm1.EncriptBtnClick(Sender: TObject);
var
  i, n, e: Integer;
begin
  n:= StrToIntDef(Edit3.Text, 697);
  e:= StrToIntDef(Edit2.Text, 7);
  FMes:= Encrypt(Memo1.Lines.Text, e, n);
  for i:= 0 to High(FMes) do Memo2.Lines.Append(IntToStr(FMes[i]));
end;

procedure TForm1.DecriptBtnClick(Sender: TObject);
var
  n, d: integer;
  s: string;
begin
  d:= StrToIntDef(Edit1.Text, 183);
  n:= StrToIntDef(Edit3.Text, 697);
  s:= Decrypt(FMes, d , n);
  Memo3.Lines.Add(s)
end;

end.
