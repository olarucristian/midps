//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Lab1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
int i=0;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
Form1->Caption="MIDPS 1-A";
Edit1->Text="0";
Label2->Caption="";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{       i=Edit1->Text.ToInt();
        Label2->Caption=" 'i' a fost incrementat";
        i++ ;
        Edit1->Text=(i);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{       i=Edit1->Text.ToInt();
        Label2->Caption="'i' a fost decrementat";
        i--;
        Edit1->Text=(i);
}
//---------------------------------------------------------------------------





