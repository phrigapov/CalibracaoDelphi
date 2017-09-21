unit UTecnicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg,strUtils,
  FMTBcd, SqlExpr, Provider, DBClient;

type
  TfrmTecnico = class(TForm)
    aprovado: TImage;
    negociacao: TImage;
    qTecnicos: TSQLQuery;
    qTecnicosABB_CODTEC: TStringField;
    qTecnicosABB_NUMOS: TStringField;
    qTecnicosABB_DTINI: TStringField;
    qTecnicosABB_HRINI: TStringField;
    qTecnicosABB_DTFIM: TStringField;
    qTecnicosABB_HRFIM: TStringField;
    qTecnicosABB_DATA: TStringField;
    qTecnicosZ6_STATUS: TStringField;
    qTecnicosZ6_CODTEC: TStringField;
    qTecnicosZ6_DTATINI: TStringField;
    qTecnicosZ6_DTATFIM: TStringField;
    qTecnicosZ6_HORAINI: TStringField;
    qTecnicosZ6_HORAFIM: TStringField;
    qTecnicosZ6_NOMECLI: TStringField;
    qTecnicosZ6_NUMOS: TStringField;
    qTecnicosZ6_USINCLU: TStringField;
    qTecnicosZ6_CIDADE: TStringField;
    qTecnicosZ6_UF: TStringField;
    qTecnicosABB_USUATE: TStringField;
    qTecnicosABB_NOMCLI: TStringField;
    qTecnicosABB_UF: TStringField;
    qTecnicosABB_CIDADE: TStringField;
    qTecnicosAA1_CODTEC: TStringField;
    qTecnicosAA1_TECAGE: TStringField;
    qTecnicosABB_PREAGE: TStringField;
    qTecnicosZ6_NUMATEN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure Paineis(data : string);
  end;

var
  frmTecnico: TfrmTecnico;
  painel : array of Tpanel;
  l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l20 : array of TLabel;
  ap,ng : array of TImage;
implementation

{$R *.dfm}

Uses UPrincipal;



{ TfrmTecnico }

procedure TfrmTecnico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action :=caFree;
qTecnicos.Active:=false;


end;

function arrumar(data:string):string;
var
  ano,mes,dia: word;
begin

DecodeDate(strTODate(data),ano,mes,dia);
result:=VarToStr(dia)+'/'+VarToStr(mes)+'/'+VarToStr(ano);

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

DecodeDate(strToDate(data),ano,mes,dia);
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

procedure TfrmTecnico.Paineis(data: string);
var
  no,i : integer;
begin

frmTecnico.Caption:= frmTecnico.Caption+'  - '+arrumar(data);

qTecnicos.Active:=false;
qTecnicos.close;
qTecnicos.Fields.Remove(qTecnicosZ6_NUMOS);
qTecnicos.Fields.Remove(qTecnicosZ6_CODTEC);
qTecnicos.Fields.Remove(qTecnicosZ6_DTATINI);
qTecnicos.Fields.Remove(qTecnicosZ6_DTATFIM);
qTecnicos.Fields.Remove(qTecnicosZ6_HORAINI);
qTecnicos.Fields.Remove(qTecnicosZ6_HORAFIM);
qTecnicos.Fields.Remove(qTecnicosZ6_STATUS);
qTecnicos.Fields.Remove(qTecnicosZ6_CIDADE);
qTecnicos.Fields.Remove(qTecnicosZ6_UF);
qTecnicos.Fields.Remove(qTecnicosZ6_NOMECLI);
qTecnicos.Fields.Remove(qTecnicosZ6_USINCLU);
qTecnicos.Fields.Remove(qTecnicosZ6_NUMATEN);
qTecnicos.SQL.Text:='select * from abb010,aa1010 where ((abb010.ABB_DTINI <= '+InverterData(data)+' and abb010.ABB_DTFIM >= '+InverterData(data)+') and (abb010.ABB_CODTEC = AA1_CODTEC) and (AA1_TECAGE = ''S'') and (abb010.D_E_L_E_T_ <> ''*'')) order by ABB_CODTEC,ABB_DTINI';
qTecnicos.ExecSQL;
qTecnicos.Active:=true;
qTecnicos.Open;

no:= 10;

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
  SetLength(ap,no);


 i:=0;
  while not (qTecnicos.Eof)do
    begin
    if qTecnicosABB_CODTEC.AsString <> 'PADRAO' then
     begin
      painel[i] := TPanel.Create(self);
      painel[i].Align:=alTop;
      painel[i].Parent:=frmTecnico;
      painel[i].Color:= clWhite;
      painel[i].Height:=100;

      l1[i] := TLabel.Create(self);
      l1[i].Left:= 10;
      l1[i].top:= 5;
      l1[i].Caption:='N� OS:';
      l1[i].Font.Size:=10;
      l1[i].Font.Style:=[fsBold];
      l1[i].parent:=painel[i];

      l2[i] := TLabel.Create(self);
      l2[i].Left:= 10;
      l2[i].top:= 20;
      l2[i].Caption:= qTecnicosABB_NUMOS.AsString;
      l2[i].Font.Size:=12;
      l2[i].Font.Style:=[fsBold];
      l2[i].Font.color:=clred;
      l2[i].parent:=painel[i];

      l3[i] := TLabel.Create(self);
      l3[i].Left:= 10;
      l3[i].top:= 48;
      l3[i].Caption:='T�cnico:';
      l3[i].Font.Size:=10;
      l3[i].Font.Style:=[fsBold];
      l3[i].parent:=painel[i];

      l4[i] := TLabel.Create(self);
      l4[i].Left:= 10;
      l4[i].top:= 63;
      l4[i].Caption:= qTecnicosABB_CODTEC.AsString;
      l4[i].Font.Size:=12;
      l4[i].Font.Style:=[fsBold];
      l4[i].Font.color:=clred;
      l4[i].parent:=painel[i];

      l5[i] := TLabel.Create(self);
      l5[i].Left:= 90;
      l5[i].top:= 5;
      l5[i].Caption:='Data In�cial:';
      l5[i].Font.Size:=10;
      l5[i].Font.Style:=[fsBold];
      l5[i].parent:=painel[i];

      l6[i] := TLabel.Create(self);
      l6[i].Left:= 90;
      l6[i].top:= 20;
      l6[i].Caption:= dataCerta(qTecnicosABB_DTINI.AsString);
      l6[i].Font.Size:=10;
      l6[i].Font.Style:=[fsBold];
      l6[i].Font.color:=clred;
      l6[i].parent:=painel[i];

      l7[i] := TLabel.Create(self);
      l7[i].Left:= 90;
      l7[i].top:= 52;
      l7[i].Caption:='Data Final:';
      l7[i].Font.Size:=10;
      l7[i].Font.Style:=[fsBold];
      l7[i].parent:=painel[i];

      l8[i] := TLabel.Create(self);
      l8[i].Left:= 90;
      l8[i].top:= 67;
      l8[i].Caption:= DataCerta(qTecnicosABB_DTFIM.AsString);
      l8[i].Font.Size:=10;
      l8[i].Font.Style:=[fsBold];
      l8[i].Font.color:=clred;
      l8[i].parent:=painel[i];

      l9[i] := TLabel.Create(self);
      l9[i].Left:= 180;
      l9[i].top:= 5;
      l9[i].Caption:='Horario in�cial:';
      l9[i].Font.Size:=10;
      l9[i].Font.Style:=[fsBold];
      l9[i].parent:=painel[i];

      l10[i] := TLabel.Create(self);
      l10[i].Left:= 200;
      l10[i].top:= 20;
      l10[i].Caption:= qTecnicosABB_HRINI.AsString;
      l10[i].Font.Size:=10;
      l10[i].Font.Style:=[fsBold];
      l10[i].Font.color:=clred;
      l10[i].parent:=painel[i];

      l11[i] := TLabel.Create(self);
      l11[i].Left:= 180;
      l11[i].top:= 52;
      l11[i].Caption:='Horario Final:';
      l11[i].Font.Size:=10;
      l11[i].Font.Style:=[fsBold];
      l11[i].parent:=painel[i];

      l12[i] := TLabel.Create(self);
      l12[i].Left:= 200;
      l12[i].top:= 67;
      l12[i].Caption:= qTecnicosABB_HRFIM.AsString;
      l12[i].Font.Size:=10;
      l12[i].Font.Style:=[fsBold];
      l12[i].Font.color:=clred;
      l12[i].parent:=painel[i];

      l13[i] := TLabel.Create(self);
      l13[i].Left:= 290;
      l13[i].top:= 5;
      l13[i].Caption:='Cidade/UF:';
      l13[i].Font.Size:=10;
      l13[i].Font.Style:=[fsBold];
      l13[i].parent:=painel[i];

      l14[i] := TLabel.Create(self);
      l14[i].Left:= 290;
      l14[i].top:= 20;
      l14[i].Caption:= Trim(qTecnicosABB_CIDADE.AsString)+' - '+qTecnicosABB_UF.AsString;
      l14[i].Font.Size:=10;
      l14[i].Font.Style:=[fsBold];
      l14[i].Font.color:=clred;
      l14[i].parent:=painel[i];

      l15[i] := TLabel.Create(self);
      l15[i].Left:= 290;
      l15[i].top:= 52;
      l15[i].Caption:='Nome do Cliente:';
      l15[i].Font.Size:=10;
      l15[i].Font.Style:=[fsBold];
      l15[i].parent:=painel[i];

      l16[i] := TLabel.Create(self);
      l16[i].Left:= 290;
      l16[i].top:= 67;
      l16[i].Caption:= qTecnicosABB_NOMCLI.AsString;
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
      l18[i].Caption:= qTecnicosABB_USUATE.AsString;
      l18[i].Font.Size:=8;
      l18[i].Font.Style:=[fsBold];
      l18[i].Font.color:=clGreen;
      l18[i].parent:=painel[i];

      l19[i] := TLabel.Create(self);
      l19[i].Left:= 155;
      l19[i].top:= 85;
      l19[i].Caption:='Pr�-Agenda:';
      l19[i].Font.Size:=7;
      l19[i].Font.Style:=[fsBold];
      l19[i].Font.color:=clblue;
      l19[i].parent:=painel[i];

      l20[i] := TLabel.Create(self);
      l20[i].Left:=220;
      l20[i].top:= 83;
      l20[i].Caption:= qTecnicosABB_PREAGE.asString;
      l20[i].Font.Size:=8;
      l20[i].Font.Style:=[fsBold];
      l20[i].Font.color:=clGreen;
      l20[i].parent:=painel[i];

      ap[i] := TImage.Create(self);
      ap[i].left:= 500;
      ap[i].top:=20;
      ap[i].Width:=153;
      ap[i].Picture:=aprovado.Picture;
      ap[i].Parent:=painel[i];


     end;

      qtecnicos.Next;
      i:=i+1;
    end;
   {
    FreeAndNil(painel);
    FreeAndNil(l1);
    FreeAndNil(l2);
    FreeAndNil(l3);
    FreeAndNil(l4);
    FreeAndNil(l5);
    FreeAndNil(l6);
    FreeAndNil(l7);
    FreeAndNil(l8);
    FreeAndNil(l9);
    FreeAndNil(l10);
    FreeAndNil(l11);
    FreeAndNil(l12);
    }
    qTecnicos.close;
    qTecnicos.Fields.Clear;
    qTecnicos.Fields.Add(qTecnicosZ6_NUMOS);
    qTecnicos.Fields.Add(qTecnicosZ6_CODTEC);
    qTecnicos.Fields.Add(qTecnicosZ6_DTATINI);
    qTecnicos.Fields.Add(qTecnicosZ6_DTATFIM);
    qTecnicos.Fields.Add(qTecnicosZ6_HORAINI);
    qTecnicos.Fields.Add(qTecnicosZ6_HORAFIM);
    qTecnicos.Fields.Add(qTecnicosZ6_STATUS);
    qTecnicos.Fields.Add(qTecnicosZ6_CIDADE);
    qTecnicos.Fields.Add(qTecnicosZ6_UF);
    qTecnicos.Fields.Add(qTecnicosZ6_NOMECLI);
    qTecnicos.Fields.Add(qTecnicosZ6_USINCLU);
    qTecnicos.Fields.Add(qTecnicosZ6_NUMATEN);
    qTecnicos.SQL.Text:='select Z6_NUMOS,Z6_CODTEC,Z6_DTATINI,Z6_DTATFIM,Z6_HORAINI,Z6_HORAFIM,Z6_STATUS,Z6_CIDADE,Z6_UF,Z6_NOMECLI,Z6_USINCLU,Z6_NUMATEN,aa1_codtec,aa1_tecage from sz6010,aa1010 where (sz6010.z6_DTATINI <= '+InverterData(data)+' and sz6010.z6_DTATFIM >= '+InverterData(data)+') and (sz6010.z6_CODTEC = aa1_codtec) and (aa1_tecage = ''S'') and (sz6010.z6_STATUS = 1)';
    qTecnicos.ExecSQL;
    qTecnicos.open;

    no:= 10;

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
  SetLength(ng,no);

 i:=0;
 qTecnicos.First;
  while not (qTecnicos.Eof)do
    begin

  if qTecnicosZ6_STATUS.Value = '1' then
     begin
      painel[i] := TPanel.Create(self);
      painel[i].Align:=alTop;
      painel[i].Parent:=frmTecnico;
      painel[i].Color:= clWhite;
      painel[i].Height:=100;

      l3[i] := TLabel.Create(self);
      l3[i].Left:= 10;
      l3[i].top:= 28;
      l3[i].Caption:='T�cnico:';
      l3[i].Font.Size:=10;
      l3[i].Font.Style:=[fsBold];
      l3[i].parent:=painel[i];

      l4[i] := TLabel.Create(self);
      l4[i].Left:= 10;
      l4[i].top:= 43;
      l4[i].Caption:= qTecnicosZ6_CODTEC.AsString;
      l4[i].Font.Size:=12;
      l4[i].Font.Style:=[fsBold];
      l4[i].Font.color:=clred;
      l4[i].parent:=painel[i];

      l5[i] := TLabel.Create(self);
      l5[i].Left:= 90;
      l5[i].top:= 5;
      l5[i].Caption:='Data In�cial:';
      l5[i].Font.Size:=10;
      l5[i].Font.Style:=[fsBold];
      l5[i].parent:=painel[i];

      l6[i] := TLabel.Create(self);
      l6[i].Left:= 90;
      l6[i].top:= 20;
      l6[i].Caption:= dataCerta(qTecnicosZ6_DTATINI.AsString);
      l6[i].Font.Size:=10;
      l6[i].Font.Style:=[fsBold];
      l6[i].Font.color:=clred;
      l6[i].parent:=painel[i];

      l7[i] := TLabel.Create(self);
      l7[i].Left:= 90;
      l7[i].top:= 52;
      l7[i].Caption:='Data Final:';
      l7[i].Font.Size:=10;
      l7[i].Font.Style:=[fsBold];
      l7[i].parent:=painel[i];

      l8[i] := TLabel.Create(self);
      l8[i].Left:= 90;
      l8[i].top:= 67;
      l8[i].Caption:= dataCerta(qTecnicosZ6_DTATFIM.AsString);
      l8[i].Font.Size:=10;
      l8[i].Font.Style:=[fsBold];
      l8[i].Font.color:=clred;
      l8[i].parent:=painel[i];

      l9[i] := TLabel.Create(self);
      l9[i].Left:= 180;
      l9[i].top:= 5;
      l9[i].Caption:='Horario in�cial:';
      l9[i].Font.Size:=10;
      l9[i].Font.Style:=[fsBold];
      l9[i].parent:=painel[i];

      l10[i] := TLabel.Create(self);
      l10[i].Left:= 200;
      l10[i].top:= 20;
      l10[i].Caption:= qTecnicosZ6_HORAINI.AsString;
      l10[i].Font.Size:=10;
      l10[i].Font.Style:=[fsBold];
      l10[i].Font.color:=clred;
      l10[i].parent:=painel[i];

      l11[i] := TLabel.Create(self);
      l11[i].Left:= 180;
      l11[i].top:= 52;
      l11[i].Caption:='Horario Final:';
      l11[i].Font.Size:=10;
      l11[i].Font.Style:=[fsBold];
      l11[i].parent:=painel[i];

      l12[i] := TLabel.Create(self);
      l12[i].Left:= 200;
      l12[i].top:= 67;
      l12[i].Caption:= qTecnicosZ6_HORAFIM.AsString;
      l12[i].Font.Size:=10;
      l12[i].Font.Style:=[fsBold];
      l12[i].Font.color:=clred;
      l12[i].parent:=painel[i];

      l13[i] := TLabel.Create(self);
      l13[i].Left:= 290;
      l13[i].top:= 5;
      l13[i].Caption:='Cidade/UF:';
      l13[i].Font.Size:=10;
      l13[i].Font.Style:=[fsBold];
      l13[i].parent:=painel[i];

      l14[i] := TLabel.Create(self);
      l14[i].Left:= 290;
      l14[i].top:= 20;
      l14[i].Caption:= trim(qTecnicosZ6_CIDADE.AsString)+' - '+qTecnicosZ6_UF.AsString;
      l14[i].Font.Size:=10;
      l14[i].Font.Style:=[fsBold];
      l14[i].Font.color:=clred;
      l14[i].parent:=painel[i];

      l15[i] := TLabel.Create(self);
      l15[i].Left:= 290;
      l15[i].top:= 52;
      l15[i].Caption:='Nome do Cliente:';
      l15[i].Font.Size:=10;
      l15[i].Font.Style:=[fsBold];
      l15[i].parent:=painel[i];

      l16[i] := TLabel.Create(self);
      l16[i].Left:= 290;
      l16[i].top:= 67;
      l16[i].Caption:= qTecnicosZ6_NOMECLI.AsString;
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
      l18[i].Caption:= qTecnicosZ6_USINCLU.AsString;
      l18[i].Font.Size:=8;
      l18[i].Font.Style:=[fsBold];
      l18[i].Font.color:=clGreen;
      l18[i].parent:=painel[i];

      l19[i] := TLabel.Create(self);
      l19[i].Left:= 155;
      l19[i].top:= 85;
      l19[i].Caption:='Pr�-Agenda:';
      l19[i].Font.Size:=7;
      l19[i].Font.Style:=[fsBold];
      l19[i].Font.color:=clblue;
      l19[i].parent:=painel[i];

      l20[i] := TLabel.Create(self);
      l20[i].Left:=220;
      l20[i].top:= 83;
      l20[i].Caption:= qTecnicosZ6_NUMATEN.asString;
      l20[i].Font.Size:=8;
      l20[i].Font.Style:=[fsBold];
      l20[i].Font.color:=clGreen;
      l20[i].parent:=painel[i];

      ng[i] := TImage.Create(self);
      ng[i].left:= 440;
      ng[i].top:=20;
      ng[i].Width:=217;
      ng[i].Picture:=negociacao.Picture;
      ng[i].Parent:=painel[i];
      ng[i].SendToBack;


      qtecnicos.Next;
      end;
      i:=i+1;

    end;



end;

end.
