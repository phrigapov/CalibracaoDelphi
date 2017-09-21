unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Menus, ComCtrls, ExtCtrls, StdCtrls,Ucalendario, TabNotBk,
  Grids, DBGrids, Calendar, JvExControls, JvTFManager, JvTFGlance,
  JvTFMonths, JvTFGlanceTextViewer, CheckLst,UTecnicos, DBXpress, FMTBcd,
  SqlExpr, DB,StrUtils, DBClient, Provider, WideStrings;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Agenda1: TMenuItem;
    AgendaTecnicos: TMenuItem;
    AgendadePadres1: TMenuItem;
    JvTFMonths1: TJvTFMonths;
    btMenor: TBitBtn;
    btMaior: TBitBtn;
    JvTFGlanceTextViewer2: TJvTFGlanceTextViewer;
    utfScheduleManager1: TJvTFScheduleManager;
    Timer1: TTimer;
    SQLConnection1: TSQLConnection;
    qExpectativa: TSQLQuery;
    qExpectativaZ6_STATUS: TStringField;
    qExpectativaZ6_CODTEC: TStringField;
    qExpectativaZ6_NOMETEC: TStringField;
    qExpectativaZ6_DTATINI: TStringField;
    qExpectativaZ6_DTATFIM: TStringField;
    qExpectativaZ6_HORAINI: TStringField;
    qExpectativaZ6_HORAFIM: TStringField;
    qExpectativaZ6_NOMECLI: TStringField;
    qExpectativaZ6_CIDADE: TStringField;
    qExpectativaZ6_UF: TStringField;
    qExpectativaZ6_NUMOS: TStringField;
    qTecnicos: TSQLQuery;
    NeedApptsQuery: TSQLQuery;
    NeedApptsQueryABB_CODTEC: TStringField;
    NeedApptsQueryABB_NUMOS: TStringField;
    NeedApptsQueryABB_DTINI: TStringField;
    NeedApptsQueryABB_HRINI: TStringField;
    NeedApptsQueryABB_DTFIM: TStringField;
    NeedApptsQueryABB_HRFIM: TStringField;
    NeedApptsQueryABB_ATENDE: TStringField;
    NeedApptsQueryABB_USUATE: TStringField;
    NeedApptsQueryABB_CIDADE: TStringField;
    NeedApptsQueryABB_UF: TStringField;
    qTecnicosaa1_codtec: TStringField;
    qTecnicosaa1_tecage: TStringField;
    NeedApptsQueryABB_NOMCLI: TStringField;
    qExpectativaZ6_DTINCLU: TStringField;
    qExpectativaZ6_HRINCLU: TStringField;
    NeedApptsQueryD_E_L_E_T_: TStringField;
    procedure Timer1Timer(Sender: TObject);
    procedure JvTFGlanceTextViewer2DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btMenorClick(Sender: TObject);
    procedure btMaiorClick(Sender: TObject);
    procedure AgendadePadres1Click(Sender: TObject);
    procedure Agenda1Click(Sender: TObject);
    procedure AgendaTecnicosClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}
uses UAgendaTecnicos,UAgendaGeral,UPadrao;

procedure TfrmPrincipal.Agenda1Click(Sender: TObject);
begin

if (frmPadrao <> nil) then
    FreeAndNil(frmPadrao);

if (frmAgendaTecnicos <> nil) then
    FreeAndNil(frmAgendaTecnicos);

if frmAgendaGeral <> nil then exit;


frmAgendaGeral := TfrmAgendaGeral.Create(self);
frmAgendaGeral.Show;


end;

procedure TfrmPrincipal.AgendadePadres1Click(Sender: TObject);
begin
//if (frmAgendaTecnicos <> nil) then
//    FreeAndNil(frmAgendaTecnicos);

frmPadrao := TfrmPadrao.Create(self);
frmPadrao.Show;
end;

procedure TfrmPrincipal.AgendaTecnicosClick(Sender: TObject);
begin

//if (frmPadrao <> nil) then
//    FreeAndNil(frmPadrao);

frmAgendaTecnicos := TfrmAgendaTecnicos.Create(self);
frmAgendaTecnicos.Show;

end;

procedure TfrmPrincipal.btMaiorClick(Sender: TObject);
begin
if JvTFMonths1.Month < 12 then
  JvTFMonths1.Month:=JvTFMonths1.Month+1
else begin
  JvTFMonths1.Year:=JvTFMonths1.Year+1;
  JvTFMonths1.Month:=1;
end;
end;

procedure TfrmPrincipal.btMenorClick(Sender: TObject);
begin
if JvTFMonths1.Month > 1 then JvTFMonths1.Month:=JvTFMonths1.Month-1
else begin
  JvTFMonths1.Year:=JvTFMonths1.Year-1;
  JvTFMonths1.Month:=12;
end;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
//JvTFMonths1.SchedNames.AddStrings(agenda);
 JvTFMonths1.SchedNames.Clear;
 JvTFMonths1.SchedNames.Add('polimate');
 JvTFMonths1.ReconfigCells;
end;

function inverterData(data : string): TDateTime;
var dia,mes,ano : string;
begin

ano:=LeftStr(data,4);
mes:=MidStr(data,5,2);
dia:=RightStr(data,2);

Result:=StrToDate(dia+'/'+mes+'/'+ano);


end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
 I: Integer;
 appt : TJvTFAppt;
 NewAppt : Boolean;
 horai,horaf : TTime;
 Label A1,a2,a3,a4;
begin
JvTFMonths1.SchedNames.Clear;

qTecnicos.Active:=false;
qTecnicos.Active:=true;

NeedApptsQuery.Active:=false;
NeedApptsQuery.Active:=true;

qExpectativa.Active:=false;
qExpectativa.Active:=true;

 NeedApptsQuery.Open;
 NeedApptsQuery.first;


JvTFMonths1.DisplayDate:=date;


 i:=0;
While not NeedApptsQuery.Eof do
        Begin
          qTecnicos.First;
          while not(qTecnicos.eof) do
            begin
              if (NeedApptsQueryABB_CODTEC.AsString = qTecnicosAA1_CODTEC.AsString)
                then if (qTecnicosAA1_TECAGE.AsString = 'S') and (NeedApptsQueryABB_CODTEC.AsString<>'PADRAO') then
                     goto a1
                else goto a2;
              qTecnicos.Next;
            end;
          a1:

          utfScheduleManager1.RequestAppt(inttostr(i),
            Appt, NewAppt);

              horai:=NeedApptsQueryABB_HRINI.AsDateTime;
              horaf:=strToTime('22:00');

              Appt.SetStartEnd(inverterData(NeedApptsQueryABB_DTINI.AsString),
                               horai,
                               inverterData(NeedApptsQueryABB_DTFIM.AsString),
                               horaf);
              Appt.Description := NeedApptsQueryABB_CODTEC.AsString+' i';

                Appt.AddSchedule('polimate');
            a2:
            NeedApptsQuery.Next;

            //TFMonths1.SchedNames.Clear;
            //JvTFMonths1.SchedNames.add(NeedApptsQueryABB_NumOS.AsString);

           // End
          //   else NeedApptsQuery.Next;

          i:=i+1;
        End;


   //JvTFMonths1.SchedNames.Add('polimate');
   //JvTFMonths1.ReconfigCells;

///////////////////////////EXPECTATIVA//////////////////////////////

 qExpectativa.Open;
 qExpectativa.first;

i:=0;
While not qExpectativa.Eof do
        Begin
        if qExpectativaZ6_STATUS.AsString = '1' then
         begin
          qTecnicos.First;
          while not(qTecnicos.eof) do
            begin
              if (qExpectativaZ6_CODTEC.AsString = qTecnicosAA1_CODTEC.AsString)
                then if (qTecnicosAA1_TECAGE.AsString = 'S') and (qExpectativaZ6_CODTEC.AsString<>'PADRAO') then
                     goto a3
                else goto a4;
              qTecnicos.Next;
            end;
          a3:

          utfScheduleManager1.RequestAppt(inttostr(i),
            Appt, NewAppt);

              horai:=qExpectativaZ6_HRINCLU.AsDateTime;
              horaf:=strToTime('22:00');

              Appt.SetStartEnd(InverterData(qExpectativaZ6_DTATINI.AsString),
                               horai,
                               InverterData(qExpectativaZ6_DTATFIM.AsString),
                               horaf);
              Appt.Description := qExpectativaZ6_CODTEC.AsString;

                Appt.AddSchedule('polimate');
            a4:
          end;
            qExpectativa.Next;

            //TFMonths1.SchedNames.Clear;
            //JvTFMonths1.SchedNames.add(NeedApptsQueryABB_NumOS.AsString);

           // End
          //   else NeedApptsQuery.Next;

          i:=i+1;
        End;


  JvTFMonths1.SchedNames.Add('polimate');
  JvTFMonths1.ReconfigCells;


end;

procedure TfrmPrincipal.JvTFGlanceTextViewer2DblClick(Sender: TObject);
var
  data : TDate;
  dia,mes,ano :string;

begin
if (Sender is TJvTFGlanceTextViewer) then data:=((Sender as TJvTFGlanceTextViewer).Date);
//data:=date;
DateTimeToString(dia,'dd',Data);
DateTimeToString(mes,'mm',Data);
DateTimeToString(ano,'yyyy',Data);

frmTecnico := TfrmTecnico.Create(self);
frmTecnico.Paineis(dia+'/'+mes+'/'+ano);
frmTecnico.Show;
frmTecnico.SetFocus;

end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
utfScheduleManager1.dbDeleteAllAppt;
frmPrincipal.OnShow(self);
end;

end.
