unit MasDraw;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids;

type
  TForm2 = class(TForm)
    sgd: TStringGrid;
    edta: TEdit;
    edtb: TEdit;
    edtx: TEdit;
    edty: TEdit;
    edtr: TEdit;
    img: TImage;
    btn: TButton;
    procedure btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
const
n=10;
 type
 mas=array[1..n,1..2] of integer;
{$R *.dfm}
     procedure zap(var ma:mas);
var
  I,j,a,b: Integer;
  begin
  randomize;
  a:=strtoint(form2.edta.text);
  b:=strtoint(form2.edtb.Text);
    for I := 1 to n do
     for j := 1 to 2 do
      ma[i,j]:=a+random(b-a+1);
  end;
  procedure viv(ma:mas);
var
  I: Integer;
  j: Integer;
  begin
    for I := 1 to n do
     for j := 1 to 2 do
      form2.sgd.cells[j,i]:=inttostr(ma[i,j]);
  end;
   procedure ins();
   var
   i:integer;
   begin
     form2.sgd.cells[0,0]:='N';
     form2.sgd.cells[1,0]:='X';
     form2.sgd.cells[2,0]:='Y';
     for i := 1 to n do
       begin
        form2.sgd.cells[0,i]:=inttostr(i);
       end;
   end;
   procedure draw(var r,x,y:integer);
   begin
  form2.img.Canvas.rectangle(0,0,{form2.img.height,form2.img.Width}1000,1000);
  r:=strtoint(form2.edtr.text);
  x:=strtoint(form2.edtx.text);
  y:=strtoint(form2.edty.Text);
  form2.img.canvas.ellipse(x-r,y-r,x+r,y+r);
   end;
     procedure draw2(ma:mas; r,x,y:integer);
   var
   i:integer;
   begin
   form2.img.Canvas.Font.Size:=7;
   for i := 1 to n do
    begin
     if  sqr(ma[i,1]-x)+sqr(ma[i,2]-y)<sqr(r) then
      begin
        form2.img.Canvas.Pixels[ma[i,1],ma[i,2]];
        form2.img.canvas.textout(ma[i,1],ma[i,2],inttostr(i));
      end;
    end;
   end;
procedure TForm2.btnClick(Sender: TObject);
var
ma:mas;
r,x,y:integer;
begin
 sgd.RowCount:=n+1;
 ins();
 draw(r,x,y);
 zap(ma);
 viv(ma);
draw2(ma,r,x,y);
end;

end.
