unit USelPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, StdCtrls,strUtils, Grids, DBGrids, FMTBcd,
  SqlExpr;

type
  TfrmSelPadrao = class(TForm)
    qPadrao: TSQLQuery;
    qPadraoZ6_FILIAL: TStringField;
    qPadraoZ6_NUMATEN: TStringField;
    qPadraoZ6_DTINCLU: TStringField;
    qPadraoZ6_USINCLU: TStringField;
    qPadraoZ6_STATUS: TStringField;
    qPadraoZ6_CODTEC: TStringField;
    qPadraoZ6_DTATINI: TStringField;
    qPadraoZ6_DTATFIM: TStringField;
    qPadraoZ6_HORAINI: TStringField;
    qPadraoZ6_HORAFIM: TStringField;
    qPadraoZ6_NOMECLI: TStringField;
    qPadraoZ6_CIDADE: TStringField;
    qPadraoZ6_UF: TStringField;
    qPadraoZ6_NUMOS: TStringField;
    qPadraoZ6_HRINCLU: TStringField;
    qPadraoZ6_TIPOAGE: TStringField;
    qPadraoZ6_NOMETEC: TStringField;
    qPadraoZ6_NUMORC: TStringField;
    qPadraoZ6_CODCLI: TStringField;
    qPadraoZ6_LOJA: TStringField;
    qPadraoZ6_TOTHOR: TStringField;
    qPadraoZ6_OBSERV: TStringField;
    qPadraoZ6_DTSTAG: TStringField;
    qPadraoZ6_HRSTAG: TStringField;
    qPadraoZ6_PADR1: TStringField;
    qPadraoZ6_DESCP01: TStringField;
    qPadraoZ6_PADR2: TStringField;
    qPadraoZ6_DESCP02: TStringField;
    qPadraoZ6_PADR3: TStringField;
    qPadraoZ6_DESCP03: TStringField;
    qPadraoZ6_PADR4: TStringField;
    qPadraoZ6_DESCP04: TStringField;
    qPadraoZ6_PADR5: TStringField;
    qPadraoZ6_DESCP05: TStringField;
    qPadraoZ6_PADR6: TStringField;
    qPadraoZ6_DESCP06: TStringField;
    qPadraoZ6_PADR7: TStringField;
    qPadraoZ6_DESCP07: TStringField;
    qPadraoZ6_PADR8: TStringField;
    qPadraoZ6_DESCP08: TStringField;
    qPadraoZ6_PADR9: TStringField;
    qPadraoZ6_DESCP09: TStringField;
    qPadraoZ6_PADR10: TStringField;
    qPadraoZ6_DESCP10: TStringField;
    qPadraoZ6_MOTCANC: TStringField;
    qPadraoZ6_DTCANC: TStringField;
    qPadraoZ6_HRCANC: TStringField;
    qPadraoZ6_USUCANC: TStringField;
  private
    { Private declarations }
  public
    procedure Paineis(data: string; nome:string);
  end;

var
  frmSelPadrao: TfrmSelPadrao;
  painel : array of Tpanel;
  l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l20 : array of TLabel;

implementation

{$R *.dfm}

function arrumar(data:string):string;
var
  ano,mes,dia: word;
  I: Integer;
begin

DecodeDate(StrToDate(data),ano,mes,dia);

result:=varTOStr(dia)+'/'+varTOStr(mes)+'/'+varTOStr(ano);

end;

function verificames(mes : string):string;
begin

if mes = '1' then
  result:= '01'
else
if mes = '2' then
  result:= '02'
else
if mes = '3' then
  result:= '03'
else
if mes = '4' then
  result:= '04'
else
if mes = '5' then
  result:= '05'
else
if mes = '6' then
  result:= '06'
else
if mes = '7' then
  result:= '07'
else
if mes = '8' then
  result:= '08'
else
if mes = '9' then
  result:= '09'
else
result:=mes;
end;

function verificadia(dia : string):string;
begin

if dia = '1' then
  result:='01'
else
if dia = '2' then
  result:='02'
else
if dia = '3' then
  result:='03'
else
if dia = '4' then
  result:='04'
else
if dia = '5' then
  result:='05'
else
if dia = '6' then
  result:='06'
else
if dia = '7' then
  result:='07'
else
if dia = '8' then
  result:='08'
else
if dia = '9' then
  result:='09'
else
result:=dia;
end;

function inverterData(data : string): String;
var dia,mes,ano : word;
begin

DecodeDate(StrToDate(data),ano,mes,dia);
//ano:=RightStr(data,4);
//dia:=MidStr(data,4,2);
//mes:=LeftStr(data,2);

Result:=(varToStr(ano)+verificames(varToStr(mes))+verificadia(varToStr(dia)));


end;

function DataCerta(data : string): String;
var dia,mes,ano : string;
begin

ano:=LeftStr(data,4);
mes:=MidStr(data,5,2);
dia:=rightStr(data,2);

Result:=(dia+'/'+mes+'/'+ano);


end;

procedure TfrmSelPadrao.Paineis(data: string ; nome : string);
var
  no,i : integer;
begin

frmSelPadrao.Caption:= frmSelPadrao.Caption+'  - '+arrumar(data);
nome:=trim(nome);

    qPadrao.SQL.Text:='select * from sz6010 where (sz6010.z6_DTATINI <= '+inverterData(data)+') and (sz6010.z6_DTATFIM >= '+inverterData(data)+') and ((sz6010.Z6_DESCP01 = '''+trim(nome)+''') or (sz6010.Z6_DESCP02 = '''+trim(nome)+''') or (sz6010.Z6_DESCP03 = '''+trim(nome)+''') or (sz6010.Z6_DESCP04 = '''+trim(nome)+''') or (sz6010.Z6_DESCP05 = '''+trim(nome)+''') or (sz6010.Z6_DESCP06 = '''+trim(nome)+''') or (sz6010.Z6_DESCP07 = '''+trim(nome)+''') or (sz6010.Z6_DESCP08 = '''+trim(nome)+''') or (sz6010.Z6_DESCP09 = '''+trim(nome)+''') or (sz6010.Z6_DESCP10 = '''+trim(nome)+'''))';
    qPadrao.ExecSQL;
    qPadrao.open;

    no:= qPadrao.RecordCount;
     //no:=10;
  SetLength(painel,no);
  SetLength(l1,no);
  SetLength(l2,no);
  SetLength(l3,no);
  SetLength(l4,no);
  SetLength(l5,no);
  SetLength(l6,no);
  SetLength(l7,no);
  SetLength(l8,no);
  SetLength(l9,no);
  SetLength(l10,no);
  SetLength(l11,no);
  SetLength(l12,no);
  SetLength(l13,no);
  SetLength(l14,no);
  SetLength(l15,no);
  SetLength(l16,no);
  SetLength(l17,no);
  SetLength(l18,no);
  SetLength(l19,no);
  SetLength(l20,no);

 i:=0;
 qPadrao.First;
  while not (qPadrao.Eof)do
    begin
      painel[i] := TPanel.Create(self);
      painel[i].Align:=alTop;
      painel[i].Parent:=frmSelPadrao;
      painel[i].Color:= clWhite;
      painel[i].Height:=100;

      l3[i] := TLabel.Create(self);
      l3[i].Left:= 10;
      l3[i].top:= 3;
      l3[i].Caption:='Padrão:';
      l3[i].Font.Size:=10;
      l3[i].Font.Style:=[fsBold];
      l3[i].parent:=painel[i];

      l4[i] := TLabel.Create(self);
      l4[i].Left:= 10;
      l4[i].top:= 19;
      l4[i].Caption:= nome;
      l4[i].Font.Size:=9;
      l4[i].Font.Style:=[fsBold];
      l4[i].Font.color:=clred;
      l4[i].parent:=painel[i];

      l19[i] := TLabel.Create(self);
      l19[i].Left:= 10;
      l19[i].top:= 45;
      l19[i].Caption:='Técnico:';
      l19[i].Font.Size:=10;
      l19[i].Font.Style:=[fsBold];
      l19[i].parent:=painel[i];

      l20[i] := TLabel.Create(self);
      l20[i].Left:= 10;
      l20[i].top:= 60;
      l20[i].Caption:= qPadraoZ6_CODTEC.AsString;
      l20[i].Font.Size:=12;
      l20[i].Font.Style:=[fsBold];
      l20[i].Font.color:=clred;
      l20[i].parent:=painel[i];

      l5[i] := TLabel.Create(self);
      l5[i].Left:= 200;
      l5[i].top:= 5;
      l5[i].Caption:='Data Inícial:';
      l5[i].Font.Size:=10;
      l5[i].Font.Style:=[fsBold];
      l5[i].parent:=painel[i];

      l6[i] := TLabel.Create(self);
      l6[i].Left:= 200;
      l6[i].top:= 20;
      l6[i].Caption:= dataCerta(qPadraoZ6_DTATINI.AsString);
      l6[i].Font.Size:=10;
      l6[i].Font.Style:=[fsBold];
      l6[i].Font.color:=clred;
      l6[i].parent:=painel[i];

      l7[i] := TLabel.Create(self);
      l7[i].Left:= 200;
      l7[i].top:= 52;
      l7[i].Caption:='Data Final:';
      l7[i].Font.Size:=10;
      l7[i].Font.Style:=[fsBold];
      l7[i].parent:=painel[i];

      l8[i] := TLabel.Create(self);
      l8[i].Left:= 200;
      l8[i].top:= 67;
      l8[i].Caption:= datacerta(qPadraoZ6_DTATFIM.AsString);
      l8[i].Font.Size:=10;
      l8[i].Font.Style:=[fsBold];
      l8[i].Font.color:=clred;
      l8[i].parent:=painel[i];

      l9[i] := TLabel.Create(self);
      l9[i].Left:= 290;
      l9[i].top:= 5;
      l9[i].Caption:='Horario inícial:';
      l9[i].Font.Size:=10;
      l9[i].Font.Style:=[fsBold];
      l9[i].parent:=painel[i];

      l10[i] := TLabel.Create(self);
      l10[i].Left:= 310;
      l10[i].top:= 20;
      l10[i].Caption:= qPadraoZ6_HORAINI.AsString;
      l10[i].Font.Size:=10;
      l10[i].Font.Style:=[fsBold];
      l10[i].Font.color:=clred;
      l10[i].parent:=painel[i];

      l11[i] := TLabel.Create(self);
      l11[i].Left:= 290;
      l11[i].top:= 52;
      l11[i].Caption:='Horario Final:';
      l11[i].Font.Size:=10;
      l11[i].Font.Style:=[fsBold];
      l11[i].parent:=painel[i];

      l12[i] := TLabel.Create(self);
      l12[i].Left:= 310;
      l12[i].top:= 67;
      l12[i].Caption:= qPadraoZ6_HORAFIM.AsString;
      l12[i].Font.Size:=10;
      l12[i].Font.Style:=[fsBold];
      l12[i].Font.color:=clred;
      l12[i].parent:=painel[i];

      l13[i] := TLabel.Create(self);
      l13[i].Left:= 400;
      l13[i].top:= 5;
      l13[i].Caption:='Cidade/UF:';
      l13[i].Font.Size:=10;
      l13[i].Font.Style:=[fsBold];
      l13[i].parent:=painel[i];

      l14[i] := TLabel.Create(self);
      l14[i].Left:= 400;
      l14[i].top:= 20;
      l14[i].Caption:= trim(qPadraoZ6_CIDADE.AsString)+' - '+trim(qPadraoZ6_UF.AsString);
      l14[i].Font.Size:=10;
      l14[i].Font.Style:=[fsBold];
      l14[i].Font.color:=clred;
      l14[i].parent:=painel[i];

      l15[i] := TLabel.Create(self);
      l15[i].Left:= 400;
      l15[i].top:= 52;
      l15[i].Caption:='Nome do Cliente:';
      l15[i].Font.Size:=10;
      l15[i].Font.Style:=[fsBold];
      l15[i].parent:=painel[i];

      l16[i] := TLabel.Create(self);
      l16[i].Left:= 400;
      l16[i].top:= 67;
      l16[i].Caption:= qPadraoZ6_NOMECLI.AsString;
      l16[i].Font.Size:=10;
      l16[i].Font.Style:=[fsBold];
      l16[i].Font.color:=clred;
      l16[i].parent:=painel[i];

      l17[i] := TLabel.Create(self);
      l17[i].Left:= 5;
      l17[i].top:= 85;
      l17[i].Caption:='Atendente:';
      l17[i].Font.Size:=7;
      l17[i].Font.Style:=[fsBold];
      l17[i].Font.color:=clblue;
      l17[i].parent:=painel[i];

      l18[i] := TLabel.Create(self);
      l18[i].Left:=65;
      l18[i].top:= 83;
      l18[i].Caption:= qPadraoZ6_USINCLU.AsString;
      l18[i].Font.Size:=8;
      l18[i].Font.Style:=[fsBold];
      l18[i].Font.color:=clGreen;
      l18[i].parent:=painel[i];

      qPadrao.Next;
      i:=i+1;
    end;



end;

end.
