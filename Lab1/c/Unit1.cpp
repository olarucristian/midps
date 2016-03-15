//---------------------------------------------------------------------------

#include <vcl.h>
#include <dos.h>
#include <stdio.h>

#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
int x0=0 ,y0=0,x1=0,y1=0;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
char    buf[20];
	struct date d;
        struct time t;
	getdate(&d);
	gettime(&t);
	sprintf(buf,"%02d-%02d-%4d %02d:%02d:%02d",d.da_day, d.da_mon,d.da_year,
	t.ti_hour,t.ti_min,t.ti_sec);
	Edit1->Text=(AnsiString)buf;        
}
//---------------------------------------------------------------------------



void __fastcall TForm1::Button1Click(TObject *Sender)
{       PaintBox1->Repaint();
        PaintBox1->Canvas->Pen->Color = clRed;
        x1 = Form1->PaintBox1->Width;
        y1 = Form1->PaintBox1->Height;
        x0 = 0;
        Form1->PaintBox1->Canvas->MoveTo(0, y1 / 2.0);
        Button1->Enabled = false;
	Button2->Enabled = true;
	Timer2->Enabled = true;



}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender)
{
        Close();        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
        Button1->Enabled = true;
	Button2->Enabled = false;
	Timer2->Enabled = false;

}
//---------------------------------------------------------------------------


void __fastcall TForm1::PaintBox1Paint(TObject *Sender)
{       PaintBox1->Canvas->Pen->Color = clBlack;
        PaintBox1->Canvas->Brush->Color = clBlack;
        PaintBox1->Canvas->Brush->Style = bsCross;
        PaintBox1->Canvas->Rectangle(0, 0, PaintBox1->Width, PaintBox1->Height);
}
//---------------------------------------------------------------------------



void __fastcall TForm1::Timer2Timer(TObject *Sender)
{
        y0 = (y1 / 2.0) + (rand() % 91 - 45);
        x0 += 4   ;
        Form1->PaintBox1->Canvas->LineTo(x0, y0);
        Form1->Panel2->Height = y0;
        if(x0 > x1)
        {
         Button2Click(Sender);
        }
}
//---------------------------------------------------------------------------





