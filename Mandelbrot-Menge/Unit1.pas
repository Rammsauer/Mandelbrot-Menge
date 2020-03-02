unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, VarCmplx, Gauges;

type
  TForm1 = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Gauge1: TGauge;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1                         : TForm1;
  a,c,ar,ai,cr,ci               : variant;
  farbe                         : Tcolor;
  r,g,bl,z1,zufall              : integer;
  ByteValr,ByteValb,ByteValg    : byte;
implementation

{$R *.dfm}

procedure division;
begin
r:=strtoint(form1.edit2.text);
g:=strtoint(form1.edit3.text);
bl:=strtoint(form1.edit4.text);
ByteValr:=Byte(Round(a/r));    //extend > byte
ByteValg:=Byte(Round(a/g));
ByteValb:=Byte(Round(a/bl));
farbe:=RGB(ByteValr,ByteValg,ByteValb);
end;

procedure TForm1.Button1Click(Sender: TObject);
var i,n,iteration 	  : integer;
    z,ga,gaz       	  : integer;
begin
z:=0;
ga:=0;
gaz:=5;
z1:=strtoint(edit5.text);
for i:=-250 to 250 do   				 // -250 to 250
begin
 for n:=-250 to 250 do      				 // -250 to 250
  begin
   Case Radiogroup1.ItemIndex of
    0 :  begin c:= VarComplexCreate(i/z1,n/z1); a:= VarComplexCreate(ar,ai);  end;        //Mandelbrot-Menge
    1 :  begin c:= VarComplexCreate(cr,ci); a:= VarComplexCreate(i/z1,n/z1);  end;        //Julia-Menge
   end;
   iteration:=-(strtoint(Edit1.text));
   while (iteration <=20) and (a.radius < 10000) do
    begin
     a:=a*a+c;          //Entwicklung des Fraktals
     inc(iteration);
    end;
    division;    	//Farbe von RGB
   canvas.Pixels[i+250,n+250]:= farbe;        //  Verhält sich zu i und n
  end;
 z:=z+1;               					//Progressbar
 if z=gaz then
  begin
   ga:=ga+1;
   gauge1.progress:=ga;
   gaz:=gaz+5;
  end;
 end;
end;



procedure TForm1.Button2Click(Sender: TObject);      //Weißbild
begin
image1.canvas.Rectangle(-5,-5,image1.Width+5,image1.Height+5);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Randomize;
zufall:=(random(99999)+1);
image1.canvas;
image1.canvas.Rectangle(-5,-5,image1.Width+5,image1.Height+5);
BitBtn2.Caption:='';
BitBtn3.Caption:='';
BitBtn4.Caption:='';
edit2.text:=inttostr(random(zufall)+1);
edit3.text:=inttostr(random(zufall)+1);
edit4.text:=inttostr(random(zufall)+1);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
edit2.text:=inttostr(random(zufall)+1);
Randomize;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
edit3.text:=inttostr(random(zufall)+1);
Randomize;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
edit4.text:=inttostr(random(zufall)+1);
Randomize;
end;

procedure TForm1.Edit5Exit(Sender: TObject);
 var i : integer;
begin
i:=strtoint(edit5.text);
if i = 0 then
 begin
  Messagebox(Self.Handle,'Der angegebene Wert darf nicht Null entsprechen.'#13#10'Bitte geben Sie einen neuen Wert ein','Falsche Werte', MB_ICONINFORMATION);
  edit5.Text:=inttostr(120);
 end;
end;

procedure TForm1.Edit6Exit(Sender: TObject);
var  t1,t2 : string;
begin
t1:=edit6.text;
t2:=StringReplace(t1,'.',',',[rfReplaceAll, rfIgnoreCase]);    //. zu ,
edit6.text:=t2;
case Radiogroup1.ItemIndex of
 0 : ar:=strtofloat(edit6.Text);
 1 : cr:=strtofloat(edit6.Text);
end;
end;


procedure TForm1.Edit7Exit(Sender: TObject);
var  t1,t2 : string;
begin
t1:=edit7.text;
t2:=StringReplace(t1,'.',',',[rfReplaceAll, rfIgnoreCase]);    //. zu ,
edit7.text:=t2;
case Radiogroup1.ItemIndex of
 0 : ai:=strtofloat(edit7.Text);
 1 : ci:=strtofloat(edit7.Text);
end;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
case Radiogroup1.ItemIndex of
 0 : begin label10.caption:='Verändern von a';  button1.Caption:='Mandelbrot-Menge'; edit6.Text:=floattostr(ar); edit7.Text:=floattostr(ai); end;
 1 : begin label10.caption:='Verändern von c';  button1.Caption:='Julia-Menge'; edit6.Text:=floattostr(cr); edit7.Text:=floattostr(ci);end;
end;
end;
end.
