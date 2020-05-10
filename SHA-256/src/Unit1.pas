unit Unit1;

interface

uses
  Windows, Messages, DCPsha256, SysUtils, Variants, Classes,
  Graphics, Controls, Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function getsha256_file(S: String): String;
var
    Hash: TDCP_sha256;
    Digest: array[0..31] of byte;
    Source: TFileStream;
    i: integer;
    str1: string;
  begin
    if not FileExists(S) then
      Exit
    else
    Source:= nil;
    try
      Source:= TFileStream.Create(S,fmOpenRead);
    except
      MessageDlg('Unable to open file',mtError,[mbOK],0);
    end;

    if Source <> nil then
    begin
      Hash:= TDCP_sha256.Create(nil);
      Hash.Init;
      Hash.UpdateStream(Source, Source.Size);
      Hash.Final(Digest);
      Source.Free;
      str1:= '';
      for i:= 0 to 31 do
        str1:= str1 + IntToHex(Digest[i],2);
      form1.Edit2.Text:= LowerCase(str1);
      //form1.Edit2.Text:=UpperCase(str1);

    end;
  end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  getsha256_file(Edit1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    if OpenDialog1.Execute then
    begin
    Edit1.Text:=OpenDialog1.Filename;
    end;
end;

end.
