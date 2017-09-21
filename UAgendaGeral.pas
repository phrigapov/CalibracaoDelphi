unit UAgendaGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Menus, Grids, DBGrids, ComCtrls,Ucalendario,
  ExtCtrls;

type
  TfrmAgendaGeral = class(TForm)
    dsSiga: TDataSource;
    qSiga: TQuery;
    qSigaABB_FILIAL: TStringField;
    qSigaABB_CODTEC: TStringField;
    qSigaABB_NUMOS: TStringField;
    qSigaABB_DTINI: TDateField;
    qSigaABB_HRINI: TStringField;
    qSigaABB_DTFIM: TDateField;
    qSigaABB_HRFIM: TStringField;
    qSigaABB_HRTOT: TStringField;
    qSigaABB_OBSERV: TStringField;
    qSigaABB_SACRA: TStringField;
    qSigaABB_CHEGOU: TStringField;
    qSigaABB_DATA: TDateField;
    qSigaABB_ATENDE: TStringField;
    qSigaABB_MSEXP: TStringField;
    qSigaABB_MSFIL: TStringField;
    qSigaABB_MSIDEN: TStringField;
    qSigaABB_MSRESP: TStringField;
    lreferencia: TLabel;
    tcalendario: TPageControl;
    qExpectativa: TQuery;
    dsExpectativa: TDataSource;
    qExpectativaZ6_FILIAL: TStringField;
    qExpectativaZ6_NUMATEN: TStringField;
    qExpectativaZ6_DTINCLU: TDateField;
    qExpectativaZ6_HRINCLU: TStringField;
    qExpectativaZ6_USINCLU: TStringField;
    qExpectativaZ6_STATUS: TStringField;
    qExpectativaZ6_CODTEC: TStringField;
    qExpectativaZ6_NOMETEC: TStringField;
    qExpectativaZ6_DTATINI: TDateField;
    qExpectativaZ6_DTATFIM: TDateField;
    qExpectativaZ6_HORAINI: TStringField;
    qExpectativaZ6_HORAFIM: TStringField;
    qExpectativaZ6_NUMOS: TStringField;
    qExpectativaZ6_TOTHOR: TStringField;
    qExpectativaZ6_CODCLI: TStringField;
    qExpectativaZ6_LOJA: TStringField;
    qExpectativaZ6_NOMECLI: TStringField;
    qExpectativaZ6_OBSERV: TStringField;
    Timer1: TTimer;
    lano: TLabel;
    lmes: TLabel;
    img: TImage;
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    var calendarioc : Tobjcalendario;
    guarda : string;
  end;

var
  frmAgendaGeral: TfrmAgendaGeral;

implementation

{$R *.dfm}


procedure TfrmAgendaGeral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:= caFree;
end;

procedure TfrmAgendaGeral.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
frmAgendaGeral.lreferencia.caption:=lmes.Caption;
end;

procedure TfrmAgendaGeral.FormShow(Sender: TObject);
var
   dataInicial,dataFinal : Tdate;
   Ano,mes,dia,Anoi,mesi,diai  : Word;
   anot,mest : string;
   tecnico : string;
   i : integer;
begin


DateTimeToString(mest,'mm',Date);
DateTimeToString(anot,'yyyy',Date);

calendarioc := Tobjcalendario.Create;
calendarioc.cria(mest,anot,tcalendario,0,0);


  calendarioc.muda(strToInt(mest));
  frmAgendaGeral.lreferencia.caption:=mest;
  lmes.Caption:=mest;
  lano.Caption:=anot;
  guarda := anot;



end;

procedure TfrmAgendaGeral.Timer1Timer(Sender: TObject);
var
   dataInicial,dataFinal : Tdate;
   Ano,mes,dia,Anoi,mesi,diai  : Word;
   tecnico : string;
   i : integer;
begin

if lano.Caption <> guarda then
    begin
    FreeAndNil(calendarioc);
    calendarioc := TobjCalendario.Create;
    calendarioc.cria(lmes.Caption,lano.caption,tcalendario,0,0);
    end;
guarda:= lano.Caption;

calendarioc.selAno[strToInt(lmes.caption)-1].Text:=lano.Caption;

qSiga.First;
while not(qSiga.Eof) do
  begin

     dataInicial := StrToDate(qSigaABB_DTINI.AsString);
     dataFinal := StrToDate(qSigaABB_DTFIM.AsString);

     DecodeDate(dataInicial,ano,mes,dia);
     DecodeDate(dataFinal,anoi,mesi,diai);

     tecnico := qSigaABB_CODTEC.AsString;

     if ((dia+mes+ano) <> (diai+mesi+anoi)) then begin
        for I := 0 to diai - dia do begin
             calendarioc.setEvento('fechado',dia+i,mes,ano);
        end;
     end

     else   calendarioc.setEvento('fechado',dia,mes,ano);



     qSiga.Next;
   end;


qExpectativa.First;
while not(qExpectativa.Eof) do
  begin

     dataInicial := StrToDate(qExpectativaZ6_DTATINI.AsString);
     dataFinal := StrToDate(qExpectativaZ6_DTATFIM.AsString);

     DecodeDate(dataInicial,ano,mes,dia);
     DecodeDate(dataFinal,anoi,mesi,diai);

     tecnico := qExpectativaZ6_NOMETEC.AsString;

     if ((dia+mes+ano) <> (diai+mesi+anoi)) then begin
        for I := 0 to diai - dia do begin
             calendarioc.setEvento('fechado',dia+i,mes,ano);
        end;
     end

     else   calendarioc.setEvento('fechado',dia,mes,ano);



     qExpectativa.Next;
   end;

  calendarioc.muda(strToInt(lmes.caption));

end;

end.
