unit Ucalendario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Menus, ComCtrls, ExtCtrls, StdCtrls,UTecnicos;

type 
  TobjCalendario = class(TObject) 
private

protected
   { aqui irão métodos e atributos protected }
public
     function getNome(): string;
     procedure cria(cMes,cAno : string; onde : TWinControl;top :integer = 0;left :integer = 0);
     function Bissexto(AYear: Integer): Boolean;
     function DiasDoMes(AYear, AMonth: Integer): Integer;
     procedure comboaltera(Sender : TObject);
     procedure comboalteraAno(Sender : TObject);
     procedure clicaDia(Sender: TObject);
     procedure setEvento(tipo : string;dia,mes,ano:integer);
     var painel : array[0..11] of TPanel;
     selmeses : array[0..11] of TComboBox;
     selAno : array[0..11] of TComboBox;
     spd : array of array of TSpeedButton;
     anototal : string;
     procedure muda(mes : integer);

published
   { aqui irão métodos e atributos published }
end;


implementation

uses Uprincipal,UAgendaGeral;


 function Tobjcalendario.Bissexto(AYear: Integer): Boolean;
begin
  Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or (AYear mod 400 = 0));
end;

function Tobjcalendario.DiasDoMes(AYear, AMonth: Integer): Integer;
const
  DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := DaysInMonth[AMonth];
  if (AMonth = 2) and Bissexto(AYear) then Inc(Result);
end;

procedure Tobjcalendario.comboaltera(Sender : TObject);
var mudou : integer;
begin
  mudou:=(Sender as TCombobox).ItemIndex+1;
  frmAgendaGeral.lreferencia.Caption:=IntToStr(mudou);
  muda((Sender as TCombobox).ItemIndex+1);
  selmeses[mudou-1].ItemIndex:=mudou-1;

  frmAgendaGeral.lmes.Caption:=IntToStr((Sender as TComboBox).itemIndex+1);

end;

procedure Tobjcalendario.comboalteraAno(Sender : TObject);
begin
  frmAgendaGeral.lano.Caption:=(Sender as TComboBox).Text;
end;

procedure Tobjcalendario.clicaDia(Sender: TObject);
begin

  //showmessage((Sender as TSpeedButton).caption+'/'+frmAgendaGeral.lreferencia.Caption);

  frmTecnico := TfrmTecnico.Create(frmAgendaGeral);
  frmTecnico.Paineis(frmAgendaGeral.lreferencia.Caption+'/'+(Sender as TSpeedButton).caption+'/'+frmAgendaGeral.lano.Caption);
  frmTecnico.Show;

end;

{ TClasse }

procedure TobjCalendario.cria(cMes, cAno: string; onde : TWinControl;top :integer = 0;left :integer = 0);
var
    dia, mes, ano : string;
    i,k,qtddias,con,j : integer;

//distancia lateral
const distl = 1;
//distancia entre eles
const distt = 63;
begin

anototal:=cAno;


DateTimeToString(dia,'dd',Date);
DateTimeToString(mes,'mm',Date);
DateTimeToString(ano,'yyyy',Date);



for k := 0 to 11 do
  begin

    qtddias:=(DiasDoMes(strtoint(cAno),k+1));

    setLength(spd,12,qtddias+1);
   //distancia de cima
    con:=60;
    j:=distl-1;

    painel[k]:=TPanel.Create(onde);
    painel[k].Height:=510;
    painel[k].Width:=510;
    painel[k].top:=top;
    painel[k].Left:=left;
    painel[k].Parent:=onde;
    painel[k].Color:=clWhite;
    painel[k].BevelInner:=bvLowered;
    painel[k].BevelKind:=bkFlat;
    painel[k].BevelOuter:=bvRaised;
    painel[k].BevelWidth:=2;

    //Combobox para controle dos meses
    selmeses[k]:= TComboBox.Create(painel[k]);
    selmeses[k].Top:=15;
    selmeses[k].Left:=150;
    selmeses[k].Width:=120;
    selmeses[k].Font.Size:=12;
    selmeses[k].Font.Style:=[fsBold];
    selmeses[k].OnClick:=comboaltera;
    selmeses[k].Parent:=painel[k];

    selmeses[k].Items.add('Janeiro');
    selmeses[k].Items.add('Fevereiro');
    selmeses[k].Items.add('Março');
    selmeses[k].Items.add('Abril');
    selmeses[k].Items.add('Maio');
    selmeses[k].Items.add('Junho');
    selmeses[k].Items.add('Julho');
    selmeses[k].Items.add('Agosto');
    selmeses[k].Items.add('Setembro');
    selmeses[k].Items.add('Outubro');
    selmeses[k].Items.add('Novembro');
    selmeses[k].Items.add('Dezembro');

    selmeses[k].ItemIndex:=StrToInt(cMes)-1;

     //Combobox para controle dos Anos
    selAno[k]:= TComboBox.Create(painel[k]);
    selAno[k].Top:=15;
    selAno[k].Left:=300;
    selAno[k].Width:=70;
    selAno[k].Font.Size:=12;
    selAno[k].Font.Style:=[fsBold];
    selAno[k].OnClick:=comboalteraAno;
    selAno[k].Parent:=painel[k];

    selAno[k].Items.add('2008');
    selAno[k].Items.add('2009');
    selAno[k].Items.add('2010');
    selAno[k].Items.add('2011');
    selAno[k].Items.add('2012');
    selAno[k].Items.add('2013');
    selAno[k].Items.add('2014');

    selAno[k].ItemIndex:=0;

    for I := 0 to qtddias -1 do
    begin
      j:=j+1;
      if i = 5 then
      begin
        j:=distl;
        con := spd[k][4].Top+distt;
      end;
      if i = 10 then
      begin
      j:=distl;
      con := spd[k][9].Top+distt;
      end;
      if i = 15 then
      begin
        j:=distl;
        con:=spd[k][14].Top+distt;
      end;
      if i = 20 then
      begin
        j:=distl;
        con:=spd[k][19].Top+distt;
      end;
      if i = 25 then
      begin
        j:=distl;
        con:=spd[k][24].Top+distt;
      end;
      if i = 30  then
      begin
        j:=distl;
        con:=spd[k][29].Top+distt;
      end;

      //Gera o botao
      spd[k][i] := TSpeedButton.Create(painel[k]);
      spd[k][i].Caption:= intToStr(i+1);
      spd[k][i].Font.Size:=16;
      spd[k][i].Font.Style:=[fsBold];
      spd[k][i].Font.Name:= 'Arial';
      spd[k][i].Height:=60;
      spd[k][i].Width:=70;
      spd[k][i].OnClick:=clicaDia;
      spd[k][i].Top:=con;
      //distancia entre eles esquerda
      spd[k][i].Left:=(j*78);
      spd[k][i].Parent:=painel[k];
      spd[k][i].Flat:=true;
    end;


  end;




end;

function TobjCalendario.getNome(): string;
begin
  result:='Paulo';
end;

procedure TobjCalendario.muda(mes : integer);
begin
mes := mes-1;
painel[mes].FullRepaint:=true;
painel[mes].BringToFront;
end;

procedure TobjCalendario.setEvento(tipo: string;dia,mes,ano:integer);
begin

if (tipo = 'fechado') and (intToStr(ano)=anototal) then

spd[mes-1][dia-1].Glyph.Assign(frmAgendaGeral.img.picture);
end;

end.
