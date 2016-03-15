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
int zec=0,min,sec;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
Timer1->Enabled=false;
Form1->Caption="MIDPS";
Edit2->Text="   ";
Edit1->Text="00 min 00sec 00zec ";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
Timer1->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
zec++;
if(zec==10)
{
zec=0;
sec++;
}
if(sec==60)
{
zec=0;sec=0;
min++;}
Edit1->Text=AnsiString(min)+" min "+ AnsiString(sec)+" sec "+ AnsiString(zec)+" zec ";
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
Timer1->Enabled=false;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button3Click(TObject *Sender)
{
Timer1->Enabled=false;
zec=sec=min=0;
Edit1->Text="00 min 00 sec 00 zec";

}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button4Click(TObject *Sender)
{
Close();        
}
//---------------------------------------------------------------------------



void __fastcall TForm1::Timer2Timer(TObject *Sender)
{
        char buf[20];
	struct date d;
        struct time t;
	getdate(&d);
	gettime(&t);
	sprintf(buf,"%02d-%02d-%4d %02d:%02d:%02d",d.da_day, d.da_mon,d.da_year,
	t.ti_hour,t.ti_min,t.ti_sec);
	Edit2->Text=(AnsiString)buf;

}
//---------------------------------------------------------------------------







