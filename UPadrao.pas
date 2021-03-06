unit UPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ComCtrls, DBGrids, DB, DBTables,strUtils, StdCtrls, Buttons,
  ExtCtrls, FMTBcd, SqlExpr;

type
  TfrmPadrao = class(TForm)
    pgPadroes: TPageControl;
    Janeiro: TTabSheet;
    sgJaneiro: TStringGrid;
    Fevereiro: TTabSheet;
    sgFevereiro: TStringGrid;
    Marco: TTabSheet;
    sgMarco: TStringGrid;
    Abril: TTabSheet;
    sgAbril: TStringGrid;
    Maio: TTabSheet;
    sgMaio: TStringGrid;
    Junho: TTabSheet;
    sgJunho: TStringGrid;
    Julho: TTabSheet;
    sgjulho: TStringGrid;
    Agosto: TTabSheet;
    sgAgosto: TStringGrid;
    Setembro: TTabSheet;
    sgSetembro: TStringGrid;
    Novembro: TTabSheet;
    sgOutubro: TStringGrid;
    TabSheet1: TTabSheet;
    sgNovembro: TStringGrid;
    TabSheet2: TTabSheet;
    sgDezembro: TStringGrid;
    Panel1: TPanel;
    sbAnterior: TSpeedButton;
    sbPosterior: TSpeedButton;
    lAno: TLabel;
    ldiaSelecionado: TLabel;
    lrow: TLabel;
    qPadrao: TSQLQuery;
    qTabPadroes: TSQLQuery;
    qPadraoZ6_CODTEC: TStringField;
    qPadraoZ6_DTATINI: TStringField;
    qPadraoZ6_DTATFIM: TStringField;
    qPadraoz6_padr1: TStringField;
    qPadraoz6_padr2: TStringField;
    qPadraoz6_padr3: TStringField;
    qPadraoz6_padr4: TStringField;
    qPadraoz6_padr5: TStringField;
    qPadraoz6_padr6: TStringField;
    qPadraoz6_padr7: TStringField;
    qPadraoz6_padr8: TStringField;
    qPadraoz6_padr9: TStringField;
    qPadraoz6_padr10: TStringField;
    qPadraoz6_descp01: TStringField;
    qPadraoz6_descp02: TStringField;
    qPadraoz6_descp03: TStringField;
    qPadraoz6_descp04: TStringField;
    qPadraoz6_descp05: TStringField;
    qPadraoz6_descp06: TStringField;
    qPadraoz6_descp07: TStringField;
    qPadraoz6_descp08: TStringField;
    qPadraoz6_descp09: TStringField;
    qPadraoz6_descp10: TStringField;
    qTabPadroesqm3_padrao: TStringField;
    qTabPadroesqm3_descri: TStringField;
    qPadraoZ6_STATUS: TStringField;
    procedure sgDezembroDblClick(Sender: TObject);
    procedure sgNovembroDblClick(Sender: TObject);
    procedure sgOutubroDblClick(Sender: TObject);
    procedure sgSetembroDblClick(Sender: TObject);
    procedure sgjulhoDblClick(Sender: TObject);
    procedure sgJunhoDblClick(Sender: TObject);
    procedure sgMaioDblClick(Sender: TObject);
    procedure sgAbrilDblClick(Sender: TObject);
    procedure sgMarcoDblClick(Sender: TObject);
    procedure sgFevereiroDblClick(Sender: TObject);
    procedure sgDezembroSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgNovembroSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgOutubroSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgSetembroSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgjulhoSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgJunhoSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgMaioSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgAbrilSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgMarcoSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgFevereiroSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgAgostoDblClick(Sender: TObject);
    procedure sgAgostoSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgJaneiroDblClick(Sender: TObject);
    procedure sgJaneiroSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sbAnteriorClick(Sender: TObject);
    procedure sbPosteriorClick(Sender: TObject);
    procedure sgJaneiroMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sgDezembroDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgNovembroDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgOutubroDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgSetembroDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgAgostoDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgjulhoDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure sgJunhoDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure sgMaioDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure sgAbrilDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure sgMarcoDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure sgFevereiroDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgJaneiroDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function Bissexto(AYear: Integer): Boolean;
    function DiasDoMes(AYear, AMonth: Integer): Integer;
    procedure EscolheMes(mes: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPadrao: TfrmPadrao;
  Col,Row : integer; 
implementation

{$R *.dfm}

uses USelPadrao, UTecnicos,UPrincipal;

function TfrmPadrao.Bissexto(AYear: Integer): Boolean;
begin
  Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or (AYear mod 400 = 0));
end;

function TfrmPadrao.DiasDoMes(AYear, AMonth: Integer): Integer;
const
  DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := DaysInMonth[AMonth];
  if (AMonth = 2) and Bissexto(AYear) then Inc(Result);
end;

procedure TfrmPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmPrincipal.Timer1.Enabled:=true;
action:=caFree;
end;

procedure RemoveRepetidos(var Vetor: Array of Integer);
var
  tam,i,j: integer;
begin

tam:= Length(Vetor);
  for I := 0 to tam do
    if vetor[i]=vetor[i+1] then vetor[i]:=999999999;

end;

procedure RemoveRepetidosS(var Vetor: Array of String);
var
  tam,tamM,i,j: integer;
begin
tam:= Length(Vetor);

for I := 0 to tam do
  begin
  tamM:=I+1;
  while tamM < tam do
    begin
      if trim(Vetor[i]) = trim(Vetor[tamM]) then
        Vetor[i]:='W';
        TamM:=tamM+1;
    end;

  end;


end;

procedure Ordena(var Vetor: Array of Integer);
var I, N1, N2: Integer;
begin
 I  := Low(Vetor);
 N1 := Vetor[I];

 while I <= High(Vetor) do
   begin
     N2 := Vetor[I];
     if N2 >= N1 then
        Inc(I)
     else
     begin
          Vetor[I] := N1; Dec(I);
          Vetor[I] := N2;
          if I > Low(Vetor) then
             Dec(I);
          N2 := Vetor[I];
        end;
     N1 := N2;
   end;
end;

procedure LimpaCelulas(grid : TStringGrid);
var i,j:integer;
begin
    for I := 1 to grid.colcount do
      for j := 1 to grid.RowCount do
        begin
          grid.Cells[i,j]:='';
        end;
      
end;

function RetornaDia(data :String):string;
var dataNova : TDate;
begin

dataNova:=strToDate(data);

  if DayOfWeek(dataNova) = 1 then
    result:='Dom'
  else if DayOfWeek(dataNova) = 2 then
    result:='Seg'
  else if DayOfWeek(dataNova) = 3 then
    result:='Ter'
  else if DayOfWeek(dataNova) = 4 then
    result:='Qua'
  else if DayOfWeek(dataNova) = 5 then
    result:='Qui'
  else if DayOfWeek(dataNova) = 6 then
    result:='Sex'
  else if DayOfWeek(dataNova) = 7 then
    result:='Sab';

end;

procedure TfrmPadrao.EscolheMes(mes: String);
begin
  if mes = '1' then
    pgPadroes.TabIndex:=0
  else if mes = '2' then
    pgPadroes.TabIndex:=1
  else if mes = '3' then
    pgPadroes.TabIndex:=2
  else if mes = '4' then
    pgPadroes.TabIndex:=3
  else if mes = '5' then
    pgPadroes.TabIndex:=4
  else if mes = '6' then
    pgPadroes.TabIndex:=5
  else if mes = '7' then
    pgPadroes.TabIndex:=6
  else if mes = '8' then
    pgPadroes.TabIndex:=7
  else if mes = '9' then
    pgPadroes.TabIndex:=8
  else if mes = '10' then
    pgPadroes.TabIndex:=9
  else if mes = '11' then
    pgPadroes.TabIndex:=10
  else if mes = '12' then
    pgPadroes.TabIndex:=11
end;

function inverterData(data : string): TDateTime;
var dia,mes,ano : string;
begin

ano:=LeftStr(data,4);
mes:=MidStr(data,5,2);
dia:=RightStr(data,2);

Result:=StrToDate(dia+'/'+mes+'/'+ano);


end;

procedure TfrmPadrao.FormShow(Sender: TObject);
var
  meses : array[0..11] of integer;
  i,j : integer;
  padroes: array of integer;
  data,dataFinal : Tdate;
  Ano,mes,dia,anoi,mesi,diai : Word;
  anoConsulta : string;
  contador : integer;
begin

frmPrincipal.Timer1.Enabled:=false;

if lAno.Caption <> 'Vazio' then
  begin
  LimpaCelulas(sgJaneiro);
  LimpaCelulas(sgFevereiro);
  LimpaCelulas(sgMarco);
  LimpaCelulas(sgAbril);
  LimpaCelulas(sgMaio);
  LimpaCelulas(sgJunho);
  LimpaCelulas(sgJulho);
  LimpaCelulas(sgAgosto);
  LimpaCelulas(sgSetembro);
  LimpaCelulas(sgOutubro);
  LimpaCelulas(sgNovembro);
  LimpaCelulas(sgDezembro);
  end;

if lAno.Caption = 'Vazio' then
  lAno.Caption:= RightStr(DateToStr(Date),4);

anoConsulta:=lAno.Caption;


qPadrao.Active:=False;
DecodeDate(Date,ano,mes,dia);

anoConsulta:=lAno.Caption;
EscolheMes(varToStr(mes));
qPadrao.SQL.Text:='select Z6_CODTEC,Z6_DTATINI,Z6_DTATFIM,z6_status,z6_padr1,z6_padr2,z6_padr3,z6_padr4,z6_padr5,z6_padr6,z6_padr7,z6_padr8,z6_padr9,z6_padr10,z6_descp01,z6_descp02,z6_descp03,z6_descp04,z6_descp05,z6_descp06,z6_descp07,z6_descp08,z6_descp09,z6_descp10 from ';
qPadrao.SQL.Text:=qPadrao.SQL.Text+'sz6010 where (z6_DTATINI > '+anoConsulta+'0101 and z6_DTATFIM < '+anoConsulta+'1231 and Z6_STATUS = 3) order by z6_DTATINI';
qPadrao.Active:=true;


meses[0]:=(DiasDoMes((StrToInt(anoConsulta)),1));
meses[1]:=(DiasDoMes((StrToInt(anoConsulta)),2));
meses[2]:=(DiasDoMes((StrToInt(anoConsulta)),3));
meses[3]:=(DiasDoMes((StrToInt(anoConsulta)),4));
meses[4]:=(DiasDoMes((StrToInt(anoConsulta)),5));
meses[5]:=(DiasDoMes((StrToInt(anoConsulta)),6));
meses[6]:=(DiasDoMes((StrToInt(anoConsulta)),7));
meses[7]:=(DiasDoMes((StrToInt(anoConsulta)),8));
meses[8]:=(DiasDoMes((StrToInt(anoConsulta)),9));
meses[9]:=(DiasDoMes((StrToInt(anoConsulta)),10));
meses[10]:=(DiasDoMes((StrToInt(anoConsulta)),11));
meses[11]:=(DiasDoMes((StrToInt(anoConsulta)),12));

//------------------------------Janeiro-------------------------------------//

sgJaneiro.Cells[0,0]:='X';
sgJaneiro.ColWidths[0]:=250;


sgJaneiro.ColCount:=meses[0]+2;

for i:=1 to meses[0] do
 begin
   sgJaneiro.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/1/'+anoConsulta));
 end;


qPadrao.First;
i:=1;

while not(qPadrao.Eof) do
  begin
    if trim(qPadraoZ6_PADR1.AsString) <> '' then
      begin
        sgJaneiro.Cells[0,i]:=qPadraoZ6_PADR1.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR2.AsString) <> '' then
      begin
        sgJaneiro.Cells[0,i]:=qPadraoZ6_PADR2.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR3.AsString) <> '' then
      begin
        sgJaneiro.Cells[0,i]:=qPadraoZ6_PADR3.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR4.AsString) <> '' then
      begin
        sgJaneiro.Cells[0,i]:=qPadraoZ6_PADR4.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR5.AsString) <> '' then
      begin
        sgJaneiro.Cells[0,i]:=qPadraoZ6_PADR5.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR6.AsString) <> '' then
      begin
        sgJaneiro.Cells[0,i]:=qPadraoZ6_PADR6.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR7.AsString) <> '' then
      begin
        sgJaneiro.Cells[0,i]:=qPadraoZ6_PADR7.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR8.AsString) <> '' then
      begin
        sgJaneiro.Cells[0,i]:=qPadraoZ6_PADR8.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR9.AsString) <> '' then
      begin
        sgJaneiro.Cells[0,i]:=qPadraoZ6_PADR9.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR10.AsString) <> '' then
      begin
        sgJaneiro.Cells[0,i]:=qPadraoZ6_PADR10.AsString;
      end;
  qPadrao.next;
  end;
sgJaneiro.RowCount:=i;

setLength(padroes,i);
for i  := 1 to sgJaneiro.RowCount-1  do
  if (trim(sgJaneiro.Cells[0,i]) = 'INTERN') or (trim(sgJaneiro.Cells[0,i]) = 'INTERN 2')
//  or (trim(sgJaneiro.Cells[0,i]) = 'KIT 1') or (trim(sgJaneiro.Cells[0,i]) = 'OLEO')
//  or (trim(sgJaneiro.Cells[0,i]) = 'KIT 4') or (trim(sgJaneiro.Cells[0,i]) = 'KIT 2')
//  or (trim(sgJaneiro.Cells[0,i]) = 'KIT 3') or (trim(sgJaneiro.Cells[0,i]) = 'DECADA')
//  or (trim(sgJaneiro.Cells[0,i]) = 'BANHO')
  then
    sgJaneiro.Cells[0,i]:= '999999999';

    //problema
for i  := 1 to sgJaneiro.RowCount-1  do
        padroes[i]:= strToInt(trim(sgJaneiro.Cells[0,i]));



Ordena(padroes);
RemoveRepetidos(padroes);
Ordena(padroes);

//RemoveRepetidosS(padroes);
{
for i  := 1 to sgJaneiro.RowCount-1  do
      if padroes[i] <> 'W' then
          sgJaneiro.Cells[0,i]:=(padroes[i]);
 }

for i  := 1 to sgJaneiro.RowCount-1  do
     sgJaneiro.Cells[0,i]:='0'+IntToStr(padroes[i]);


 for I := 1 to sgJaneiro.RowCount-1 do
  if sgJaneiro.Cells[0,i]='0999999999' then
    begin
    sgJaneiro.RowCount:=i;
    break;
    end;




qPadrao.First;
while not(qPadrao.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := inverterData(qPadraoZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := inverterData(qPadraoZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 1) then
    for j := 1 to sgJaneiro.RowCount do  begin
      if trim(qPadraoZ6_PADR1.AsString) = trim(sgJaneiro.Cells[0,j]) then
        for I := dia to diai do sgJaneiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR2.AsString) = trim(sgJaneiro.Cells[0,j]) then
        for I := dia to diai do sgJaneiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR3.AsString) = trim(sgJaneiro.Cells[0,j]) then
        for I := dia to diai do sgJaneiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR4.AsString) = trim(sgJaneiro.Cells[0,j]) then
        for I := dia to diai do sgJaneiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR5.AsString) = trim(sgJaneiro.Cells[0,j]) then
        for I := dia to diai do sgJaneiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR6.AsString) = trim(sgJaneiro.Cells[0,j]) then
        for I := dia to diai do sgJaneiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR7.AsString) = trim(sgJaneiro.Cells[0,j]) then
        for I := dia to diai do sgJaneiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR8.AsString) = trim(sgJaneiro.Cells[0,j]) then
        for I := dia to diai do sgJaneiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR9.AsString) = trim(sgJaneiro.Cells[0,j]) then
        for I := dia to diai do sgJaneiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR10.AsString) = trim(sgJaneiro.Cells[0,j]) then
        for I := dia to diai do sgJaneiro.Cells[i,j]:='X';

      end;
     qPadrao.Next;
  end;

for I := 1 to sgJaneiro.RowCount - 1 do
    begin
    qTabPadroes.First;
    while not(qTabPadroes.eof) do
      begin
        if trim(sgJaneiro.Cells[0,i]) = trim(qTabPadroesQM3_PADRAO.AsString)
          then sgJaneiro.Cells[0,i]:= qTabPadroesQM3_DESCRI.AsString;
        qTabPadroes.Next;
      end;
    end;


sgJaneiro.Cells[sgJaneiro.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgJaneiro.RowCount-1 do
  for j := 1 to sgJaneiro.ColCount-1 do
    begin
      if (sgJaneiro.Cells[j,i] = 'X') or (sgJaneiro.Cells[j,0]='%') then
        begin
          if sgJaneiro.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgJaneiro.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;
end;

//------------------------------Fevereiro-------------------------------------//


sgfevereiro.Cells[0,0]:='X';
sgfevereiro.ColWidths[0]:=250;


sgfevereiro.ColCount:=meses[1]+2;

for i:=1 to meses[1] do
 begin
   sgfevereiro.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/2/'+anoConsulta));
 end;


qPadrao.First;
i:=1;
while not(qPadrao.Eof) do
  begin
    if trim(qPadraoZ6_PADR1.AsString) <> '' then
      begin
        sgfevereiro.Cells[0,i]:=qPadraoZ6_PADR1.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR2.AsString) <> '' then
      begin
        sgfevereiro.Cells[0,i]:=qPadraoZ6_PADR2.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR3.AsString) <> '' then
      begin
        sgfevereiro.Cells[0,i]:=qPadraoZ6_PADR3.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR4.AsString) <> '' then
      begin
        sgfevereiro.Cells[0,i]:=qPadraoZ6_PADR4.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR5.AsString) <> '' then
      begin
        sgfevereiro.Cells[0,i]:=qPadraoZ6_PADR5.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR6.AsString) <> '' then
      begin
        sgfevereiro.Cells[0,i]:=qPadraoZ6_PADR6.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR7.AsString) <> '' then
      begin
        sgfevereiro.Cells[0,i]:=qPadraoZ6_PADR7.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR8.AsString) <> '' then
      begin
        sgfevereiro.Cells[0,i]:=qPadraoZ6_PADR8.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR9.AsString) <> '' then
      begin
        sgfevereiro.Cells[0,i]:=qPadraoZ6_PADR9.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR10.AsString) <> '' then
      begin
        sgfevereiro.Cells[0,i]:=qPadraoZ6_PADR10.AsString;
      end;

  qPadrao.next;
  end;
sgfevereiro.RowCount:=i;

setLength(padroes,i);
for i  := 1 to sgfevereiro.RowCount-1  do
  if (trim(sgfevereiro.Cells[0,i]) = 'INTERN') or (trim(sgfevereiro.Cells[0,i]) = 'INTERN 2') then
    sgfevereiro.Cells[0,i]:= '999999999';

for i  := 1 to sgfevereiro.RowCount-1  do
     padroes[i]:= strToInt(trim(sgfevereiro.Cells[0,i]));

Ordena(padroes);
RemoveRepetidos(padroes);
Ordena(padroes);

for i  := 1 to sgfevereiro.RowCount-1  do
     sgfevereiro.Cells[0,i]:='0'+IntToStr(padroes[i]);


 for I := 1 to sgfevereiro.RowCount-1 do
  if sgfevereiro.Cells[0,i]='0999999999' then
    begin
    sgfevereiro.RowCount:=i;
    break;
    end;




qPadrao.First;
while not(qPadrao.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := inverterData(qPadraoZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := inverterData(qPadraoZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 2) then
    for j := 1 to sgfevereiro.RowCount do  begin
      if trim(qPadraoZ6_PADR1.AsString) = trim(sgfevereiro.Cells[0,j]) then
        for I := dia to diai do sgfevereiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR2.AsString) = trim(sgfevereiro.Cells[0,j]) then
        for I := dia to diai do sgfevereiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR3.AsString) = trim(sgfevereiro.Cells[0,j]) then
        for I := dia to diai do sgfevereiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR4.AsString) = trim(sgfevereiro.Cells[0,j]) then
        for I := dia to diai do sgfevereiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR5.AsString) = trim(sgfevereiro.Cells[0,j]) then
        for I := dia to diai do sgfevereiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR6.AsString) = trim(sgfevereiro.Cells[0,j]) then
        for I := dia to diai do sgfevereiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR7.AsString) = trim(sgfevereiro.Cells[0,j]) then
        for I := dia to diai do sgfevereiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR8.AsString) = trim(sgfevereiro.Cells[0,j]) then
        for I := dia to diai do sgfevereiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR9.AsString) = trim(sgfevereiro.Cells[0,j]) then
        for I := dia to diai do sgfevereiro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR10.AsString) = trim(sgfevereiro.Cells[0,j]) then
        for I := dia to diai do sgfevereiro.Cells[i,j]:='X';

      end;
     qPadrao.Next;
  end;

 for I := 1 to sgfevereiro.RowCount - 1 do
    begin
    qTabPadroes.First;
    while not(qTabPadroes.eof) do
      begin
        if trim(sgfevereiro.Cells[0,i]) = trim(qTabPadroesQM3_PADRAO.AsString)
          then sgfevereiro.Cells[0,i]:= qTabPadroesQM3_DESCRI.AsString;
        qTabPadroes.Next;
      end;
    end;


sgfevereiro.Cells[sgfevereiro.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgfevereiro.RowCount-1 do
  for j := 1 to sgfevereiro.ColCount-1 do
    begin
      if (sgfevereiro.Cells[j,i] = 'X') or (sgfevereiro.Cells[j,0]='%') then
        begin
          if sgfevereiro.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgfevereiro.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;
end;

//------------------------------Mar�o-------------------------------------//


sgmarco.Cells[0,0]:='X';
sgmarco.ColWidths[0]:=250;


sgmarco.ColCount:=meses[2]+2;

for i:=1 to meses[2] do
 begin
   sgmarco.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/3/'+anoConsulta));
 end;


qPadrao.First;
i:=1;
while not(qPadrao.Eof) do
  begin
    if trim(qPadraoZ6_PADR1.AsString) <> '' then
      begin
        sgmarco.Cells[0,i]:=qPadraoZ6_PADR1.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR2.AsString) <> '' then
      begin
        sgmarco.Cells[0,i]:=qPadraoZ6_PADR2.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR3.AsString) <> '' then
      begin
        sgmarco.Cells[0,i]:=qPadraoZ6_PADR3.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR4.AsString) <> '' then
      begin
        sgmarco.Cells[0,i]:=qPadraoZ6_PADR4.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR5.AsString) <> '' then
      begin
        sgmarco.Cells[0,i]:=qPadraoZ6_PADR5.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR6.AsString) <> '' then
      begin
        sgmarco.Cells[0,i]:=qPadraoZ6_PADR6.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR7.AsString) <> '' then
      begin
        sgmarco.Cells[0,i]:=qPadraoZ6_PADR7.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR8.AsString) <> '' then
      begin
        sgmarco.Cells[0,i]:=qPadraoZ6_PADR8.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR9.AsString) <> '' then
      begin
        sgmarco.Cells[0,i]:=qPadraoZ6_PADR9.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR10.AsString) <> '' then
      begin
        sgmarco.Cells[0,i]:=qPadraoZ6_PADR10.AsString;
      end;

  qPadrao.next;
  end;
sgmarco.RowCount:=i;

setLength(padroes,i);
for i  := 1 to sgmarco.RowCount-1  do
  if (trim(sgmarco.Cells[0,i]) = 'INTERN') or (trim(sgmarco.Cells[0,i]) = 'INTERN 2') then
    sgmarco.Cells[0,i]:= '999999999';

for i  := 1 to sgmarco.RowCount-1  do
     padroes[i]:= strToInt(trim(sgmarco.Cells[0,i]));

Ordena(padroes);
RemoveRepetidos(padroes);
Ordena(padroes);

for i  := 1 to sgmarco.RowCount-1  do
     sgmarco.Cells[0,i]:='0'+IntToStr(padroes[i]);


 for I := 1 to sgmarco.RowCount-1 do
  if sgmarco.Cells[0,i]='0999999999' then
    begin
    sgmarco.RowCount:=i;
    break;
    end;




qPadrao.First;
while not(qPadrao.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := inverterData(qPadraoZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := inverterData(qPadraoZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 3) then
    for j := 1 to sgmarco.RowCount do  begin
      if trim(qPadraoZ6_PADR1.AsString) = trim(sgmarco.Cells[0,j]) then
        for I := dia to diai do sgmarco.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR2.AsString) = trim(sgmarco.Cells[0,j]) then
        for I := dia to diai do sgmarco.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR3.AsString) = trim(sgmarco.Cells[0,j]) then
        for I := dia to diai do sgmarco.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR4.AsString) = trim(sgmarco.Cells[0,j]) then
        for I := dia to diai do sgmarco.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR5.AsString) = trim(sgmarco.Cells[0,j]) then
        for I := dia to diai do sgmarco.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR6.AsString) = trim(sgmarco.Cells[0,j]) then
        for I := dia to diai do sgmarco.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR7.AsString) = trim(sgmarco.Cells[0,j]) then
        for I := dia to diai do sgmarco.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR8.AsString) = trim(sgmarco.Cells[0,j]) then
        for I := dia to diai do sgmarco.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR9.AsString) = trim(sgmarco.Cells[0,j]) then
        for I := dia to diai do sgmarco.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR10.AsString) = trim(sgmarco.Cells[0,j]) then
        for I := dia to diai do sgmarco.Cells[i,j]:='X';

      end;
     qPadrao.Next;
  end;

for I := 1 to sgmarco.RowCount - 1 do
    begin
    qTabPadroes.First;
    while not(qTabPadroes.eof) do
      begin
        if trim(sgmarco.Cells[0,i]) = trim(qTabPadroesQM3_PADRAO.AsString)
          then begin
          sgmarco.Cells[0,i]:= qTabPadroesQM3_DESCRI.AsString;
             showmessage(sgmarco.cells[0,i]);
          end;
        qTabPadroes.Next;
      end;
    end;


sgmarco.Cells[sgmarco.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgmarco.RowCount-1 do
  for j := 1 to sgmarco.ColCount-1 do
    begin
      if (sgmarco.Cells[j,i] = 'X') or (sgmarco.Cells[j,0]='%') then
        begin
          if sgmarco.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgmarco.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;
end;

//------------------------------Abril-------------------------------------//


sgabril.Cells[0,0]:='X';
sgabril.ColWidths[0]:=250;


sgabril.ColCount:=meses[3]+2;

for i:=1 to meses[3] do
 begin
   sgabril.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/4/'+anoConsulta));
 end;


qPadrao.First;
i:=1;
while not(qPadrao.Eof) do
  begin
    if trim(qPadraoZ6_PADR1.AsString) <> '' then
      begin
        sgabril.Cells[0,i]:=qPadraoZ6_PADR1.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR2.AsString) <> '' then
      begin
        sgabril.Cells[0,i]:=qPadraoZ6_PADR2.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR3.AsString) <> '' then
      begin
        sgabril.Cells[0,i]:=qPadraoZ6_PADR3.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR4.AsString) <> '' then
      begin
        sgabril.Cells[0,i]:=qPadraoZ6_PADR4.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR5.AsString) <> '' then
      begin
        sgabril.Cells[0,i]:=qPadraoZ6_PADR5.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR6.AsString) <> '' then
      begin
        sgabril.Cells[0,i]:=qPadraoZ6_PADR6.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR7.AsString) <> '' then
      begin
        sgabril.Cells[0,i]:=qPadraoZ6_PADR7.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR8.AsString) <> '' then
      begin
        sgabril.Cells[0,i]:=qPadraoZ6_PADR8.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR9.AsString) <> '' then
      begin
        sgabril.Cells[0,i]:=qPadraoZ6_PADR9.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR10.AsString) <> '' then
      begin
        sgabril.Cells[0,i]:=qPadraoZ6_PADR10.AsString;
      end;

  qPadrao.next;
  end;
sgabril.RowCount:=i;

setLength(padroes,i);
for i  := 1 to sgabril.RowCount-1  do
  if (trim(sgabril.Cells[0,i]) = 'INTERN') or (trim(sgabril.Cells[0,i]) = 'INTERN 2') then
    sgabril.Cells[0,i]:= '999999999';

for i  := 1 to sgabril.RowCount-1  do
     padroes[i]:= strToInt(trim(sgabril.Cells[0,i]));

Ordena(padroes);
RemoveRepetidos(padroes);
Ordena(padroes);

for i  := 1 to sgabril.RowCount-1  do
     sgabril.Cells[0,i]:='0'+IntToStr(padroes[i]);


 for I := 1 to sgabril.RowCount-1 do
  if sgabril.Cells[0,i]='0999999999' then
    begin
    sgabril.RowCount:=i;
    break;
    end;




qPadrao.First;
while not(qPadrao.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := inverterData(qPadraoZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := inverterData(qPadraoZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 4) then
    for j := 1 to sgabril.RowCount do  begin
      if trim(qPadraoZ6_PADR1.AsString) = trim(sgabril.Cells[0,j]) then
        for I := dia to diai do sgabril.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR2.AsString) = trim(sgabril.Cells[0,j]) then
        for I := dia to diai do sgabril.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR3.AsString) = trim(sgabril.Cells[0,j]) then
        for I := dia to diai do sgabril.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR4.AsString) = trim(sgabril.Cells[0,j]) then
        for I := dia to diai do sgabril.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR5.AsString) = trim(sgabril.Cells[0,j]) then
        for I := dia to diai do sgabril.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR6.AsString) = trim(sgabril.Cells[0,j]) then
        for I := dia to diai do sgabril.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR7.AsString) = trim(sgabril.Cells[0,j]) then
        for I := dia to diai do sgabril.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR8.AsString) = trim(sgabril.Cells[0,j]) then
        for I := dia to diai do sgabril.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR9.AsString) = trim(sgabril.Cells[0,j]) then
        for I := dia to diai do sgabril.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR10.AsString) = trim(sgabril.Cells[0,j]) then
        for I := dia to diai do sgabril.Cells[i,j]:='X';

      end;
     qPadrao.Next;
  end;


    for I := 1 to sgabril.RowCount - 1 do
    begin
    qTabPadroes.First;
    while not(qTabPadroes.eof) do
      begin
        if trim(sgabril.Cells[0,i]) = trim(qTabPadroesQM3_PADRAO.AsString)
          then sgabril.Cells[0,i]:= qTabPadroesQM3_DESCRI.AsString;
        qTabPadroes.Next;
      end;
    end;

sgabril.Cells[sgabril.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgabril.RowCount-1 do
  for j := 1 to sgabril.ColCount-1 do
    begin
      if (sgabril.Cells[j,i] = 'X') or (sgabril.Cells[j,0]='%') then
        begin
          if sgabril.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgabril.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;
end;
//------------------------------Maio-----------------------------------------//


sgmaio.Cells[0,0]:='X';
sgmaio.ColWidths[0]:=250;


sgmaio.ColCount:=meses[4]+2;

for i:=1 to meses[4] do
 begin
   sgmaio.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/5/'+anoConsulta));
 end;


qPadrao.First;
i:=1;
while not(qPadrao.Eof) do
  begin
    if trim(qPadraoZ6_PADR1.AsString) <> '' then
      begin
        sgmaio.Cells[0,i]:=qPadraoZ6_PADR1.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR2.AsString) <> '' then
      begin
        sgmaio.Cells[0,i]:=qPadraoZ6_PADR2.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR3.AsString) <> '' then
      begin
        sgmaio.Cells[0,i]:=qPadraoZ6_PADR3.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR4.AsString) <> '' then
      begin
        sgmaio.Cells[0,i]:=qPadraoZ6_PADR4.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR5.AsString) <> '' then
      begin
        sgmaio.Cells[0,i]:=qPadraoZ6_PADR5.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR6.AsString) <> '' then
      begin
        sgmaio.Cells[0,i]:=qPadraoZ6_PADR6.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR7.AsString) <> '' then
      begin
        sgmaio.Cells[0,i]:=qPadraoZ6_PADR7.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR8.AsString) <> '' then
      begin
        sgmaio.Cells[0,i]:=qPadraoZ6_PADR8.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR9.AsString) <> '' then
      begin
        sgmaio.Cells[0,i]:=qPadraoZ6_PADR9.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR10.AsString) <> '' then
      begin
        sgmaio.Cells[0,i]:=qPadraoZ6_PADR10.AsString;
      end;

  qPadrao.next;
  end;
sgmaio.RowCount:=i;

setLength(padroes,i);
for i  := 1 to sgmaio.RowCount-1  do
  if (trim(sgmaio.Cells[0,i]) = 'INTERN') or (trim(sgmaio.Cells[0,i]) = 'INTERN 2') then
    sgmaio.Cells[0,i]:= '999999999';

for i  := 1 to sgmaio.RowCount-1  do
     padroes[i]:= strToInt(trim(sgmaio.Cells[0,i]));

Ordena(padroes);
RemoveRepetidos(padroes);
Ordena(padroes);

for i  := 1 to sgmaio.RowCount-1  do
     sgmaio.Cells[0,i]:='0'+IntToStr(padroes[i]);


 for I := 1 to sgmaio.RowCount-1 do
  if sgmaio.Cells[0,i]='0999999999' then
    begin
    sgmaio.RowCount:=i;
    break;
    end;




qPadrao.First;
while not(qPadrao.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := inverterData(qPadraoZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := inverterData(qPadraoZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 5) then
    for j := 1 to sgmaio.RowCount do  begin
      if trim(qPadraoZ6_PADR1.AsString) = trim(sgmaio.Cells[0,j]) then
        for I := dia to diai do sgmaio.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR2.AsString) = trim(sgmaio.Cells[0,j]) then
        for I := dia to diai do sgmaio.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR3.AsString) = trim(sgmaio.Cells[0,j]) then
        for I := dia to diai do sgmaio.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR4.AsString) = trim(sgmaio.Cells[0,j]) then
        for I := dia to diai do sgmaio.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR5.AsString) = trim(sgmaio.Cells[0,j]) then
        for I := dia to diai do sgmaio.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR6.AsString) = trim(sgmaio.Cells[0,j]) then
        for I := dia to diai do sgmaio.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR7.AsString) = trim(sgmaio.Cells[0,j]) then
        for I := dia to diai do sgmaio.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR8.AsString) = trim(sgmaio.Cells[0,j]) then
        for I := dia to diai do sgmaio.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR9.AsString) = trim(sgmaio.Cells[0,j]) then
        for I := dia to diai do sgmaio.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR10.AsString) = trim(sgmaio.Cells[0,j]) then
        for I := dia to diai do sgmaio.Cells[i,j]:='X';

      end;
     qPadrao.Next;
  end;


    for I := 1 to sgmaio.RowCount - 1 do
    begin
    qTabPadroes.First;
    while not(qTabPadroes.eof) do
      begin
        if trim(sgmaio.Cells[0,i]) = trim(qTabPadroesQM3_PADRAO.AsString)
          then sgmaio.Cells[0,i]:= qTabPadroesQM3_DESCRI.AsString;
        qTabPadroes.Next;
      end;
    end;

sgmaio.Cells[sgmaio.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgmaio.RowCount-1 do
  for j := 1 to sgmaio.ColCount-1 do
    begin
      if (sgmaio.Cells[j,i] = 'X') or (sgmaio.Cells[j,0]='%') then
        begin
          if sgmaio.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgmaio.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;
end;
//------------------------------Junho----------------------------------------//


sgjunho.Cells[0,0]:='X';
sgjunho.ColWidths[0]:=250;


sgjunho.ColCount:=meses[5]+2;

for i:=1 to meses[5] do
 begin
   sgjunho.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/6/'+anoConsulta));
 end;


qPadrao.First;
i:=1;
while not(qPadrao.Eof) do
  begin
    if trim(qPadraoZ6_PADR1.AsString) <> '' then
      begin
        sgjunho.Cells[0,i]:=qPadraoZ6_PADR1.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR2.AsString) <> '' then
      begin
        sgjunho.Cells[0,i]:=qPadraoZ6_PADR2.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR3.AsString) <> '' then
      begin
        sgjunho.Cells[0,i]:=qPadraoZ6_PADR3.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR4.AsString) <> '' then
      begin
        sgjunho.Cells[0,i]:=qPadraoZ6_PADR4.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR5.AsString) <> '' then
      begin
        sgjunho.Cells[0,i]:=qPadraoZ6_PADR5.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR6.AsString) <> '' then
      begin
        sgjunho.Cells[0,i]:=qPadraoZ6_PADR6.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR7.AsString) <> '' then
      begin
        sgjunho.Cells[0,i]:=qPadraoZ6_PADR7.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR8.AsString) <> '' then
      begin
        sgjunho.Cells[0,i]:=qPadraoZ6_PADR8.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR9.AsString) <> '' then
      begin
        sgjunho.Cells[0,i]:=qPadraoZ6_PADR9.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR10.AsString) <> '' then
      begin
        sgjunho.Cells[0,i]:=qPadraoZ6_PADR10.AsString;
      end;

  qPadrao.next;
  end;
sgjunho.RowCount:=i;

setLength(padroes,i);
for i  := 1 to sgjunho.RowCount-1  do
  if (trim(sgjunho.Cells[0,i]) = 'INTERN') or (trim(sgjunho.Cells[0,i]) = 'INTERN 2') then
    sgjunho.Cells[0,i]:= '999999999';

for i  := 1 to sgjunho.RowCount-1  do
     padroes[i]:= strToInt(trim(sgjunho.Cells[0,i]));

Ordena(padroes);
RemoveRepetidos(padroes);
Ordena(padroes);

for i  := 1 to sgjunho.RowCount-1  do
     sgjunho.Cells[0,i]:='0'+IntToStr(padroes[i]);


 for I := 1 to sgjunho.RowCount-1 do
  if sgjunho.Cells[0,i]='0999999999' then
    begin
    sgjunho.RowCount:=i;
    break;
    end;




qPadrao.First;
while not(qPadrao.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := inverterData(qPadraoZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := inverterData(qPadraoZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 6) then
    for j := 1 to sgjunho.RowCount do  begin
      if trim(qPadraoZ6_PADR1.AsString) = trim(sgjunho.Cells[0,j]) then
        for I := dia to diai do sgjunho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR2.AsString) = trim(sgjunho.Cells[0,j]) then
        for I := dia to diai do sgjunho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR3.AsString) = trim(sgjunho.Cells[0,j]) then
        for I := dia to diai do sgjunho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR4.AsString) = trim(sgjunho.Cells[0,j]) then
        for I := dia to diai do sgjunho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR5.AsString) = trim(sgjunho.Cells[0,j]) then
        for I := dia to diai do sgjunho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR6.AsString) = trim(sgjunho.Cells[0,j]) then
        for I := dia to diai do sgjunho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR7.AsString) = trim(sgjunho.Cells[0,j]) then
        for I := dia to diai do sgjunho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR8.AsString) = trim(sgjunho.Cells[0,j]) then
        for I := dia to diai do sgjunho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR9.AsString) = trim(sgjunho.Cells[0,j]) then
        for I := dia to diai do sgjunho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR10.AsString) = trim(sgjunho.Cells[0,j]) then
        for I := dia to diai do sgjunho.Cells[i,j]:='X';

      end;
     qPadrao.Next;
  end;

for I := 1 to sgjunho.RowCount - 1 do
    begin
    qTabPadroes.First;
    while not(qTabPadroes.eof) do
      begin
        if trim(sgjunho.Cells[0,i]) = trim(qTabPadroesQM3_PADRAO.AsString)
          then sgjunho.Cells[0,i]:= qTabPadroesQM3_DESCRI.AsString;
        qTabPadroes.Next;
      end;
    end;


sgjunho.Cells[sgjunho.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgjunho.RowCount-1 do
  for j := 1 to sgjunho.ColCount-1 do
    begin
      if (sgjunho.Cells[j,i] = 'X') or (sgjunho.Cells[j,0]='%') then
        begin
          if sgjunho.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgjunho.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;
end;
//------------------------------Julho----------------------------------------//



sgjulho.Cells[0,0]:='X';
sgjulho.ColWidths[0]:=250;


sgjulho.ColCount:=meses[6]+2;

for i:=1 to meses[6] do
 begin
   sgjulho.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/7/'+anoConsulta));
 end;


qPadrao.First;
i:=1;
while not(qPadrao.Eof) do
  begin
    if trim(qPadraoZ6_PADR1.AsString) <> '' then
      begin
        sgjulho.Cells[0,i]:=qPadraoZ6_PADR1.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR2.AsString) <> '' then
      begin
        sgjulho.Cells[0,i]:=qPadraoZ6_PADR2.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR3.AsString) <> '' then
      begin
        sgjulho.Cells[0,i]:=qPadraoZ6_PADR3.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR4.AsString) <> '' then
      begin
        sgjulho.Cells[0,i]:=qPadraoZ6_PADR4.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR5.AsString) <> '' then
      begin
        sgjulho.Cells[0,i]:=qPadraoZ6_PADR5.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR6.AsString) <> '' then
      begin
        sgjulho.Cells[0,i]:=qPadraoZ6_PADR6.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR7.AsString) <> '' then
      begin
        sgjulho.Cells[0,i]:=qPadraoZ6_PADR7.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR8.AsString) <> '' then
      begin
        sgjulho.Cells[0,i]:=qPadraoZ6_PADR8.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR9.AsString) <> '' then
      begin
        sgjulho.Cells[0,i]:=qPadraoZ6_PADR9.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR10.AsString) <> '' then
      begin
        sgjulho.Cells[0,i]:=qPadraoZ6_PADR10.AsString;
      end;

  qPadrao.next;
  end;
sgjulho.RowCount:=i;

setLength(padroes,i);
for i  := 1 to sgjulho.RowCount-1  do
  if (trim(sgjulho.Cells[0,i]) = 'INTERN') or (trim(sgjulho.Cells[0,i]) = 'INTERN 2') then
    sgjulho.Cells[0,i]:= '999999999';

for i  := 1 to sgjulho.RowCount-1  do
     padroes[i]:= strToInt(trim(sgjulho.Cells[0,i]));

Ordena(padroes);
RemoveRepetidos(padroes);
Ordena(padroes);

for i  := 1 to sgjulho.RowCount-1  do
     sgjulho.Cells[0,i]:='0'+IntToStr(padroes[i]);


 for I := 1 to sgjulho.RowCount-1 do
  if sgjulho.Cells[0,i]='0999999999' then
    begin
    sgjulho.RowCount:=i;
    break;
    end;




qPadrao.First;
while not(qPadrao.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := inverterData(qPadraoZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := inverterData(qPadraoZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 7) then
    for j := 1 to sgjulho.RowCount do  begin
      if trim(qPadraoZ6_PADR1.AsString) = trim(sgjulho.Cells[0,j]) then
        for I := dia to diai do sgjulho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR2.AsString) = trim(sgjulho.Cells[0,j]) then
        for I := dia to diai do sgjulho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR3.AsString) = trim(sgjulho.Cells[0,j]) then
        for I := dia to diai do sgjulho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR4.AsString) = trim(sgjulho.Cells[0,j]) then
        for I := dia to diai do sgjulho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR5.AsString) = trim(sgjulho.Cells[0,j]) then
        for I := dia to diai do sgjulho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR6.AsString) = trim(sgjulho.Cells[0,j]) then
        for I := dia to diai do sgjulho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR7.AsString) = trim(sgjulho.Cells[0,j]) then
        for I := dia to diai do sgjulho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR8.AsString) = trim(sgjulho.Cells[0,j]) then
        for I := dia to diai do sgjulho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR9.AsString) = trim(sgjulho.Cells[0,j]) then
        for I := dia to diai do sgjulho.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR10.AsString) = trim(sgjulho.Cells[0,j]) then
        for I := dia to diai do sgjulho.Cells[i,j]:='X';

      end;
     qPadrao.Next;
  end;

 for I := 1 to sgjulho.RowCount - 1 do
    begin
    qTabPadroes.First;
    while not(qTabPadroes.eof) do
      begin
        if trim(sgjulho.Cells[0,i]) = trim(qTabPadroesQM3_PADRAO.AsString)
          then sgjulho.Cells[0,i]:= qTabPadroesQM3_DESCRI.AsString;
        qTabPadroes.Next;
      end;
    end;


sgjulho.Cells[sgjulho.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgjulho.RowCount-1 do
  for j := 1 to sgjulho.ColCount-1 do
    begin
      if (sgjulho.Cells[j,i] = 'X') or (sgjulho.Cells[j,0]='%') then
        begin
          if sgjulho.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgjulho.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;
end;

//------------------------------Agosto---------------------------------------//


sgagosto.Cells[0,0]:='X';
sgagosto.ColWidths[0]:=250;


sgagosto.ColCount:=meses[7]+2;

for i:=1 to meses[7] do
 begin
   sgagosto.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/8/'+anoConsulta));
 end;


qPadrao.First;
i:=1;
while not(qPadrao.Eof) do
  begin
    if trim(qPadraoZ6_PADR1.AsString) <> '' then
      begin
        sgagosto.Cells[0,i]:=qPadraoZ6_PADR1.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR2.AsString) <> '' then
      begin
        sgagosto.Cells[0,i]:=qPadraoZ6_PADR2.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR3.AsString) <> '' then
      begin
        sgagosto.Cells[0,i]:=qPadraoZ6_PADR3.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR4.AsString) <> '' then
      begin
        sgagosto.Cells[0,i]:=qPadraoZ6_PADR4.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR5.AsString) <> '' then
      begin
        sgagosto.Cells[0,i]:=qPadraoZ6_PADR5.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR6.AsString) <> '' then
      begin
        sgagosto.Cells[0,i]:=qPadraoZ6_PADR6.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR7.AsString) <> '' then
      begin
        sgagosto.Cells[0,i]:=qPadraoZ6_PADR7.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR8.AsString) <> '' then
      begin
        sgagosto.Cells[0,i]:=qPadraoZ6_PADR8.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR9.AsString) <> '' then
      begin
        sgagosto.Cells[0,i]:=qPadraoZ6_PADR9.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR10.AsString) <> '' then
      begin
        sgagosto.Cells[0,i]:=qPadraoZ6_PADR10.AsString;
      end;

  qPadrao.next;
  end;
sgagosto.RowCount:=i;

setLength(padroes,i);
for i  := 1 to sgagosto.RowCount-1  do
  if (trim(sgagosto.Cells[0,i]) = 'INTERN') or (trim(sgagosto.Cells[0,i]) = 'INTERN 2') then
    sgagosto.Cells[0,i]:= '999999999';

for i  := 1 to sgagosto.RowCount-1  do
     padroes[i]:= strToInt(trim(sgagosto.Cells[0,i]));

Ordena(padroes);
RemoveRepetidos(padroes);
Ordena(padroes);
//RemoveRepetidosS(padroes);
{
for i  := 1 to sgagosto.RowCount-1  do
      if padroes[i] <> 'W' then
          sgagosto.Cells[0,i]:=(padroes[i]);
 }


for i  := 1 to sgagosto.RowCount-1  do
     sgagosto.Cells[0,i]:='0'+IntToStr(padroes[i]);


 for I := 1 to sgagosto.RowCount-1 do
  if sgagosto.Cells[0,i]='0999999999' then
    begin
    sgagosto.RowCount:=i;
    break;
    end;




qPadrao.First;
while not(qPadrao.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := inverterData(qPadraoZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := inverterData(qPadraoZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 8) then
    for j := 1 to sgagosto.RowCount do  begin
      if trim(qPadraoZ6_PADR1.AsString) = trim(sgagosto.Cells[0,j]) then
        for I := dia to diai do sgagosto.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR2.AsString) = trim(sgagosto.Cells[0,j]) then
        for I := dia to diai do sgagosto.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR3.AsString) = trim(sgagosto.Cells[0,j]) then
        for I := dia to diai do sgagosto.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR4.AsString) = trim(sgagosto.Cells[0,j]) then
        for I := dia to diai do sgagosto.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR5.AsString) = trim(sgagosto.Cells[0,j]) then
        for I := dia to diai do sgagosto.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR6.AsString) = trim(sgagosto.Cells[0,j]) then
        for I := dia to diai do sgagosto.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR7.AsString) = trim(sgagosto.Cells[0,j]) then
        for I := dia to diai do sgagosto.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR8.AsString) = trim(sgagosto.Cells[0,j]) then
        for I := dia to diai do sgagosto.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR9.AsString) = trim(sgagosto.Cells[0,j]) then
        for I := dia to diai do sgagosto.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR10.AsString) = trim(sgagosto.Cells[0,j]) then
        for I := dia to diai do sgagosto.Cells[i,j]:='X';

      end;
     qPadrao.Next;
  end;

for I := 1 to sgagosto.RowCount - 1 do
    begin
    qTabPadroes.First;
    while not(qTabPadroes.eof) do
      begin
        if trim(sgagosto.Cells[0,i]) = trim(qTabPadroesQM3_PADRAO.AsString)
          then sgagosto.Cells[0,i]:= qTabPadroesQM3_DESCRI.AsString;
        qTabPadroes.Next;
      end;
    end;


sgagosto.Cells[sgagosto.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgagosto.RowCount-1 do
  for j := 1 to sgagosto.ColCount-1 do
    begin
      if (sgagosto.Cells[j,i] = 'X') or (sgagosto.Cells[j,0]='%') then
        begin
          if sgagosto.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgagosto.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;
end;


//------------------------------Setembro-------------------------------------//


sgsetembro.Cells[0,0]:='X';
sgsetembro.ColWidths[0]:=250;


sgsetembro.ColCount:=meses[8]+2;

for i:=1 to meses[8] do
 begin
   sgsetembro.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/9/'+anoConsulta));
 end;


qPadrao.First;
i:=1;
while not(qPadrao.Eof) do
  begin
    if trim(qPadraoZ6_PADR1.AsString) <> '' then
      begin
        sgsetembro.Cells[0,i]:=qPadraoZ6_PADR1.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR2.AsString) <> '' then
      begin
        sgsetembro.Cells[0,i]:=qPadraoZ6_PADR2.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR3.AsString) <> '' then
      begin
        sgsetembro.Cells[0,i]:=qPadraoZ6_PADR3.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR4.AsString) <> '' then
      begin
        sgsetembro.Cells[0,i]:=qPadraoZ6_PADR4.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR5.AsString) <> '' then
      begin
        sgsetembro.Cells[0,i]:=qPadraoZ6_PADR5.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR6.AsString) <> '' then
      begin
        sgsetembro.Cells[0,i]:=qPadraoZ6_PADR6.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR7.AsString) <> '' then
      begin
        sgsetembro.Cells[0,i]:=qPadraoZ6_PADR7.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR8.AsString) <> '' then
      begin
        sgsetembro.Cells[0,i]:=qPadraoZ6_PADR8.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR9.AsString) <> '' then
      begin
        sgsetembro.Cells[0,i]:=qPadraoZ6_PADR9.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR10.AsString) <> '' then
      begin
        sgsetembro.Cells[0,i]:=qPadraoZ6_PADR10.AsString;
      end;

  qPadrao.next;
  end;
sgsetembro.RowCount:=i;

setLength(padroes,i);
for i  := 1 to sgsetembro.RowCount-1  do
  if (trim(sgsetembro.Cells[0,i]) = 'INTERN') or (trim(sgsetembro.Cells[0,i]) = 'INTERN 2') then
    sgsetembro.Cells[0,i]:= '999999999';

for i  := 1 to sgsetembro.RowCount-1  do
     padroes[i]:= strToInt(trim(sgsetembro.Cells[0,i]));

Ordena(padroes);
RemoveRepetidos(padroes);
Ordena(padroes);

for i  := 1 to sgsetembro.RowCount-1  do
     sgsetembro.Cells[0,i]:='0'+IntToStr(padroes[i]);


 for I := 1 to sgsetembro.RowCount-1 do
  if sgsetembro.Cells[0,i]='0999999999' then
    begin
    sgsetembro.RowCount:=i;
    break;
    end;




qPadrao.First;
while not(qPadrao.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := inverterData(qPadraoZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := inverterData(qPadraoZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 9) then
    for j := 1 to sgsetembro.RowCount do  begin
      if trim(qPadraoZ6_PADR1.AsString) = trim(sgsetembro.Cells[0,j]) then
        for I := dia to diai do sgsetembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR2.AsString) = trim(sgsetembro.Cells[0,j]) then
        for I := dia to diai do sgsetembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR3.AsString) = trim(sgsetembro.Cells[0,j]) then
        for I := dia to diai do sgsetembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR4.AsString) = trim(sgsetembro.Cells[0,j]) then
        for I := dia to diai do sgsetembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR5.AsString) = trim(sgsetembro.Cells[0,j]) then
        for I := dia to diai do sgsetembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR6.AsString) = trim(sgsetembro.Cells[0,j]) then
        for I := dia to diai do sgsetembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR7.AsString) = trim(sgsetembro.Cells[0,j]) then
        for I := dia to diai do sgsetembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR8.AsString) = trim(sgsetembro.Cells[0,j]) then
        for I := dia to diai do sgsetembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR9.AsString) = trim(sgsetembro.Cells[0,j]) then
        for I := dia to diai do sgsetembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR10.AsString) = trim(sgsetembro.Cells[0,j]) then
        for I := dia to diai do sgsetembro.Cells[i,j]:='X';

      end;
     qPadrao.Next;
  end;

for I := 1 to sgsetembro.RowCount - 1 do
    begin
    qTabPadroes.First;
    while not(qTabPadroes.eof) do
      begin
        if trim(sgsetembro.Cells[0,i]) = trim(qTabPadroesQM3_PADRAO.AsString)
          then sgsetembro.Cells[0,i]:= qTabPadroesQM3_DESCRI.AsString;
        qTabPadroes.Next;
      end;
    end;


sgsetembro.Cells[sgsetembro.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgsetembro.RowCount-1 do
  for j := 1 to sgsetembro.ColCount-1 do
    begin
      if (sgsetembro.Cells[j,i] = 'X') or (sgsetembro.Cells[j,0]='%') then
        begin
          if sgsetembro.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgsetembro.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;
end;
//------------------------------Outubro-------------------------------------//


sgoutubro.Cells[0,0]:='X';
sgoutubro.ColWidths[0]:=250;


sgoutubro.ColCount:=meses[9]+2;

for i:=1 to meses[9] do
 begin
   sgoutubro.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/10/'+anoConsulta));
 end;


qPadrao.First;
i:=1;
while not(qPadrao.Eof) do
  begin
    if trim(qPadraoZ6_PADR1.AsString) <> '' then
      begin
        sgoutubro.Cells[0,i]:=qPadraoZ6_PADR1.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR2.AsString) <> '' then
      begin
        sgoutubro.Cells[0,i]:=qPadraoZ6_PADR2.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR3.AsString) <> '' then
      begin
        sgoutubro.Cells[0,i]:=qPadraoZ6_PADR3.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR4.AsString) <> '' then
      begin
        sgoutubro.Cells[0,i]:=qPadraoZ6_PADR4.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR5.AsString) <> '' then
      begin
        sgoutubro.Cells[0,i]:=qPadraoZ6_PADR5.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR6.AsString) <> '' then
      begin
        sgoutubro.Cells[0,i]:=qPadraoZ6_PADR6.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR7.AsString) <> '' then
      begin
        sgoutubro.Cells[0,i]:=qPadraoZ6_PADR7.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR8.AsString) <> '' then
      begin
        sgoutubro.Cells[0,i]:=qPadraoZ6_PADR8.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR9.AsString) <> '' then
      begin
        sgoutubro.Cells[0,i]:=qPadraoZ6_PADR9.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR10.AsString) <> '' then
      begin
        sgoutubro.Cells[0,i]:=qPadraoZ6_PADR10.AsString;
      end;

  qPadrao.next;
  end;
sgoutubro.RowCount:=i;

setLength(padroes,i);
for i  := 1 to sgoutubro.RowCount-1  do
  if (trim(sgoutubro.Cells[0,i]) = 'INTERN') or (trim(sgoutubro.Cells[0,i]) = 'INTERN 2') then
    sgoutubro.Cells[0,i]:= '999999999';

for i  := 1 to sgoutubro.RowCount-1  do
     padroes[i]:= strToInt(trim(sgoutubro.Cells[0,i]));

Ordena(padroes);
RemoveRepetidos(padroes);
Ordena(padroes);

for i  := 1 to sgoutubro.RowCount-1  do
     sgoutubro.Cells[0,i]:='0'+IntToStr(padroes[i]);


 for I := 1 to sgoutubro.RowCount-1 do
  if sgoutubro.Cells[0,i]='0999999999' then
    begin
    sgoutubro.RowCount:=i;
    break;
    end;




qPadrao.First;
while not(qPadrao.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := inverterData(qPadraoZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := inverterData(qPadraoZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 10) then
    for j := 1 to sgoutubro.RowCount do  begin
      if trim(qPadraoZ6_PADR1.AsString) = trim(sgoutubro.Cells[0,j]) then
        for I := dia to diai do sgoutubro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR2.AsString) = trim(sgoutubro.Cells[0,j]) then
        for I := dia to diai do sgoutubro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR3.AsString) = trim(sgoutubro.Cells[0,j]) then
        for I := dia to diai do sgoutubro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR4.AsString) = trim(sgoutubro.Cells[0,j]) then
        for I := dia to diai do sgoutubro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR5.AsString) = trim(sgoutubro.Cells[0,j]) then
        for I := dia to diai do sgoutubro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR6.AsString) = trim(sgoutubro.Cells[0,j]) then
        for I := dia to diai do sgoutubro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR7.AsString) = trim(sgoutubro.Cells[0,j]) then
        for I := dia to diai do sgoutubro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR8.AsString) = trim(sgoutubro.Cells[0,j]) then
        for I := dia to diai do sgoutubro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR9.AsString) = trim(sgoutubro.Cells[0,j]) then
        for I := dia to diai do sgoutubro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR10.AsString) = trim(sgoutubro.Cells[0,j]) then
        for I := dia to diai do sgoutubro.Cells[i,j]:='X';

      end;
     qPadrao.Next;
  end;

 for I := 1 to sgoutubro.RowCount - 1 do
    begin
    qTabPadroes.First;
    while not(qTabPadroes.eof) do
      begin
        if trim(sgoutubro.Cells[0,i]) = trim(qTabPadroesQM3_PADRAO.AsString)
          then sgoutubro.Cells[0,i]:= qTabPadroesQM3_DESCRI.AsString;
        qTabPadroes.Next;
      end;
    end;


sgoutubro.Cells[sgoutubro.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgoutubro.RowCount-1 do
  for j := 1 to sgoutubro.ColCount-1 do
    begin
      if (sgoutubro.Cells[j,i] = 'X') or (sgoutubro.Cells[j,0]='%') then
        begin
          if sgoutubro.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgoutubro.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;
end;

//------------------------------Novembro-------------------------------------//



sgnovembro.Cells[0,0]:='X';
sgnovembro.ColWidths[0]:=250;


sgnovembro.ColCount:=meses[10]+2;

for i:=1 to meses[10] do
 begin
   sgnovembro.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/11/'+anoConsulta));
 end;


qPadrao.First;
i:=1;
while not(qPadrao.Eof) do
  begin
    if trim(qPadraoZ6_PADR1.AsString) <> '' then
      begin
        sgnovembro.Cells[0,i]:=qPadraoZ6_PADR1.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR2.AsString) <> '' then
      begin
        sgnovembro.Cells[0,i]:=qPadraoZ6_PADR2.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR3.AsString) <> '' then
      begin
        sgnovembro.Cells[0,i]:=qPadraoZ6_PADR3.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR4.AsString) <> '' then
      begin
        sgnovembro.Cells[0,i]:=qPadraoZ6_PADR4.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR5.AsString) <> '' then
      begin
        sgnovembro.Cells[0,i]:=qPadraoZ6_PADR5.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR6.AsString) <> '' then
      begin
        sgnovembro.Cells[0,i]:=qPadraoZ6_PADR6.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR7.AsString) <> '' then
      begin
        sgnovembro.Cells[0,i]:=qPadraoZ6_PADR7.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR8.AsString) <> '' then
      begin
        sgnovembro.Cells[0,i]:=qPadraoZ6_PADR8.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR9.AsString) <> '' then
      begin
        sgnovembro.Cells[0,i]:=qPadraoZ6_PADR9.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR10.AsString) <> '' then
      begin
        sgnovembro.Cells[0,i]:=qPadraoZ6_PADR10.AsString;
      end;

  qPadrao.next;
  end;
sgnovembro.RowCount:=i;

setLength(padroes,i);
for i  := 1 to sgnovembro.RowCount-1  do
  if (trim(sgnovembro.Cells[0,i]) = 'INTERN') or (trim(sgnovembro.Cells[0,i]) = 'INTERN 2') then
    sgnovembro.Cells[0,i]:= '999999999';

for i  := 1 to sgnovembro.RowCount-1  do
     padroes[i]:= strToInt(trim(sgnovembro.Cells[0,i]));

Ordena(padroes);
RemoveRepetidos(padroes);
Ordena(padroes);

for i  := 1 to sgnovembro.RowCount-1  do
     sgnovembro.Cells[0,i]:='0'+IntToStr(padroes[i]);


 for I := 1 to sgnovembro.RowCount-1 do
  if sgnovembro.Cells[0,i]='0999999999' then
    begin
    sgnovembro.RowCount:=i;
    break;
    end;




qPadrao.First;
while not(qPadrao.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := inverterData(qPadraoZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := inverterData(qPadraoZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 11) then
    for j := 1 to sgnovembro.RowCount do  begin
      if trim(qPadraoZ6_PADR1.AsString) = trim(sgnovembro.Cells[0,j]) then
        for I := dia to diai do sgnovembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR2.AsString) = trim(sgnovembro.Cells[0,j]) then
        for I := dia to diai do sgnovembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR3.AsString) = trim(sgnovembro.Cells[0,j]) then
        for I := dia to diai do sgnovembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR4.AsString) = trim(sgnovembro.Cells[0,j]) then
        for I := dia to diai do sgnovembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR5.AsString) = trim(sgnovembro.Cells[0,j]) then
        for I := dia to diai do sgnovembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR6.AsString) = trim(sgnovembro.Cells[0,j]) then
        for I := dia to diai do sgnovembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR7.AsString) = trim(sgnovembro.Cells[0,j]) then
        for I := dia to diai do sgnovembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR8.AsString) = trim(sgnovembro.Cells[0,j]) then
        for I := dia to diai do sgnovembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR9.AsString) = trim(sgnovembro.Cells[0,j]) then
        for I := dia to diai do sgnovembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR10.AsString) = trim(sgnovembro.Cells[0,j]) then
        for I := dia to diai do sgnovembro.Cells[i,j]:='X';

      end;
     qPadrao.Next;
  end;

for I := 1 to sgnovembro.RowCount - 1 do
    begin
    qTabPadroes.First;
    while not(qTabPadroes.eof) do
      begin
        if trim(sgnovembro.Cells[0,i]) = trim(qTabPadroesQM3_PADRAO.AsString)
          then sgnovembro.Cells[0,i]:= qTabPadroesQM3_DESCRI.AsString;
        qTabPadroes.Next;
      end;
    end;


sgnovembro.Cells[sgnovembro.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgnovembro.RowCount-1 do
  for j := 1 to sgnovembro.ColCount-1 do
    begin
      if (sgnovembro.Cells[j,i] = 'X') or (sgnovembro.Cells[j,0]='%') then
        begin
          if sgnovembro.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgnovembro.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;
end;

//------------------------------Dezembro-------------------------------------//


sgdezembro.Cells[0,0]:='X';
sgdezembro.ColWidths[0]:=250;


sgdezembro.ColCount:=meses[11]+2;

for i:=1 to meses[11] do
 begin
   sgdezembro.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/12/'+anoConsulta));
 end;


qPadrao.First;
i:=1;
while not(qPadrao.Eof) do
  begin
    if trim(qPadraoZ6_PADR1.AsString) <> '' then
      begin
        sgdezembro.Cells[0,i]:=qPadraoZ6_PADR1.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR2.AsString) <> '' then
      begin
        sgdezembro.Cells[0,i]:=qPadraoZ6_PADR2.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR3.AsString) <> '' then
      begin
        sgdezembro.Cells[0,i]:=qPadraoZ6_PADR3.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR4.AsString) <> '' then
      begin
        sgdezembro.Cells[0,i]:=qPadraoZ6_PADR4.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR5.AsString) <> '' then
      begin
        sgdezembro.Cells[0,i]:=qPadraoZ6_PADR5.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR6.AsString) <> '' then
      begin
        sgdezembro.Cells[0,i]:=qPadraoZ6_PADR6.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR7.AsString) <> '' then
      begin
        sgdezembro.Cells[0,i]:=qPadraoZ6_PADR7.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR8.AsString) <> '' then
      begin
        sgdezembro.Cells[0,i]:=qPadraoZ6_PADR8.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR9.AsString) <> '' then
      begin
        sgdezembro.Cells[0,i]:=qPadraoZ6_PADR9.AsString;
        i:=i+1;
      end;
    if trim(qPadraoZ6_PADR10.AsString) <> '' then
      begin
        sgdezembro.Cells[0,i]:=qPadraoZ6_PADR10.AsString;
      end;

  qPadrao.next;
  end;
sgdezembro.RowCount:=i;

setLength(padroes,i);
for i  := 1 to sgdezembro.RowCount-1  do
  if (trim(sgdezembro.Cells[0,i]) = 'INTERN') or (trim(sgdezembro.Cells[0,i]) = 'INTERN 2') then
    sgdezembro.Cells[0,i]:= '999999999';

for i  := 1 to sgdezembro.RowCount-1  do
     padroes[i]:= strToInt(trim(sgdezembro.Cells[0,i]));

Ordena(padroes);
RemoveRepetidos(padroes);
Ordena(padroes);

for i  := 1 to sgdezembro.RowCount-1  do
     sgdezembro.Cells[0,i]:='0'+IntToStr(padroes[i]);


 for I := 1 to sgdezembro.RowCount-1 do
  if sgdezembro.Cells[0,i]='0999999999' then
    begin
    sgdezembro.RowCount:=i;
    break;
    end;




qPadrao.First;
while not(qPadrao.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := inverterData(qPadraoZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := inverterData(qPadraoZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 12) then
    for j := 1 to sgdezembro.RowCount do  begin
      if trim(qPadraoZ6_PADR1.AsString) = trim(sgdezembro.Cells[0,j]) then
        for I := dia to diai do sgdezembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR2.AsString) = trim(sgdezembro.Cells[0,j]) then
        for I := dia to diai do sgdezembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR3.AsString) = trim(sgdezembro.Cells[0,j]) then
        for I := dia to diai do sgdezembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR4.AsString) = trim(sgdezembro.Cells[0,j]) then
        for I := dia to diai do sgdezembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR5.AsString) = trim(sgdezembro.Cells[0,j]) then
        for I := dia to diai do sgdezembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR6.AsString) = trim(sgdezembro.Cells[0,j]) then
        for I := dia to diai do sgdezembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR7.AsString) = trim(sgdezembro.Cells[0,j]) then
        for I := dia to diai do sgdezembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR8.AsString) = trim(sgdezembro.Cells[0,j]) then
        for I := dia to diai do sgdezembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR9.AsString) = trim(sgdezembro.Cells[0,j]) then
        for I := dia to diai do sgdezembro.Cells[i,j]:='X'
      else if trim(qPadraoZ6_PADR10.AsString) = trim(sgdezembro.Cells[0,j]) then
        for I := dia to diai do sgdezembro.Cells[i,j]:='X';

      end;
     qPadrao.Next;
  end;

for I := 1 to sgdezembro.RowCount - 1 do
    begin
    qTabPadroes.First;
    while not(qTabPadroes.eof) do
      begin
        if trim(sgdezembro.Cells[0,i]) = trim(qTabPadroesQM3_PADRAO.AsString)
          then sgdezembro.Cells[0,i]:= qTabPadroesQM3_DESCRI.AsString;
        qTabPadroes.Next;
      end;
    end;


sgdezembro.Cells[sgdezembro.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgdezembro.RowCount-1 do
  for j := 1 to sgdezembro.ColCount-1 do
    begin
      if (sgdezembro.Cells[j,i] = 'X') or (sgdezembro.Cells[j,0]='%') then
        begin
          if sgdezembro.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgdezembro.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;
end;
end;

procedure TfrmPadrao.sbAnteriorClick(Sender: TObject);
begin
lAno.Caption:=IntToStr(StrToInt(lAno.Caption)-1);
frmPadrao.OnShow(self);
end;

procedure TfrmPadrao.sbPosteriorClick(Sender: TObject);
begin
lAno.Caption:=IntToStr(StrToInt(lAno.Caption)+1);
frmPadrao.OnShow(self);
end;

procedure TfrmPadrao.sgAbrilDblClick(Sender: TObject);
begin
frmSelPadrao := TfrmSelPadrao.Create(self);
frmSelPadrao.Paineis(ldiaSelecionado.Caption,sgAbril.Cells[0,StrToInt(lrow.Caption)]);
frmSelPadrao.Show;
end;

procedure TfrmPadrao.sgAbrilDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clWhite;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 34) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 35) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 36) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 37) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 38) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 39) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 40) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 41) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 42) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 43) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 44) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 45) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 46) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 47) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 48) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 49) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 50) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 51) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 52) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 53) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 54) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 55) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 56) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 57) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 58) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 59) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 60) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 61) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 62) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clInfoBk;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 63) then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= cl3DLight;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgabril.Cells[ACol,ARow]); // reimprime o texto.
   end;


if RightStr(sgabril.Cells[ACol,0],3) = 'Sab' then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clBtnFace;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgabril.Cells[ACol,0],3) = 'Dom' then
   begin
   sgabril.Canvas.Font.Color:= clBlack;
   sgabril.Canvas.Brush.Color:= clBtnFace;
   sgabril.Canvas.FillRect(Rect); // redesenha a celula
   sgabril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgabril.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgabril.ColWidths[ACol] div 2;

sgabril.Canvas.FillRect(Rect);
sgabril.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);

end;

procedure TfrmPadrao.sgAbrilSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgPadroes.tabIndex+1)+'/'+lano.Caption);
lrow.Caption:= intToStr(Arow);
end;

procedure TfrmPadrao.sgAgostoDblClick(Sender: TObject);
begin
frmSelPadrao := TfrmSelPadrao.Create(self);
frmSelPadrao.Paineis(ldiaSelecionado.Caption,sgAgosto.Cells[0,StrToInt(lrow.Caption)]);
frmSelPadrao.Show;
end;

procedure TfrmPadrao.sgAgostoDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clWhite;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 34) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 35) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 36) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 37) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 38) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 39) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 40) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 41) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 42) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 43) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 44) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 45) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 46) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 47) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 48) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 49) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 50) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 51) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 52) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 53) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 54) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 55) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 56) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 57) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 58) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 59) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 60) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 61) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 62) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clInfoBk;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 63) then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= cl3DLight;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgagosto.Cells[ACol,ARow]); // reimprime o texto.
   end;


if RightStr(sgagosto.Cells[ACol,0],3) = 'Sab' then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clBtnFace;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgagosto.Cells[ACol,0],3) = 'Dom' then
   begin
   sgagosto.Canvas.Font.Color:= clBlack;
   sgagosto.Canvas.Brush.Color:= clBtnFace;
   sgagosto.Canvas.FillRect(Rect); // redesenha a celula
   sgagosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgagosto.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgagosto.ColWidths[ACol] div 2;

sgagosto.Canvas.FillRect(Rect);
sgagosto.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);

end;

procedure TfrmPadrao.sgAgostoSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgPadroes.tabIndex+1)+'/'+lano.Caption);
lrow.Caption:= intToStr(Arow);
end;

procedure TfrmPadrao.sgDezembroDblClick(Sender: TObject);
begin
frmSelPadrao := TfrmSelPadrao.Create(self);
frmSelPadrao.Paineis(ldiaSelecionado.Caption,sgDezembro.Cells[0,StrToInt(lrow.Caption)]);
frmSelPadrao.Show;
end;

procedure TfrmPadrao.sgDezembroDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clWhite;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 34) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 35) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 36) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 37) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 38) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 39) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 40) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 41) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 42) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 43) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 44) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 45) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 46) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 47) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 48) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 49) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 50) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 51) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 52) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 53) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 54) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 55) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 56) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 57) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 58) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 59) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 60) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 61) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 62) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clInfoBk;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 63) then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= cl3DLight;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgdezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if RightStr(sgdezembro.Cells[ACol,0],3) = 'Sab' then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clBtnFace;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgdezembro.Cells[ACol,0],3) = 'Dom' then
   begin
   sgdezembro.Canvas.Font.Color:= clBlack;
   sgdezembro.Canvas.Brush.Color:= clBtnFace;
   sgdezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgdezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgdezembro.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgdezembro.ColWidths[ACol] div 2;

sgdezembro.Canvas.FillRect(Rect);
sgdezembro.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);

end;

procedure TfrmPadrao.sgDezembroSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgPadroes.tabIndex+1)+'/'+lano.Caption);
lrow.Caption:= intToStr(Arow);
end;

procedure TfrmPadrao.sgFevereiroDblClick(Sender: TObject);
begin
frmSelPadrao := TfrmSelPadrao.Create(self);
frmSelPadrao.Paineis(ldiaSelecionado.Caption,sgFevereiro.Cells[0,StrToInt(lrow.Caption)]);
frmSelPadrao.Show;
end;

procedure TfrmPadrao.sgFevereiroDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clWhite;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 34) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 35) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 36) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 37) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 38) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 39) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 40) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 41) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 42) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 43) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 44) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 45) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 46) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 47) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 48) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 49) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 50) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 51) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 52) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 53) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 54) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 55) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 56) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 57) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 58) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 59) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 60) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 61) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 62) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clInfoBk;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 63) then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= cl3DLight;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgfevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if RightStr(sgfevereiro.Cells[ACol,0],3) = 'Sab' then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clBtnFace;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgfevereiro.Cells[ACol,0],3) = 'Dom' then
   begin
   sgfevereiro.Canvas.Font.Color:= clBlack;
   sgfevereiro.Canvas.Brush.Color:= clBtnFace;
   sgfevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgfevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgfevereiro.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgfevereiro.ColWidths[ACol] div 2;

sgfevereiro.Canvas.FillRect(Rect);
sgfevereiro.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);

end;

procedure TfrmPadrao.sgFevereiroSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgPadroes.tabIndex+1)+'/'+lano.Caption);
lrow.Caption:= intToStr(Arow);
end;

procedure TfrmPadrao.sgJaneiroDblClick(Sender: TObject);
begin
frmSelPadrao := TfrmSelPadrao.Create(self);
frmSelPadrao.Paineis(ldiaSelecionado.Caption,sgJaneiro.Cells[0,StrToInt(lrow.Caption)]);
frmSelPadrao.Show;
end;

procedure TfrmPadrao.sgJaneiroDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clWhite;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 34) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 35) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 36) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 37) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 38) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 39) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 40) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 41) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 42) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 43) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 44) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 45) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 46) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 47) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 48) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 49) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 50) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 51) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 52) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 53) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 54) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 55) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 56) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 57) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 58) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 59) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 60) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 61) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 62) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clInfoBk;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 63) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= cl3DLight;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if RightStr(sgJaneiro.Cells[ACol,0],3) = 'Sab' then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clBtnFace;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgJaneiro.Cells[ACol,0],3) = 'Dom' then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clBtnFace;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgJaneiro.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgJaneiro.ColWidths[ACol] div 2;

sgJaneiro.Canvas.FillRect(Rect);
sgJaneiro.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);



end;

procedure TfrmPadrao.sgJaneiroMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var r,c : integer;
begin
sgJaneiro.MouseToCell(X, Y, C, R);
if ((Row <> r) or (Col <> c)) then
begin
Row := r; Col := c;
Application.CancelHint;
sgJaneiro.Hint := 'Linha: '+IntToStr(r)+#32+'Coluna: '+IntToStr(c);
end;
end;

procedure TfrmPadrao.sgJaneiroSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgPadroes.tabIndex+1)+'/'+lano.Caption);
lrow.Caption:= intToStr(Arow);
end;

procedure TfrmPadrao.sgjulhoDblClick(Sender: TObject);
begin
frmSelPadrao := TfrmSelPadrao.Create(self);
frmSelPadrao.Paineis(ldiaSelecionado.Caption,sgJulho.Cells[0,StrToInt(lrow.Caption)]);
frmSelPadrao.Show;
end;

procedure TfrmPadrao.sgjulhoDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clWhite;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 34) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 35) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 36) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 37) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 38) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 39) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 40) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 41) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 42) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 43) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 44) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 45) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 46) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 47) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 48) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 49) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 50) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 51) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 52) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 53) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 54) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 55) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 56) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 57) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 58) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 59) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 60) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 61) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 62) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clInfoBk;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 63) then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= cl3DLight;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjulho.Cells[ACol,ARow]); // reimprime o texto.
   end;


if RightStr(sgjulho.Cells[ACol,0],3) = 'Sab' then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clBtnFace;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgjulho.Cells[ACol,0],3) = 'Dom' then
   begin
   sgjulho.Canvas.Font.Color:= clBlack;
   sgjulho.Canvas.Brush.Color:= clBtnFace;
   sgjulho.Canvas.FillRect(Rect); // redesenha a celula
   sgjulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgjulho.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgjulho.ColWidths[ACol] div 2;

sgjulho.Canvas.FillRect(Rect);
sgjulho.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);

end;

procedure TfrmPadrao.sgjulhoSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgPadroes.tabIndex+1)+'/'+lano.Caption);
lrow.Caption:= intToStr(Arow);
end;

procedure TfrmPadrao.sgJunhoDblClick(Sender: TObject);
begin
frmSelPadrao := TfrmSelPadrao.Create(self);
frmSelPadrao.Paineis(ldiaSelecionado.Caption,sgJunho.Cells[0,StrToInt(lrow.Caption)]);
frmSelPadrao.Show;
end;

procedure TfrmPadrao.sgJunhoDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clWhite;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 34) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 35) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 36) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 37) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 38) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 39) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 40) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 41) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 42) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 43) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 44) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 45) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 46) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 47) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 48) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 49) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 50) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 51) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 52) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 53) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 54) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 55) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 56) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 57) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 58) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 59) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 60) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 61) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 62) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clInfoBk;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 63) then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= cl3DLight;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgjunho.Cells[ACol,ARow]); // reimprime o texto.
   end;


if RightStr(sgjunho.Cells[ACol,0],3) = 'Sab' then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clBtnFace;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgjunho.Cells[ACol,0],3) = 'Dom' then
   begin
   sgjunho.Canvas.Font.Color:= clBlack;
   sgjunho.Canvas.Brush.Color:= clBtnFace;
   sgjunho.Canvas.FillRect(Rect); // redesenha a celula
   sgjunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgjunho.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgjunho.ColWidths[ACol] div 2;

sgjunho.Canvas.FillRect(Rect);
sgjunho.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);

end;

procedure TfrmPadrao.sgJunhoSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgPadroes.tabIndex+1)+'/'+lano.Caption);
lrow.Caption:= intToStr(Arow);
end;

procedure TfrmPadrao.sgMaioDblClick(Sender: TObject);
begin
frmSelPadrao := TfrmSelPadrao.Create(self);
frmSelPadrao.Paineis(ldiaSelecionado.Caption,sgMaio.Cells[0,StrToInt(lrow.Caption)]);
frmSelPadrao.Show;
end;

procedure TfrmPadrao.sgMaioDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clWhite;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 34) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 35) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 36) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 37) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 38) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 39) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 40) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 41) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 42) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 43) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 44) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 45) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 46) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 47) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 48) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 49) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 50) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 51) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 52) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 53) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 54) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 55) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 56) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 57) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 58) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 59) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 60) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 61) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 62) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clInfoBk;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 63) then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= cl3DLight;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmaio.Cells[ACol,ARow]); // reimprime o texto.
   end;


if RightStr(sgmaio.Cells[ACol,0],3) = 'Sab' then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clBtnFace;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgmaio.Cells[ACol,0],3) = 'Dom' then
   begin
   sgmaio.Canvas.Font.Color:= clBlack;
   sgmaio.Canvas.Brush.Color:= clBtnFace;
   sgmaio.Canvas.FillRect(Rect); // redesenha a celula
   sgmaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgmaio.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgmaio.ColWidths[ACol] div 2;

sgmaio.Canvas.FillRect(Rect);
sgmaio.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);

end;

procedure TfrmPadrao.sgMaioSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgPadroes.tabIndex+1)+'/'+lano.Caption);
lrow.Caption:= intToStr(Arow);
end;

procedure TfrmPadrao.sgMarcoDblClick(Sender: TObject);
begin
frmSelPadrao := TfrmSelPadrao.Create(self);
frmSelPadrao.Paineis(ldiaSelecionado.Caption,sgMarco.Cells[0,StrToInt(lrow.Caption)]);
frmSelPadrao.Show;
end;

procedure TfrmPadrao.sgMarcoDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clWhite;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 34) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 35) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 36) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 37) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 38) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 39) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 40) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 41) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 42) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 43) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 44) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 45) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 46) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 47) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 48) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 49) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 50) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 51) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 52) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 53) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 54) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 55) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 56) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 57) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 58) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 59) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 60) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 61) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 62) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clInfoBk;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 63) then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= cl3DLight;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgmarco.Cells[ACol,ARow]); // reimprime o texto.
   end;


if RightStr(sgmarco.Cells[ACol,0],3) = 'Sab' then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clBtnFace;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgmarco.Cells[ACol,0],3) = 'Dom' then
   begin
   sgmarco.Canvas.Font.Color:= clBlack;
   sgmarco.Canvas.Brush.Color:= clBtnFace;
   sgmarco.Canvas.FillRect(Rect); // redesenha a celula
   sgmarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgmarco.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgmarco.ColWidths[ACol] div 2;

sgmarco.Canvas.FillRect(Rect);
sgmarco.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);

end;

procedure TfrmPadrao.sgMarcoSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgPadroes.tabIndex+1)+'/'+lano.Caption);
lrow.Caption:= intToStr(Arow);

end;

procedure TfrmPadrao.sgNovembroDblClick(Sender: TObject);
begin
frmSelPadrao := TfrmSelPadrao.Create(self);
frmSelPadrao.Paineis(ldiaSelecionado.Caption,sgNovembro.Cells[0,StrToInt(lrow.Caption)]);
frmSelPadrao.Show;
end;

procedure TfrmPadrao.sgNovembroDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clWhite;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 34) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 35) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 36) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 37) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 38) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 39) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 40) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 41) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 42) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 43) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 44) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 45) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 46) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 47) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 48) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 49) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 50) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 51) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 52) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 53) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 54) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 55) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 56) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 57) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 58) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 59) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 60) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 61) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 62) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clInfoBk;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 63) then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= cl3DLight;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgnovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if RightStr(sgnovembro.Cells[ACol,0],3) = 'Sab' then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clBtnFace;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgnovembro.Cells[ACol,0],3) = 'Dom' then
   begin
   sgnovembro.Canvas.Font.Color:= clBlack;
   sgnovembro.Canvas.Brush.Color:= clBtnFace;
   sgnovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgnovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgnovembro.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgnovembro.ColWidths[ACol] div 2;

sgnovembro.Canvas.FillRect(Rect);
sgnovembro.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);

end;

procedure TfrmPadrao.sgNovembroSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgPadroes.tabIndex+1)+'/'+lano.Caption);
lrow.Caption:= intToStr(Arow);
end;

procedure TfrmPadrao.sgOutubroDblClick(Sender: TObject);
begin
frmSelPadrao := TfrmSelPadrao.Create(self);
frmSelPadrao.Paineis(ldiaSelecionado.Caption,sgAgosto.Cells[0,StrToInt(lrow.Caption)]);
frmSelPadrao.Show;
end;

procedure TfrmPadrao.sgOutubroDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clWhite;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 34) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 35) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 36) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 37) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 38) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 39) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 40) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 41) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 42) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 43) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 44) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 45) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 46) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 47) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 48) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 49) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 50) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 51) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 52) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 53) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 54) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 55) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 56) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 57) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 58) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 59) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 60) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 61) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 62) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clInfoBk;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 63) then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= cl3DLight;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgoutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if RightStr(sgoutubro.Cells[ACol,0],3) = 'Sab' then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clBtnFace;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgoutubro.Cells[ACol,0],3) = 'Dom' then
   begin
   sgoutubro.Canvas.Font.Color:= clBlack;
   sgoutubro.Canvas.Brush.Color:= clBtnFace;
   sgoutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgoutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgoutubro.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgoutubro.ColWidths[ACol] div 2;

sgoutubro.Canvas.FillRect(Rect);
sgoutubro.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);

end;

procedure TfrmPadrao.sgOutubroSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgPadroes.tabIndex+1)+'/'+lano.Caption);
lrow.Caption:= intToStr(Arow);
end;

procedure TfrmPadrao.sgSetembroDblClick(Sender: TObject);
begin
frmSelPadrao := TfrmSelPadrao.Create(self);
frmSelPadrao.Paineis(ldiaSelecionado.Caption,sgOutubro.Cells[0,StrToInt(lrow.Caption)]);
frmSelPadrao.Show;
end;

procedure TfrmPadrao.sgSetembroDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clWhite;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 34) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 35) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 36) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 37) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 38) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 39) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 40) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 41) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 42) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 43) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 44) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 45) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 46) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 47) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 48) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 49) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 50) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 51) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 52) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 53) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 54) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 55) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 56) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 57) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 58) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 59) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 60) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 61) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 62) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clInfoBk;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 63) then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= cl3DLight;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgsetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if RightStr(sgsetembro.Cells[ACol,0],3) = 'Sab' then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clBtnFace;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgsetembro.Cells[ACol,0],3) = 'Dom' then
   begin
   sgsetembro.Canvas.Font.Color:= clBlack;
   sgsetembro.Canvas.Brush.Color:= clBtnFace;
   sgsetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgsetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgsetembro.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgsetembro.ColWidths[ACol] div 2;

sgsetembro.Canvas.FillRect(Rect);
sgsetembro.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);

end;

procedure TfrmPadrao.sgSetembroSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgPadroes.tabIndex+1)+'/'+lano.Caption);
lrow.Caption:= intToStr(Arow);
end;

end.
