unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DES, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    KeyEdit: TEdit;
    Label2: TLabel;
    SourceMemo: TMemo;
    EncodeButton: TButton;
    Label3: TLabel;
    ResultMemo: TMemo;
    DecodeButton: TButton;
    SourceBinMemo: TMemo;
    Label4: TLabel;
    ResultBinMemo: TMemo;
    procedure EncodeButtonClick(Sender: TObject);
    procedure DecodeButtonClick(Sender: TObject);
    procedure SourceMemoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure KeyEditChange(Sender: TObject);
    procedure ResultMemoChange(Sender: TObject);
  private
    { Private declarations }
  public
    Data:TBitString;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.EncodeButtonClick(Sender: TObject);
Var
I:Integer;
S:String;
begin
IF ((Length(SourceMemo.Text)mod 8 <> 0) OR (Length(KeyEdit.Text)<>8)) Then
  Begin
  MessageBox(Handle,
  'Количество букв в сообщении должно быть кратоно 8 (перевод строки считается за 2 буквы)'+
  #10#13'Ключ должен состоять из 8 символов',
  Nil,MB_ICONSTOP);
  Exit;
  End;
SetLength(Data,0);
I:=1;
While I<=Length(SourceMemo.Text) Do
  Begin
  S:=Copy(SourceMemo.Text,I,8);
  Data:=ConcatBits([Data,DESEncode(S,KeyEdit.Text)]);
  I:=I+8;
  End;
ResultMemo.Text:=BinToAnsiStr(Data);
end;

procedure TForm1.DecodeButtonClick(Sender: TObject);
var
I:Integer;
begin
IF ((Length(ResultMemo.Text)mod 8 <> 0) OR (Length(KeyEdit.Text)<>8)) Then
  Begin
  MessageBox(Handle,
  'Количество букв в сообщении должно быть кратоно 8 (перевод строки считается за 2 буквы)'+
  #10#13'Ключ должен состоять из 8 символов',
  Nil,MB_ICONSTOP);
  Exit;
  End;
SetLength(Data,0);
I:=1;
While I<=Length(ResultMemo.Text) Do
  Begin
  Data:=ConcatBits([Data,DESDecode(Copy(ResultMemo.Text,I,8),KeyEdit.Text)]);
  I:=I+8;
  End;
SourceMemo.Text:=BinToAnsiStr(Data);
end;

procedure TForm1.SourceMemoChange(Sender: TObject);
begin
IF SourceMemo.Text<>'' Then
  SourceBinMemo.Text:=BinToStr(AnsiStrToBin(SourceMemo.Text))
Else SourceBinMemo.Clear;
Label2.Caption:='Message - ('+IntToStr(Length(SourceMemo.Text))+' characters)';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
SourceMemo.OnChange(Self);
KeyEdit.OnChange(Self);
end;

procedure TForm1.KeyEditChange(Sender: TObject);
begin
Label4.Caption:=IntToStr(Length(KeyEdit.Text))+' characters';
end;

procedure TForm1.ResultMemoChange(Sender: TObject);
begin
IF ResultMemo.Text<>'' Then
  ResultBinMemo.Text:=BinToStr(AnsiStrToBin(ResultMemo.Text))
Else ResultBinMemo.Clear;
Label3.Caption:='Encoded message - ('+IntToStr(Length(ResultMemo.Text))+' characters)';
end;

end.
