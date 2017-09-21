unit UAgendaTecnicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, DB, DBTables, JvYearGrid,StrUtils,
  JvExControls, JvButton, JvNavigationPane, ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvCaptionPanel, Buttons, FMTBcd, SqlExpr;

type
  TfrmAgendaTecnicos = class(TForm)
    pgTecnicos: TPageControl;
    Janeiro: TTabSheet;
    Fevereiro: TTabSheet;
    Marco: TTabSheet;
    Abril: TTabSheet;
    Maio: TTabSheet;
    Junho: TTabSheet;
    Julho: TTabSheet;
    Agosto: TTabSheet;
    Setembro: TTabSheet;
    Novembro: TTabSheet;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    sgJaneiro: TStringGrid;
    sgFevereiro: TStringGrid;
    sgMarco: TStringGrid;
    sgAbril: TStringGrid;
    sgMaio: TStringGrid;
    sgJunho: TStringGrid;
    sgjulho: TStringGrid;
    sgAgosto: TStringGrid;
    sgSetembro: TStringGrid;
    sgOutubro: TStringGrid;
    sgNovembro: TStringGrid;
    sgDezembro: TStringGrid;
    Panel1: TPanel;
    sbAnterior: TSpeedButton;
    sbPosterior: TSpeedButton;
    lAno: TLabel;
    ldiaSelecionado: TLabel;
    qSigaTecnicos: TSQLQuery;
    qPegaTecnicos: TSQLQuery;
    qSigaTecnicosABB_FILIAL: TStringField;
    qSigaTecnicosABB_CODTEC: TStringField;
    qSigaTecnicosABB_NUMOS: TStringField;
    qSigaTecnicosABB_DTINI: TStringField;
    qSigaTecnicosABB_HRINI: TStringField;
    qSigaTecnicosABB_DTFIM: TStringField;
    qSigaTecnicosABB_HRFIM: TStringField;
    qSigaTecnicosABB_ATENDE: TStringField;
    qPegaTecnicosaa1_codtec: TStringField;
    qPegaTecnicosaa1_tecage: TStringField;
    qExpectativa: TSQLQuery;
    qExpectativaZ6_DTATINI: TStringField;
    qExpectativaZ6_STATUS: TStringField;
    qExpectativaZ6_CODTEC: TStringField;
    qExpectativaZ6_DTATFIM: TStringField;
    procedure sgDezembroDblClick(Sender: TObject);
    procedure sgNovembroDblClick(Sender: TObject);
    procedure sgOutubroDblClick(Sender: TObject);
    procedure sgSetembroDblClick(Sender: TObject);
    procedure sgAgostoDblClick(Sender: TObject);
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
    procedure sgAgostoSelectCell(Sender: TObject; ACol, ARow: Integer;
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
    procedure sgJaneiroDblClick(Sender: TObject);
    procedure sgJaneiroSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sbAnteriorClick(Sender: TObject);
    procedure sbPosteriorClick(Sender: TObject);
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
    procedure l(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgJaneiroDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function Bissexto(AYear: Integer): Boolean;
    function DiasDoMes(AYear, AMonth: Integer): Integer;
    procedure EscolheMes(mes : String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgendaTecnicos: TfrmAgendaTecnicos;

implementation

uses UTecnicos,Uprincipal;

{$R *.dfm}

function TfrmAgendaTecnicos.Bissexto(AYear: Integer): Boolean;
begin
  Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or (AYear mod 400 = 0));
end;

function TfrmAgendaTecnicos.DiasDoMes(AYear, AMonth: Integer): Integer;
const
  DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := DaysInMonth[AMonth];
  if (AMonth = 2) and Bissexto(AYear) then Inc(Result);
end;


procedure TfrmAgendaTecnicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.Timer1.Enabled:=true;
qSigaTecnicos.Active:=false;
Action:= caFree;

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

procedure LimpaCelulas(grid : TStringGrid);
var i,j:integer;
begin
    for I := 1 to grid.colcount do
      for j := 1 to grid.RowCount do
        begin
          grid.Cells[i,j]:='';
        end;
      
end;

procedure TfrmAgendaTecnicos.EscolheMes(mes: String);
begin
  if mes = '1' then
    pgTecnicos.TabIndex:=0
  else if mes = '2' then
    pgTecnicos.TabIndex:=1
  else if mes = '3' then
    pgTecnicos.TabIndex:=2
  else if mes = '4' then
    pgTecnicos.TabIndex:=3
  else if mes = '5' then
    pgTecnicos.TabIndex:=4
  else if mes = '6' then
    pgTecnicos.TabIndex:=5
  else if mes = '7' then
    pgTecnicos.TabIndex:=6
  else if mes = '8' then
    pgTecnicos.TabIndex:=7
  else if mes = '9' then
    pgTecnicos.TabIndex:=8
  else if mes = '10' then
    pgTecnicos.TabIndex:=9
  else if mes = '11' then
    pgTecnicos.TabIndex:=10
  else if mes = '12' then
    pgTecnicos.TabIndex:=11
end;

function inverterData(data : string): TDateTime;
var dia,mes,ano : string;
begin

ano:=LeftStr(data,4);
mes:=MidStr(data,5,2);
dia:=RightStr(data,2);

Result:=StrToDate(dia+'/'+mes+'/'+ano);


end;

procedure TfrmAgendaTecnicos.FormShow(Sender: TObject);
var
  meses : array[0..11] of integer;
  i,j,tecnicos: Integer;
  data,dataFinal : Tdate;
  Ano,mes,dia,anoi,mesi,diai : Word;
  tecnicoPassado : string;
  contador : real;
  anoConsulta: string;
  exp: string;
begin

frmPrincipal.Timer1.Enabled:=false;

exp:=#13;

qPegaTecnicos.Active:=false;
qPegaTecnicos.Active:=true;
qSigaTecnicos.Active:=False;
DecodeDate(Date,ano,mes,dia);

EscolheMes(varToStr(mes));


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

qSigaTecnicos.SQL.Text:='select ABB_FILIAL,ABB_CODTEC,ABB_NUMOS,ABB_DTINI,ABB_HRINI,ABB_DTFIM,ABB_HRFIM,ABB_ATENDE from abb010 where (abb010.ABB_DTINI > '+anoConsulta+'0101 and abb010.ABB_DTFIM < '+anoConsulta+'1231) order by abb010.ABB_DTINI';
qSigaTecnicos.Active:=true;

qExpectativa.SQL.Text:='select Z6_DTATINI,Z6_STATUS,Z6_CODTEC,Z6_DTATFIM from sz6010 where (sz6010.Z6_DTATINI > '+anoConsulta+'0101 and sz6010.Z6_DTATFIM < '+anoConsulta+'1231 and sz6010.Z6_STATUS = 1 or sz6010.Z6_STATUS = 3) order by sz6010.Z6_DTATINI';
qExpectativa.Active:=true;

qPegaTecnicos.SQL.Text:='select aa1_codtec,aa1_tecage from aa1010 where (aa1_tecage = ''S'') order by aa1_Codtec';
qPegaTecnicos.Active:=true;

meses[0]:=(DiasDoMes(strtoInt(anoConsulta),1));
meses[1]:=(DiasDoMes(strtoInt(anoConsulta),2));
meses[2]:=(DiasDoMes(strtoInt(anoConsulta),3));
meses[3]:=(DiasDoMes(strtoInt(anoConsulta),4));
meses[4]:=(DiasDoMes(strtoInt(anoConsulta),5));
meses[5]:=(DiasDoMes(strtoInt(anoConsulta),6));
meses[6]:=(DiasDoMes(strtoInt(anoConsulta),7));
meses[7]:=(DiasDoMes(strtoInt(anoConsulta),8));
meses[8]:=(DiasDoMes(strtoInt(anoConsulta),9));
meses[9]:=(DiasDoMes(strtoInt(anoConsulta),10));
meses[10]:=(DiasDoMes(strtoInt(anoConsulta),11));
meses[11]:=(DiasDoMes(strtoInt(anoConsulta),12));





//--------------------------------Janeiro-------------------------------------//

sgJaneiro.Cells[0,0]:='X';
sgJaneiro.ColWidths[0]:=70;

sgJaneiro.ColCount:=meses[0]+2;

for i:=1 to meses[0] do
 begin
   sgJaneiro.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/1/'+anoConsulta));
 end;

sgJaneiro.RowCount:=qPegaTecnicos.RecordCount+1;
qPegaTecnicos.first;
i:=1;
while not(qPegaTecnicos.eof) do
  begin
  if (qPegaTecnicosAA1_CODTEC.AsString <> 'PADRAO') then
  sgJaneiro.Cells[0,i]:=qPegaTecnicosAA1_CODTEC.AsString;

  qPegaTecnicos.next;
  i:=i+1;
  end;
//////////////////////////Expectativa//////////////////////////
qExpectativa.First;
while not(qExpectativa.Eof) do
  begin

     data := inverterData(qExpectativaZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := inverterdata(qExpectativaZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 1) then
    for j := 1 to qExpectativa.RecordCount+1 do
      if qExpectativaZ6_CODTEC.AsString = sgJaneiro.Cells[0,j] then
        for I := dia to diai do begin
          sgJaneiro.Cells[i,j]:=exp;
      end;
     qExpectativa.Next;
  end;

qSigaTecnicos.First;
while not(qSigaTecnicos.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := inverterData(qSigaTecnicosABB_DTINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qSigaTecnicosABB_DTFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

      if (mes=12) and (mes <> mesi) then
        for j := 1 to qPegaTecnicos.RecordCount+1 do
         if qSigaTecnicosABB_CODTEC.AsString = sgDezembro.Cells[0,j] then
          begin
            for I := dia to meses[0] do
                   sgDezembro.Cells[i,j]:='100%';
            for I := 1 to diai do
                  sgJaneiro.Cells[i,j]:='100%';
           end;

    if (mes = 1) then
    for j := 1 to qPegaTecnicos.RecordCount+1 do
      if qSigaTecnicosABB_CODTEC.AsString = sgJaneiro.Cells[0,j] then
        for I := dia to diai do begin
                 if dia = diai then
                sgJaneiro.Cells[i,j]:=FormatFloat('#,##',(StrToFloat(qSigaTecnicosABB_HRFIM.AsString[1]+qSigaTecnicosABB_HRFIM.AsString[2])-StrToFloat(qSigaTecnicosABB_HRINI.AsString[1]+qSigaTecnicosABB_HRINI.AsString[2]))*100/9)+'%'
                else sgJaneiro.Cells[i,j]:='100%';
      end;
     qSigaTecnicos.Next;
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


//------------------------------Feverreiro---------------------------------//
sgFevereiro.Cells[0,0]:='X';
sgFevereiro.ColWidths[0]:=70;

sgFevereiro.ColCount:=meses[1]+2;

for i:=1 to meses[1] do
 begin
   sgFevereiro.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/2/'+anoConsulta));;
 end;

sgFevereiro.RowCount:=qPegaTecnicos.RecordCount+1;

qPegaTecnicos.First;
i:=1;
while not(qPegaTecnicos.Eof) do
  begin
  if qPegaTecnicosAA1_CODTEC.AsString <> 'PADRAO' then
  sgFevereiro.Cells[0,i]:=qPegaTecnicosAA1_CODTEC.AsString;

  qPegaTecnicos.next;
  i:=i+1;
  end;

//////////////////////////Expectativa//////////////////////////
qExpectativa.First;
while not(qExpectativa.Eof) do
  begin

     data := InverterData(qExpectativaZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qExpectativaZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 2) then
    for j := 1 to qExpectativa.RecordCount+1 do
      if qExpectativaZ6_CODTEC.AsString = sgFevereiro.Cells[0,j] then
        for I := dia to diai do begin
          sgfevereiro.Cells[i,j]:=exp;
      end;
     qExpectativa.Next;
  end;

qSigaTecnicos.First;
while not(qSigaTecnicos.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := InverterData(qSigaTecnicosABB_DTINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qSigaTecnicosABB_DTFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

      if (mes=1) and (mes <> mesi) then
        for j := 1 to qPegaTecnicos.RecordCount+1 do
         if qSigaTecnicosABB_CODTEC.AsString = sgjaneiro.Cells[0,j] then
          begin
            for I := dia to meses[1] do
                   sgjaneiro.Cells[i,j]:='100%';
            for I := 1 to diai do
                  sgfevereiro.Cells[i,j]:='100%';
           end;

    if (mes = 2) then
    for j := 1 to qPegaTecnicos.RecordCount+1 do
      if qSigaTecnicosABB_CODTEC.AsString = sgFevereiro.Cells[0,j] then
        for I := dia to diai do begin
                //sgFevereiro.Cells[i,j]:='X';
                 if dia = diai then
                sgFevereiro.Cells[i,j]:=FormatFloat('#,##',(StrToFloat(qSigaTecnicosABB_HRFIM.AsString[1]+qSigaTecnicosABB_HRFIM.AsString[2])-StrToFloat(qSigaTecnicosABB_HRINI.AsString[1]+qSigaTecnicosABB_HRINI.AsString[2]))*100/9)+'%'
                else sgFevereiro.Cells[i,j]:='100%';
      end;
     qSigaTecnicos.Next;
  end;

sgFevereiro.Cells[sgFevereiro.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgFevereiro.RowCount-1 do
  for j := 1 to sgFevereiro.ColCount-1 do
    begin
      if (sgFevereiro.Cells[j,i] = 'X') or (sgFevereiro.Cells[j,0]='%') then
        begin
          if sgFevereiro.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgFevereiro.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;

    end;

//------------------------------Março--------------------------------------//
sgMarco.Cells[0,0]:='X';
sgMarco.ColWidths[0]:=70;

sgMarco.ColCount:=meses[2]+2;

for i:=1 to meses[2] do
 begin
   sgMarco.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/3/'+anoConsulta));;
 end;

sgMarco.RowCount:=qPegaTecnicos.RecordCount+1;

qPegaTecnicos.First;
i:=1;
while not(qPegaTecnicos.Eof) do
  begin
  if qPegaTecnicosAA1_CODTEC.AsString <> 'PADRAO' then
  sgMarco.Cells[0,i]:=qPegaTecnicosAA1_CODTEC.AsString;

  qPegaTecnicos.next;
  i:=i+1;
  end;

//////////////////////////Expectativa//////////////////////////
qExpectativa.First;
while not(qExpectativa.Eof) do
  begin

     data := InverterData(qExpectativaZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qExpectativaZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 3) then
    for j := 1 to qExpectativa.RecordCount+1 do
      if qExpectativaZ6_CODTEC.AsString = sgMarco.Cells[0,j] then
        for I := dia to diai do begin
          sgMarco.Cells[i,j]:=exp;
      end;
     qExpectativa.Next;
  end;

qSigaTecnicos.First;
while not(qSigaTecnicos.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := InverterData(qSigaTecnicosABB_DTINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qSigaTecnicosABB_DTFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

      if (mes=2) and (mes <> mesi) then
        for j := 1 to qPegaTecnicos.RecordCount+1 do
         if qSigaTecnicosABB_CODTEC.AsString = sgfevereiro.Cells[0,j] then
          begin
            for I := dia to meses[2] do
                   sgfevereiro.Cells[i,j]:='100%';
            for I := 1 to diai do
                  sgmarco.Cells[i,j]:='100%';
           end;

    if (mes = 3) then
    for j := 1 to qPegaTecnicos.RecordCount+1 do
      if qSigaTecnicosABB_CODTEC.AsString = sgMarco.Cells[0,j] then
        for I := dia to diai do begin
                //sgMarco.Cells[i,j]:='X';
                 if dia = diai then
                sgMarco.Cells[i,j]:=FormatFloat('#,##',(StrToFloat(qSigaTecnicosABB_HRFIM.AsString[1]+qSigaTecnicosABB_HRFIM.AsString[2])-StrToFloat(qSigaTecnicosABB_HRINI.AsString[1]+qSigaTecnicosABB_HRINI.AsString[2]))*100/9)+'%'
                else sgMarco.Cells[i,j]:='100%';
      end;
     qSigaTecnicos.Next;
  end;

sgMarco.Cells[sgMarco.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgMarco.RowCount-1 do
  for j := 1 to sgMarco.ColCount-1 do
    begin
      if (sgMarco.Cells[j,i] = 'X') or (sgMarco.Cells[j,0]='%') then
        begin
          if sgMarco.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgMarco.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;

    end;

//------------------------------Abril---------------------------------//
sgAbril.Cells[0,0]:='X';
sgAbril.ColWidths[0]:=70;

sgAbril.ColCount:=meses[3]+2;

for i:=1 to meses[3] do
 begin
   sgAbril.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/4/'+anoConsulta));;
 end;

sgAbril.RowCount:=qPegaTecnicos.RecordCount+1;

qPegaTecnicos.First;
i:=1;
while not(qPegaTecnicos.Eof) do
  begin
  if qPegaTecnicosAA1_CODTEC.AsString <> 'PADRAO' then
  sgAbril.Cells[0,i]:=qPegaTecnicosAA1_CODTEC.AsString;

  qPegaTecnicos.next;
  i:=i+1;
  end;

//////////////////////////Expectativa//////////////////////////
qExpectativa.First;
while not(qExpectativa.Eof) do
  begin

     data := InverterData(qExpectativaZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qExpectativaZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 4) then
    for j := 1 to qExpectativa.RecordCount+1 do
      if qExpectativaZ6_CODTEC.AsString = sgAbril.Cells[0,j] then
        for I := dia to diai do begin
          sgAbril.Cells[i,j]:=exp;
      end;
     qExpectativa.Next;
  end;

qSigaTecnicos.First;
while not(qSigaTecnicos.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := InverterData(qSigaTecnicosABB_DTINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qSigaTecnicosABB_DTFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

      if (mes=3) and (mes <> mesi) then
        for j := 1 to qPegaTecnicos.RecordCount+1 do
         if qSigaTecnicosABB_CODTEC.AsString = sgmarco.Cells[0,j] then
          begin
            for I := dia to meses[3] do
                   sgmarco.Cells[i,j]:='100%';
            for I := 1 to diai do
                  sgabril.Cells[i,j]:='100%';
           end;

    if (mes = 4) then
    for j := 1 to qPegaTecnicos.RecordCount+1 do
      if qSigaTecnicosABB_CODTEC.AsString = sgAbril.Cells[0,j] then
        for I := dia to diai do begin
                //sgAbril.Cells[i,j]:='X';
                 if dia = diai then
                sgAbril.Cells[i,j]:=FormatFloat('#,##',(StrToFloat(qSigaTecnicosABB_HRFIM.AsString[1]+qSigaTecnicosABB_HRFIM.AsString[2])-StrToFloat(qSigaTecnicosABB_HRINI.AsString[1]+qSigaTecnicosABB_HRINI.AsString[2]))*100/9)+'%'
                else sgAbril.Cells[i,j]:='100%';
      end;
     qSigaTecnicos.Next;
  end;

sgAbril.Cells[sgAbril.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgAbril.RowCount-1 do
  for j := 1 to sgAbril.ColCount-1 do
    begin
      if (sgAbril.Cells[j,i] = 'X') or (sgAbril.Cells[j,0]='%') then
        begin
          if sgAbril.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgAbril.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;

    end;

  //------------------------------Maio---------------------------------//
sgMaio.Cells[0,0]:='X';
sgMaio.ColWidths[0]:=70;

sgMaio.ColCount:=meses[4]+2;

for i:=1 to meses[4] do
 begin
   sgMaio.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/5/'+anoConsulta));;
 end;

sgMaio.RowCount:=qPegaTecnicos.RecordCount+1;

qPegaTecnicos.First;
i:=1;
while not(qPegaTecnicos.Eof) do
  begin
  if qPegaTecnicosAA1_CODTEC.AsString <> 'PADRAO' then
  sgMaio.Cells[0,i]:=qPegaTecnicosAA1_CODTEC.AsString;

  qPegaTecnicos.next;
  i:=i+1;
  end;

//////////////////////////Expectativa//////////////////////////
qExpectativa.First;
while not(qExpectativa.Eof) do
  begin

     data := InverterData(qExpectativaZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qExpectativaZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 5) then
    for j := 1 to qExpectativa.RecordCount+1 do
      if qExpectativaZ6_CODTEC.AsString = sgMaio.Cells[0,j] then
        for I := dia to diai do begin
          sgMaio.Cells[i,j]:=exp;
      end;
     qExpectativa.Next;
  end;

qSigaTecnicos.First;
while not(qSigaTecnicos.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := InverterData(qSigaTecnicosABB_DTINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qSigaTecnicosABB_DTFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

      if (mes=4) and (mes <> mesi) then
        for j := 1 to qPegaTecnicos.RecordCount+1 do
         if qSigaTecnicosABB_CODTEC.AsString = sgabril.Cells[0,j] then
          begin
            for I := dia to meses[4] do
                   sgabril.Cells[i,j]:='100%';
            for I := 1 to diai do
                  sgMaio.Cells[i,j]:='100%';
           end;

    if (mes = 5) then
    for j := 1 to qPegaTecnicos.RecordCount+1 do
      if qSigaTecnicosABB_CODTEC.AsString = sgMaio.Cells[0,j] then
        for I := dia to diai do begin
                //sgMaio.Cells[i,j]:='X';
                 if dia = diai then
                sgMaio.Cells[i,j]:=FormatFloat('#,##',(StrToFloat(qSigaTecnicosABB_HRFIM.AsString[1]+qSigaTecnicosABB_HRFIM.AsString[2])-StrToFloat(qSigaTecnicosABB_HRINI.AsString[1]+qSigaTecnicosABB_HRINI.AsString[2]))*100/9)+'%'
                else sgMaio.Cells[i,j]:='100%';
      end;
     qSigaTecnicos.Next;
  end;

sgMaio.Cells[sgMaio.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgMaio.RowCount-1 do
  for j := 1 to sgMaio.ColCount-1 do
    begin
      if (sgMaio.Cells[j,i] = 'X') or (sgMaio.Cells[j,0]='%') then
        begin
          if sgMaio.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgMaio.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;

    end;

//------------------------------Junho---------------------------------//
sgJunho.Cells[0,0]:='X';
sgJunho.ColWidths[0]:=70;

sgJunho.ColCount:=meses[5]+2;

for i:=1 to meses[5] do
 begin
   sgJunho.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/6/'+anoConsulta));;
 end;

sgJunho.RowCount:=qPegaTecnicos.RecordCount+1;

qPegaTecnicos.First;
i:=1;
while not(qPegaTecnicos.Eof) do
  begin
  if qPegaTecnicosAA1_CODTEC.AsString <> 'PADRAO' then
  sgJunho.Cells[0,i]:=qPegaTecnicosAA1_CODTEC.AsString;

  qPegaTecnicos.next;
  i:=i+1;
  end;

//////////////////////////Expectativa//////////////////////////
qExpectativa.First;
while not(qExpectativa.Eof) do
  begin

     data := InverterData(qExpectativaZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qExpectativaZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 6) then
    for j := 1 to qExpectativa.RecordCount+1 do
      if qExpectativaZ6_CODTEC.AsString = sgJunho.Cells[0,j] then
        for I := dia to diai do begin
          sgJunho.Cells[i,j]:=exp;
      end;
     qExpectativa.Next;
  end;

qSigaTecnicos.First;
while not(qSigaTecnicos.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := InverterData(qSigaTecnicosABB_DTINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qSigaTecnicosABB_DTFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

      if (mes=5) and (mes <> mesi) then
        for j := 1 to qPegaTecnicos.RecordCount+1 do
         if qSigaTecnicosABB_CODTEC.AsString = sgmaio.Cells[0,j] then
          begin
            for I := dia to meses[5] do
                   sgmaio.Cells[i,j]:='100%';
            for I := 1 to diai do
                  sgJunho.Cells[i,j]:='100%';
           end;

    if (mes = 6) then
    for j := 1 to qPegaTecnicos.RecordCount+1 do
      if qSigaTecnicosABB_CODTEC.AsString = sgJunho.Cells[0,j] then
        for I := dia to diai do begin
                 if dia = diai then
                sgJunho.Cells[i,j]:=FormatFloat('#,##',(StrToFloat(qSigaTecnicosABB_HRFIM.AsString[1]+qSigaTecnicosABB_HRFIM.AsString[2])-StrToFloat(qSigaTecnicosABB_HRINI.AsString[1]+qSigaTecnicosABB_HRINI.AsString[2]))*100/9)+'%'
                else sgJunho.Cells[i,j]:='100%';

      end;
     qSigaTecnicos.Next;
  end;

sgJunho.Cells[sgJunho.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgJunho.RowCount-1 do
  for j := 1 to sgJunho.ColCount-1 do
    begin
      if (sgJunho.Cells[j,i] = 'X') or (sgJunho.Cells[j,0]='%') then
        begin
          if sgJunho.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgJunho.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;

    end;

//------------------------------Julho---------------------------------//
sgJulho.Cells[0,0]:='X';
sgJulho.ColWidths[0]:=70;

sgJulho.ColCount:=meses[6]+2;

for i:=1 to meses[6] do
 begin
   sgJulho.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/7/'+anoConsulta));;
 end;

sgJulho.RowCount:=qPegaTecnicos.RecordCount+1;

qPegaTecnicos.First;
i:=1;
while not(qPegaTecnicos.Eof) do
  begin
  if qPegaTecnicosAA1_CODTEC.AsString <> 'PADRAO' then
  sgJulho.Cells[0,i]:=qPegaTecnicosAA1_CODTEC.AsString;

  qPegaTecnicos.next;
  i:=i+1;
  end;

//////////////////////////Expectativa//////////////////////////
qExpectativa.First;
while not(qExpectativa.Eof) do
  begin

     data := InverterData(qExpectativaZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qExpectativaZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 7) then
    for j := 1 to qExpectativa.RecordCount+1 do
      if qExpectativaZ6_CODTEC.AsString = sgJulho.Cells[0,j] then
        for I := dia to diai do begin
          sgJulho.Cells[i,j]:=exp;
      end;
     qExpectativa.Next;
  end;

qSigaTecnicos.First;
while not(qSigaTecnicos.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := InverterData(qSigaTecnicosABB_DTINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qSigaTecnicosABB_DTFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

      if (mes=6) and (mes <> mesi) then
        for j := 1 to qPegaTecnicos.RecordCount+1 do
         if qSigaTecnicosABB_CODTEC.AsString = sgjunho.Cells[0,j] then
          begin
            for I := dia to meses[6] do
                   sgjunho.Cells[i,j]:='100%';
            for I := 1 to diai do
                  sgjulho.Cells[i,j]:='100%';
           end;

    if (mes = 7) then
    for j := 1 to qPegaTecnicos.RecordCount+1 do
      if qSigaTecnicosABB_CODTEC.AsString = sgJulho.Cells[0,j] then
        for I := dia to diai do begin
                //sgJulho.Cells[i,j]:='X';
                if dia = diai then
                sgJulho.Cells[i,j]:=FormatFloat('#,##',(StrToFloat(qSigaTecnicosABB_HRFIM.AsString[1]+qSigaTecnicosABB_HRFIM.AsString[2])-StrToFloat(qSigaTecnicosABB_HRINI.AsString[1]+qSigaTecnicosABB_HRINI.AsString[2]))*100/9)+'%'
                else sgJulho.Cells[i,j]:='100%';
      end;
     qSigaTecnicos.Next;
  end;

sgJulho.Cells[sgJulho.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgJulho.RowCount-1 do
  for j := 1 to sgJulho.ColCount-1 do
    begin
      if (sgJulho.Cells[j,i] = 'X') or (sgJulho.Cells[j,0]='%') then
        begin
          if sgJulho.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgJulho.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;

    end;

//------------------------------Agosto---------------------------------//
sgAgosto.Cells[0,0]:='X';
sgAgosto.ColWidths[0]:=70;

sgAgosto.ColCount:=meses[7]+2;

for i:=1 to meses[7] do
 begin
   sgAgosto.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/8/'+anoConsulta));;
 end;

sgAgosto.RowCount:=qPegaTecnicos.RecordCount+1;

qPegaTecnicos.First;
i:=1;
while not(qPegaTecnicos.Eof) do
  begin
  if qPegaTecnicosAA1_CODTEC.AsString <> 'PADRAO' then
  sgAgosto.Cells[0,i]:=qPegaTecnicosAA1_CODTEC.AsString;

  qPegaTecnicos.next;
  i:=i+1;
  end;

//////////////////////////Expectativa//////////////////////////
qExpectativa.First;
while not(qExpectativa.Eof) do
  begin

     data := InverterData(qExpectativaZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qExpectativaZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 8) then
    for j := 1 to qExpectativa.RecordCount+1 do
      if qExpectativaZ6_CODTEC.AsString = sgAgosto.Cells[0,j] then
        for I := dia to diai do begin
          sgAgosto.Cells[i,j]:=exp;
      end;
     qExpectativa.Next;
  end;

qSigaTecnicos.First;
while not(qSigaTecnicos.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := InverterData(qSigaTecnicosABB_DTINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qSigaTecnicosABB_DTFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes=7) and (mes <> mesi) then
        for j := 1 to qPegaTecnicos.RecordCount+1 do
         if qSigaTecnicosABB_CODTEC.AsString = sgjulho.Cells[0,j] then
          begin
            for I := dia to meses[7] do
                   sgjulho.Cells[i,j]:='100%';
            for I := 1 to diai do
                  sgAgosto.Cells[i,j]:='100%';
           end;

    if (mes = 8) then
    for j := 1 to qPegaTecnicos.RecordCount+1 do
      if qSigaTecnicosABB_CODTEC.AsString = sgAgosto.Cells[0,j] then
        for I := dia to diai do begin
                //sgAgosto.Cells[i,j]:='X';
                 if dia = diai then
                sgAgosto.Cells[i,j]:=FormatFloat('#,##',(StrToFloat(qSigaTecnicosABB_HRFIM.AsString[1]+qSigaTecnicosABB_HRFIM.AsString[2])-StrToFloat(qSigaTecnicosABB_HRINI.AsString[1]+qSigaTecnicosABB_HRINI.AsString[2]))*100/9)+'%'
                else sgAgosto.Cells[i,j]:='100%';
      end;
     qSigaTecnicos.Next;
  end;

sgAgosto.Cells[sgAgosto.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgAgosto.RowCount-1 do
  for j := 1 to sgAgosto.ColCount-1 do
    begin
      if (sgAgosto.Cells[j,i] = 'X') or (sgAgosto.Cells[j,0]='%') then
        begin
          if sgAgosto.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgAgosto.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;

    end;

//------------------------------Setembro---------------------------------//
sgSetembro.Cells[0,0]:='X';
sgSetembro.ColWidths[0]:=70;

sgSetembro.ColCount:=meses[8]+2;

for i:=1 to meses[8] do
 begin
   sgSetembro.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/9/'+anoConsulta));;
 end;

sgSetembro.RowCount:=qPegaTecnicos.RecordCount+1;

qPegaTecnicos.First;
i:=1;
while not(qPegaTecnicos.Eof) do
  begin
  if qPegaTecnicosAA1_CODTEC.AsString <> 'PADRAO' then
  sgSetembro.Cells[0,i]:=qPegaTecnicosAA1_CODTEC.AsString;

  qPegaTecnicos.next;
  i:=i+1;
  end;

//////////////////////////Expectativa//////////////////////////
qExpectativa.First;
while not(qExpectativa.Eof) do
  begin

     data := InverterData(qExpectativaZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qExpectativaZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 9) then
    for j := 1 to qExpectativa.RecordCount+1 do
      if qExpectativaZ6_CODTEC.AsString = sgSetembro.Cells[0,j] then
        for I := dia to diai do begin
          sgSetembro.Cells[i,j]:=exp;
      end;
     qExpectativa.Next;
  end;

qSigaTecnicos.First;
while not(qSigaTecnicos.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := InverterData(qSigaTecnicosABB_DTINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qSigaTecnicosABB_DTFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

      if (mes=8) and (mes <> mesi) then
        for j := 1 to qPegaTecnicos.RecordCount+1 do
         if qSigaTecnicosABB_CODTEC.AsString = sgAgosto.Cells[0,j] then
          begin
            for I := dia to meses[8] do
                   sgAgosto.Cells[i,j]:='100%';
            for I := 1 to diai do
                  sgSetembro.Cells[i,j]:='100%';
           end;

    if (mes = 9) then
    for j := 1 to qPegaTecnicos.RecordCount+1 do
      if qSigaTecnicosABB_CODTEC.AsString = sgSetembro.Cells[0,j] then
        for I := dia to diai do begin
                //sgSetembro.Cells[i,j]:='X';
                 if dia = diai then
                sgSetembro.Cells[i,j]:=FormatFloat('#,##',(StrToFloat(qSigaTecnicosABB_HRFIM.AsString[1]+qSigaTecnicosABB_HRFIM.AsString[2])-StrToFloat(qSigaTecnicosABB_HRINI.AsString[1]+qSigaTecnicosABB_HRINI.AsString[2]))*100/9)+'%'
                else sgSetembro.Cells[i,j]:='100%';
      end;
     qSigaTecnicos.Next;
  end;

sgSetembro.Cells[sgSetembro.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgSetembro.RowCount-1 do
  for j := 1 to sgSetembro.ColCount-1 do
    begin
      if (sgSetembro.Cells[j,i] = 'X') or (sgSetembro.Cells[j,0]='%') then
        begin
          if sgSetembro.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgSetembro.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;

    end;


//------------------------------Outubro---------------------------------//
sgOutubro.Cells[0,0]:='X';
sgOutubro.ColWidths[0]:=70;

sgOutubro.ColCount:=meses[9]+2;

for i:=1 to meses[9] do
 begin
   sgOutubro.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/10/'+anoConsulta));;
 end;

sgOutubro.RowCount:=qPegaTecnicos.RecordCount+1;

qPegaTecnicos.First;
i:=1;
while not(qPegaTecnicos.Eof) do
  begin
  if qPegaTecnicosAA1_CODTEC.AsString <> 'PADRAO' then
  sgOutubro.Cells[0,i]:=qPegaTecnicosAA1_CODTEC.AsString;

  qPegaTecnicos.next;
  i:=i+1;
  end;

//////////////////////////Expectativa//////////////////////////
qExpectativa.First;
while not(qExpectativa.Eof) do
  begin

     data := InverterData(qExpectativaZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qExpectativaZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 10) then
    for j := 1 to qExpectativa.RecordCount+1 do
      if qExpectativaZ6_CODTEC.AsString = sgOutubro.Cells[0,j] then
        for I := dia to diai do begin
          sgOutubro.Cells[i,j]:=exp;
      end;
     qExpectativa.Next;
  end;

qSigaTecnicos.First;
while not(qSigaTecnicos.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := InverterData(qSigaTecnicosABB_DTINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qSigaTecnicosABB_DTFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

      if (mes=9) and (mes <> mesi) then
        for j := 1 to qPegaTecnicos.RecordCount+1 do
         if qSigaTecnicosABB_CODTEC.AsString = sgSetembro.Cells[0,j] then
          begin
            for I := dia to meses[9] do
                   sgSetembro.Cells[i,j]:='100%';
            for I := 1 to diai do
                  sgOutubro.Cells[i,j]:='100%';
           end;

    if (mes = 10) then
    for j := 1 to qPegaTecnicos.RecordCount+1 do
      if qSigaTecnicosABB_CODTEC.AsString = sgOutubro.Cells[0,j] then
        for I := dia to diai do begin
                //sgOutubro.Cells[i,j]:='X';
                 if dia = diai then
                sgOutubro.Cells[i,j]:=FormatFloat('#,##',(StrToFloat(qSigaTecnicosABB_HRFIM.AsString[1]+qSigaTecnicosABB_HRFIM.AsString[2])-StrToFloat(qSigaTecnicosABB_HRINI.AsString[1]+qSigaTecnicosABB_HRINI.AsString[2]))*100/9)+'%'
                else sgOutubro.Cells[i,j]:='100%';
      end;
     qSigaTecnicos.Next;
  end;

sgOutubro.Cells[sgOutubro.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgOutubro.RowCount-1 do
  for j := 1 to sgOutubro.ColCount-1 do
    begin
      if (sgOutubro.Cells[j,i] = 'X') or (sgOutubro.Cells[j,0]='%') then
        begin
          if sgOutubro.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgOutubro.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;

    end;

//------------------------------Novembro---------------------------------//
sgNovembro.Cells[0,0]:='X';
sgNovembro.ColWidths[0]:=70;

sgNovembro.ColCount:=meses[10]+2;

for i:=1 to meses[10] do
 begin
   sgNovembro.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/11/'+anoConsulta));;
 end;

sgNovembro.RowCount:=qPegaTecnicos.RecordCount+1;

qPegaTecnicos.First;
i:=1;
while not(qPegaTecnicos.Eof) do
  begin
  if qPegaTecnicosAA1_CODTEC.AsString <> 'PADRAO' then
  sgNovembro.Cells[0,i]:=qPegaTecnicosAA1_CODTEC.AsString;

  qPegaTecnicos.next;
  i:=i+1;
  end;

//////////////////////////Expectativa//////////////////////////
qExpectativa.First;
while not(qExpectativa.Eof) do
  begin

     data := InverterData(qExpectativaZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qExpectativaZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 10) then
    for j := 1 to qExpectativa.RecordCount+1 do
      if qExpectativaZ6_CODTEC.AsString = sgNovembro.Cells[0,j] then
        for I := dia to diai do begin
          sgNovembro.Cells[i,j]:=exp;
      end;
     qExpectativa.Next;
  end;

qSigaTecnicos.First;
while not(qSigaTecnicos.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := InverterData(qSigaTecnicosABB_DTINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qSigaTecnicosABB_DTFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

      if (mes=11) and (mes <> mesi) then
        for j := 1 to qPegaTecnicos.RecordCount+1 do
         if qSigaTecnicosABB_CODTEC.AsString = sgOutubro.Cells[0,j] then
          begin
            for I := dia to meses[10] do
                   sgOutubro.Cells[i,j]:='100%';
            for I := 1 to diai do
                  sgNovembro.Cells[i,j]:='100%';
           end;

    if (mes =11) then
    for j := 1 to qPegaTecnicos.RecordCount+1 do
      if qSigaTecnicosABB_CODTEC.AsString = sgNovembro.Cells[0,j] then
        for I := dia to diai do begin
                //sgNovembro.Cells[i,j]:='X';
                 if dia = diai then
                sgNovembro.Cells[i,j]:=FormatFloat('#,##',(StrToFloat(qSigaTecnicosABB_HRFIM.AsString[1]+qSigaTecnicosABB_HRFIM.AsString[2])-StrToFloat(qSigaTecnicosABB_HRINI.AsString[1]+qSigaTecnicosABB_HRINI.AsString[2]))*100/9)+'%'
                else sgNovembro.Cells[i,j]:='100%';
      end;
     qSigaTecnicos.Next;
  end;

sgNovembro.Cells[sgNovembro.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgNovembro.RowCount-1 do
  for j := 1 to sgNovembro.ColCount-1 do
    begin
      if (sgNovembro.Cells[j,i] = 'X') or (sgNovembro.Cells[j,0]='%') then
        begin
          if sgNovembro.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgNovembro.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;

    end;

//------------------------------Dezembro---------------------------------//
sgDezembro.Cells[0,0]:='X';
sgDezembro.ColWidths[0]:=70;

sgDezembro.ColCount:=meses[11]+2;

for i:=1 to meses[11] do
 begin
   sgDezembro.Cells[i,0]:=IntToStr(i)+'/'+(RetornaDia(IntToStr(i)+'/12/'+anoConsulta));;
 end;

sgDezembro.RowCount:=qPegaTecnicos.RecordCount+1;

qPegaTecnicos.First;
i:=1;
while not(qPegaTecnicos.Eof) do
  begin
  if qPegaTecnicosAA1_CODTEC.AsString <> 'PADRAO' then
  sgDezembro.Cells[0,i]:=qPegaTecnicosAA1_CODTEC.AsString;

  qPegaTecnicos.next;
  i:=i+1;
  end;

//////////////////////////Expectativa//////////////////////////
qExpectativa.First;
while not(qExpectativa.Eof) do
  begin

     data := InverterData(qExpectativaZ6_DTATINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qExpectativaZ6_DTATFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

    if (mes = 11) then
    for j := 1 to qExpectativa.RecordCount+1 do
      if qExpectativaZ6_CODTEC.AsString = sgDezembro.Cells[0,j] then
        for I := dia to diai do begin
          sgDezembro.Cells[i,j]:=exp;
      end;
     qExpectativa.Next;
  end;

qSigaTecnicos.First;
while not(qSigaTecnicos.Eof) do
  begin
    //showmessage(qSigaABB_DTINI.AsString);

     data := InverterData(qSigaTecnicosABB_DTINI.AsString);
     DecodeDate(Data,ano,mes,dia);

     dataFinal := InverterData(qSigaTecnicosABB_DTFIM.AsString);
     DecodeDate(dataFinal,anoi,mesi,diai);

      if (mes=12) and (mes <> mesi) then
        for j := 1 to qPegaTecnicos.RecordCount+1 do
         if qSigaTecnicosABB_CODTEC.AsString = sgNovembro.Cells[0,j] then
          begin
            for I := dia to meses[11] do
                   sgNovembro.Cells[i,j]:='100%';
            for I := 1 to diai do
                  sgDezembro.Cells[i,j]:='100%';
           end;

    if (mes = 12) then
    for j := 1 to qPegaTecnicos.RecordCount+1 do
      if qSigaTecnicosABB_CODTEC.AsString = sgDezembro.Cells[0,j] then
        for I := dia to diai do begin
                //sgDezembro.Cells[i,j]:='X';
                 if dia = diai then
                sgDezembro.Cells[i,j]:=FormatFloat('#,##',(StrToFloat(qSigaTecnicosABB_HRFIM.AsString[1]+qSigaTecnicosABB_HRFIM.AsString[2])-StrToFloat(qSigaTecnicosABB_HRINI.AsString[1]+qSigaTecnicosABB_HRINI.AsString[2]))*100/9)+'%'
                else sgDezembro.Cells[i,j]:='100%';
      end;
     qSigaTecnicos.Next;
  end;

sgDezembro.Cells[sgDezembro.ColCount-1,0]:='%';
contador :=0;
for i := 1 to sgDezembro.RowCount-1 do
  for j := 1 to sgDezembro.ColCount-1 do
    begin
      if (sgDezembro.Cells[j,i] = 'X') or (sgDezembro.Cells[j,0]='%') then
        begin
          if sgDezembro.Cells[j,0] <> '%'
            then contador:= contador+1
          else begin
            sgDezembro.Cells[j,i]:=( FormatFloat('#,##',((contador*100)/(j-1)))+'%');
            contador:=0;
          end;
        end;

    end;

qSigaTecnicos.Active:=false;
qPegaTecnicos.Active:=false;

end;

procedure TfrmAgendaTecnicos.l(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clWhite;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clInfoBk;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= cl3DLight;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clInfoBk;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= cl3DLight;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clInfoBk;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= cl3DLight;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clInfoBk;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= cl3DLight;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clInfoBk;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= cl3DLight;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clInfoBk;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= cl3DLight;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clInfoBk;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= cl3DLight;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clInfoBk;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= cl3DLight;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clInfoBk;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= cl3DLight;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clInfoBk;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= cl3DLight;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clInfoBk;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= cl3DLight;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,ARow]); // reimprime o texto.
   end;

//  if RightStr(sgFevereiro.Cells[ACol,0],3) = RightStr(sgFevereiro.Cells[ACol,0],3)

if RightStr(sgFevereiro.Cells[ACol,0],3) = 'Sab' then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clBtnFace;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgFevereiro.Cells[ACol,0],3) = 'Dom' then
   begin
   sgFevereiro.Canvas.Font.Color:= clBlack;
   sgFevereiro.Canvas.Brush.Color:= clBtnFace;
   sgFevereiro.Canvas.FillRect(Rect); // redesenha a celula
   sgFevereiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgFevereiro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgFevereiro.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgFevereiro.ColWidths[ACol] div 2;

sgFevereiro.Canvas.FillRect(Rect);
sgFevereiro.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);



end;



procedure TfrmAgendaTecnicos.sbAnteriorClick(Sender: TObject);
begin

lAno.Caption:=IntToStr(StrToInt(lAno.Caption)-1);
frmAgendaTecnicos.OnShow(self);

end;

procedure TfrmAgendaTecnicos.sbPosteriorClick(Sender: TObject);
begin

lAno.Caption:=IntToStr(StrToInt(lAno.Caption)+1);
frmAgendaTecnicos.OnShow(self);

end;

procedure TfrmAgendaTecnicos.sgAbrilDblClick(Sender: TObject);
begin
frmTecnico := TfrmTecnico.Create(self);
frmTecnico.Paineis(ldiaSelecionado.Caption);
frmTecnico.Show;
end;

procedure TfrmAgendaTecnicos.sgAbrilDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clWhite;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clInfoBk;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= cl3DLight;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clInfoBk;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= cl3DLight;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clInfoBk;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= cl3DLight;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clInfoBk;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= cl3DLight;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clInfoBk;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= cl3DLight;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clInfoBk;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= cl3DLight;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clInfoBk;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= cl3DLight;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clInfoBk;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= cl3DLight;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clInfoBk;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= cl3DLight;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clInfoBk;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= cl3DLight;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clInfoBk;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= cl3DLight;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,ARow]); // reimprime o texto.
   end;

if RightStr(sgAbril.Cells[ACol,0],3) = 'Sab' then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clBtnFace;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgAbril.Cells[ACol,0],3) = 'Dom' then
   begin
   sgAbril.Canvas.Font.Color:= clBlack;
   sgAbril.Canvas.Brush.Color:= clBtnFace;
   sgAbril.Canvas.FillRect(Rect); // redesenha a celula
   sgAbril.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAbril.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgAbril.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgAbril.ColWidths[ACol] div 2;

sgAbril.Canvas.FillRect(Rect);
sgAbril.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);




end;

procedure TfrmAgendaTecnicos.sgAbrilSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgTecnicos.tabIndex+1)+'/'+lano.Caption);

end;

procedure TfrmAgendaTecnicos.sgAgostoDblClick(Sender: TObject);
begin
frmTecnico := TfrmTecnico.Create(self);
frmTecnico.Paineis(ldiaSelecionado.Caption);
frmTecnico.Show;
end;

procedure TfrmAgendaTecnicos.sgAgostoDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clwhite;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clInfoBk;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= cl3DLight;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clInfoBk;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= cl3DLight;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clInfoBk;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= cl3DLight;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clInfoBk;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= cl3DLight;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clInfoBk;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= cl3DLight;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clInfoBk;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= cl3DLight;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clInfoBk;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= cl3DLight;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clInfoBk;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= cl3DLight;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clInfoBk;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= cl3DLight;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clInfoBk;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= cl3DLight;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clInfoBk;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= cl3DLight;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,ARow]); // reimprime o texto.
   end;

if RightStr(sgAgosto.Cells[ACol,0],3) = 'Sab' then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clBtnFace;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgAgosto.Cells[ACol,0],3) = 'Dom' then
   begin
   sgAgosto.Canvas.Font.Color:= clBlack;
   sgAgosto.Canvas.Brush.Color:= clBtnFace;
   sgAgosto.Canvas.FillRect(Rect); // redesenha a celula
   sgAgosto.Canvas.TextOut(Rect.Left+2,Rect.Top,sgAgosto.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgAgosto.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgAgosto.ColWidths[ACol] div 2;

sgAgosto.Canvas.FillRect(Rect);
sgAgosto.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);




end;

procedure TfrmAgendaTecnicos.sgAgostoSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgTecnicos.tabIndex+1)+'/'+lano.Caption);
end;

procedure TfrmAgendaTecnicos.sgDezembroDblClick(Sender: TObject);
begin
frmTecnico := TfrmTecnico.Create(self);
frmTecnico.Paineis(ldiaSelecionado.Caption);
frmTecnico.Show;
end;

procedure TfrmAgendaTecnicos.sgDezembroDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clwhite;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clInfoBk;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= cl3DLight;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clInfoBk;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= cl3DLight;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clInfoBk;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= cl3DLight;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clInfoBk;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= cl3DLight;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clInfoBk;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= cl3DLight;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clInfoBk;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= cl3DLight;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clInfoBk;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= cl3DLight;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clInfoBk;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= cl3DLight;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clInfoBk;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= cl3DLight;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clInfoBk;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= cl3DLight;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clInfoBk;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= cl3DLight;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if RightStr(sgDezembro.Cells[ACol,0],3) = 'Sab' then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clBtnFace;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgDezembro.Cells[ACol,0],3) = 'Dom' then
   begin
   sgDezembro.Canvas.Font.Color:= clBlack;
   sgDezembro.Canvas.Brush.Color:= clBtnFace;
   sgDezembro.Canvas.FillRect(Rect); // redesenha a celula
   sgDezembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgDezembro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgDezembro.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgDezembro.ColWidths[ACol] div 2;

sgDezembro.Canvas.FillRect(Rect);
sgDezembro.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);


end;

procedure TfrmAgendaTecnicos.sgDezembroSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgTecnicos.tabIndex+1)+'/'+lano.Caption);
end;

procedure TfrmAgendaTecnicos.sgFevereiroDblClick(Sender: TObject);
begin
frmTecnico := TfrmTecnico.Create(self);
frmTecnico.Paineis(ldiaSelecionado.Caption);
frmTecnico.Show;
end;

procedure TfrmAgendaTecnicos.sgFevereiroSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgTecnicos.tabIndex+1)+'/'+lano.Caption);

end;

procedure TfrmAgendaTecnicos.sgJaneiroDblClick(Sender: TObject);
begin
frmTecnico := TfrmTecnico.Create(self);
frmTecnico.Paineis(ldiaSelecionado.Caption);
frmTecnico.Show;
end;

procedure TfrmAgendaTecnicos.sgJaneiroDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clwhite;
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

if RightStr(sgJaneiro.Cells[ACol,0],3) = 'Sab' then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clBtnFace;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgJaneiro.Cells[ACol,0],3) = 'Dom' then
   begin
   sgJaneiro.Canvas.Font.Color:= clBlack;
   sgJaneiro.Canvas.Brush.Color:= clBtnFace;
   sgJaneiro.Canvas.FillRect(Rect); // redesenha a celula
   sgJaneiro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJaneiro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgJaneiro.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgJaneiro.ColWidths[ACol] div 2;

sgJaneiro.Canvas.FillRect(Rect);
sgJaneiro.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);


end;

procedure TfrmAgendaTecnicos.sgJaneiroSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgTecnicos.tabIndex+1)+'/'+lano.Caption);
end;

procedure TfrmAgendaTecnicos.sgjulhoDblClick(Sender: TObject);
begin
frmTecnico := TfrmTecnico.Create(self);
frmTecnico.Paineis(ldiaSelecionado.Caption);
frmTecnico.Show;
end;

procedure TfrmAgendaTecnicos.sgjulhoDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clwhite;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clInfoBk;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= cl3DLight;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clInfoBk;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= cl3DLight;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clInfoBk;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= cl3DLight;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clInfoBk;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= cl3DLight;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clInfoBk;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= cl3DLight;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clInfoBk;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= cl3DLight;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clInfoBk;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= cl3DLight;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clInfoBk;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= cl3DLight;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clInfoBk;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= cl3DLight;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clInfoBk;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= cl3DLight;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clInfoBk;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= cl3DLight;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if RightStr(sgJulho.Cells[ACol,0],3) = 'Sab' then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clBtnFace;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgJulho.Cells[ACol,0],3) = 'Dom' then
   begin
   sgJulho.Canvas.Font.Color:= clBlack;
   sgJulho.Canvas.Brush.Color:= clBtnFace;
   sgJulho.Canvas.FillRect(Rect); // redesenha a celula
   sgJulho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJulho.Cells[ACol,0]); // reimprime o texto.
   end;

texto := sgJulho.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgJulho.ColWidths[ACol] div 2;

sgJulho.Canvas.FillRect(Rect);
sgJulho.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);




end;

procedure TfrmAgendaTecnicos.sgjulhoSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgTecnicos.tabIndex+1)+'/'+lano.Caption);
end;

procedure TfrmAgendaTecnicos.sgJunhoDblClick(Sender: TObject);
begin
frmTecnico := TfrmTecnico.Create(self);
frmTecnico.Paineis(ldiaSelecionado.Caption);
frmTecnico.Show;
end;

procedure TfrmAgendaTecnicos.sgJunhoDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clwhite;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clInfoBk;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= cl3DLight;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clInfoBk;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= cl3DLight;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clInfoBk;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= cl3DLight;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clInfoBk;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= cl3DLight;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clInfoBk;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= cl3DLight;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clInfoBk;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= cl3DLight;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clInfoBk;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= cl3DLight;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clInfoBk;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= cl3DLight;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clInfoBk;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= cl3DLight;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clInfoBk;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= cl3DLight;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clInfoBk;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= cl3DLight;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,ARow]); // reimprime o texto.
   end;

if RightStr(sgJunho.Cells[ACol,0],3) = 'Sab' then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clBtnFace;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgJunho.Cells[ACol,0],3) = 'Dom' then
   begin
   sgJunho.Canvas.Font.Color:= clBlack;
   sgJunho.Canvas.Brush.Color:= clBtnFace;
   sgJunho.Canvas.FillRect(Rect); // redesenha a celula
   sgJunho.Canvas.TextOut(Rect.Left+2,Rect.Top,sgJunho.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgJunho.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgJunho.ColWidths[ACol] div 2;

sgJunho.Canvas.FillRect(Rect);
sgJunho.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);




end;

procedure TfrmAgendaTecnicos.sgJunhoSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgTecnicos.tabIndex+1)+'/'+lano.Caption);
end;

procedure TfrmAgendaTecnicos.sgMaioDblClick(Sender: TObject);
begin
frmTecnico := TfrmTecnico.Create(self);
frmTecnico.Paineis(ldiaSelecionado.Caption);
frmTecnico.Show;
end;

procedure TfrmAgendaTecnicos.sgMaioDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clwhite;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clInfoBk;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= cl3DLight;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clInfoBk;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= cl3DLight;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clInfoBk;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= cl3DLight;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clInfoBk;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= cl3DLight;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clInfoBk;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= cl3DLight;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clInfoBk;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= cl3DLight;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clInfoBk;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= cl3DLight;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clInfoBk;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= cl3DLight;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clInfoBk;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= cl3DLight;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clInfoBk;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= cl3DLight;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clInfoBk;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= cl3DLight;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,ARow]); // reimprime o texto.
   end;

if RightStr(sgMaio.Cells[ACol,0],3) = 'Sab' then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clBtnFace;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgMaio.Cells[ACol,0],3) = 'Dom' then
   begin
   sgMaio.Canvas.Font.Color:= clBlack;
   sgMaio.Canvas.Brush.Color:= clBtnFace;
   sgMaio.Canvas.FillRect(Rect); // redesenha a celula
   sgMaio.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMaio.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgMaio.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgMaio.ColWidths[ACol] div 2;

sgMaio.Canvas.FillRect(Rect);
sgMaio.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);




end;

procedure TfrmAgendaTecnicos.sgMaioSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgTecnicos.tabIndex+1)+'/'+lano.Caption);

end;

procedure TfrmAgendaTecnicos.sgMarcoDblClick(Sender: TObject);
begin
frmTecnico := TfrmTecnico.Create(self);
frmTecnico.Paineis(ldiaSelecionado.Caption);
frmTecnico.Show;
end;

procedure TfrmAgendaTecnicos.sgMarcoDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clwhite;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clInfoBk;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= cl3DLight;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clInfoBk;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= cl3DLight;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clInfoBk;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= cl3DLight;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clInfoBk;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= cl3DLight;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clInfoBk;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= cl3DLight;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clInfoBk;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= cl3DLight;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clInfoBk;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= cl3DLight;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clInfoBk;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= cl3DLight;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clInfoBk;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= cl3DLight;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clInfoBk;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= cl3DLight;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clInfoBk;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= cl3DLight;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,ARow]); // reimprime o texto.
   end;

if RightStr(sgMarco.Cells[ACol,0],3) = 'Sab' then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clBtnFace;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgMarco.Cells[ACol,0],3) = 'Dom' then
   begin
   sgMarco.Canvas.Font.Color:= clBlack;
   sgMarco.Canvas.Brush.Color:= clBtnFace;
   sgMarco.Canvas.FillRect(Rect); // redesenha a celula
   sgMarco.Canvas.TextOut(Rect.Left+2,Rect.Top,sgMarco.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgMarco.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgMarco.ColWidths[ACol] div 2;

sgMarco.Canvas.FillRect(Rect);
sgMarco.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);



end;

procedure TfrmAgendaTecnicos.sgMarcoSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgTecnicos.tabIndex+1)+'/'+lano.Caption);

end;

procedure TfrmAgendaTecnicos.sgNovembroDblClick(Sender: TObject);
begin
frmTecnico := TfrmTecnico.Create(self);
frmTecnico.Paineis(ldiaSelecionado.Caption);
frmTecnico.Show;
end;

procedure TfrmAgendaTecnicos.sgNovembroDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clwhite;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clInfoBk;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= cl3DLight;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clInfoBk;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= cl3DLight;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clInfoBk;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= cl3DLight;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clInfoBk;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= cl3DLight;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clInfoBk;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= cl3DLight;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clInfoBk;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= cl3DLight;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clInfoBk;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= cl3DLight;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clInfoBk;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= cl3DLight;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clInfoBk;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= cl3DLight;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clInfoBk;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= cl3DLight;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clInfoBk;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= cl3DLight;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if RightStr(sgNovembro.Cells[ACol,0],3) = 'Sab' then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clBtnFace;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgNovembro.Cells[ACol,0],3) = 'Dom' then
   begin
   sgNovembro.Canvas.Font.Color:= clBlack;
   sgNovembro.Canvas.Brush.Color:= clBtnFace;
   sgNovembro.Canvas.FillRect(Rect); // redesenha a celula
   sgNovembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgNovembro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgNovembro.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgNovembro.ColWidths[ACol] div 2;

sgNovembro.Canvas.FillRect(Rect);
sgNovembro.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);




end;

procedure TfrmAgendaTecnicos.sgNovembroSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgTecnicos.tabIndex+1)+'/'+lano.Caption);
end;

procedure TfrmAgendaTecnicos.sgOutubroDblClick(Sender: TObject);
begin
frmTecnico := TfrmTecnico.Create(self);
frmTecnico.Paineis(ldiaSelecionado.Caption);
frmTecnico.Show;
end;

procedure TfrmAgendaTecnicos.sgOutubroDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clwhite;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clInfoBk;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= cl3DLight;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clInfoBk;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= cl3DLight;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clInfoBk;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= cl3DLight;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clInfoBk;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= cl3DLight;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clInfoBk;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= cl3DLight;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clInfoBk;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= cl3DLight;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clInfoBk;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= cl3DLight;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clInfoBk;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= cl3DLight;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clInfoBk;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= cl3DLight;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clInfoBk;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= cl3DLight;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clInfoBk;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= cl3DLight;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if RightStr(sgOutubro.Cells[ACol,0],3) = 'Sab' then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clBtnFace;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgOutubro.Cells[ACol,0],3) = 'Dom' then
   begin
   sgOutubro.Canvas.Font.Color:= clBlack;
   sgOutubro.Canvas.Brush.Color:= clBtnFace;
   sgOutubro.Canvas.FillRect(Rect); // redesenha a celula
   sgOutubro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgOutubro.Cells[ACol,0]); // reimprime o texto.
   end;


texto := sgOutubro.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgOutubro.ColWidths[ACol] div 2;

sgOutubro.Canvas.FillRect(Rect);
sgOutubro.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);



end;

procedure TfrmAgendaTecnicos.sgOutubroSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgTecnicos.tabIndex+1)+'/'+lano.Caption);
end;

procedure TfrmAgendaTecnicos.sgSetembroDblClick(Sender: TObject);
begin
frmTecnico := TfrmTecnico.Create(self);
frmTecnico.Paineis(ldiaSelecionado.Caption);
frmTecnico.Show;
end;

procedure TfrmAgendaTecnicos.sgSetembroDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var texto : string;
   largurat : integer;
   largurac : integer;
begin

if (Arow = 0) or (Acol=0) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clwhite;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 1) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 2) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clInfoBk;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 3) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= cl3DLight;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;


if (Arow = 4) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 5) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clInfoBk;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 6) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= cl3DLight;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 7) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 8) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clInfoBk;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 9) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= cl3DLight;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 10) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 11) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clInfoBk;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 12) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= cl3DLight;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 13) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 14) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clInfoBk;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 15) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= cl3DLight;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 16) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 17) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clInfoBk;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 18) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= cl3DLight;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 19) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 20) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clInfoBk;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 21) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= cl3DLight;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 22) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 23) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clInfoBk;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 24) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= cl3DLight;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 25) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 26) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clInfoBk;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 27) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= cl3DLight;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 28) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 29) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clInfoBk;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 30) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= cl3DLight;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 31) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clGradientInactiveCaption;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 32) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clInfoBk;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if (Arow = 33) then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= cl3DLight;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,ARow]); // reimprime o texto.
   end;

if RightStr(sgSetembro.Cells[ACol,0],3) = 'Sab' then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clBtnFace;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,0]); // reimprime o texto.
   end;

if RightStr(sgSetembro.Cells[ACol,0],3) = 'Dom' then
   begin
   sgSetembro.Canvas.Font.Color:= clBlack;
   sgSetembro.Canvas.Brush.Color:= clBtnFace;
   sgSetembro.Canvas.FillRect(Rect); // redesenha a celula
   sgSetembro.Canvas.TextOut(Rect.Left+2,Rect.Top,sgSetembro.Cells[ACol,0]); // reimprime o texto.
   end;

texto := sgSetembro.Cells[ACol, ARow];
largurat := Canvas.TextWidth(texto) div 2;
largurac := sgSetembro.ColWidths[ACol] div 2;

sgSetembro.Canvas.FillRect(Rect);
sgSetembro.Canvas.TextOut(Rect.Left+largurac-largurat,Rect.Top, texto);




end;

procedure TfrmAgendaTecnicos.sgSetembroSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var dia : string;
begin
dia:=LeftStr((sender as TStringGrid).Cells[Acol,0],Pos('/',(sender as TStringGrid).Cells[Acol,0])-1);
ldiaSelecionado.Caption:=dia+'/'+(IntTOStr(pgTecnicos.tabIndex+1)+'/'+lano.Caption);
end;

end.
