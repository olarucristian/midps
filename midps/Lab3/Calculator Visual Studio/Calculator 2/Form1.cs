using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Calculator_2
{
    
    public partial class Form1 : Form
    {

        string operand1 = string.Empty;
        string operand2 = string.Empty;
        string result;
        char operation;

        public Form1()
        {
            InitializeComponent();
            label1.Text = "";
            label2.Text = "";
            label3.Text = "";
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            
            
           
        }

        private void button7_Click(object sender, EventArgs e)
        {
            label1.Text = txtInput.Text;
            label2.Text = "-";
            operand1 = txtInput.Text;
            operation = '-';
            txtInput.Text = string.Empty;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            txtInput.Clear();
            label1.Text = "";
            label2.Text = "";
            label3.Text = "";

            
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            double numb;
            numb = Convert.ToDouble(txtInput.Text);
            double nu;
            nu = numb - numb - numb;
            txtInput.Text = Convert.ToString(nu);
            


        }

        private void button2_Click(object sender, EventArgs e)
        {
            double opr1;
            if (double.TryParse(txtInput.Text, out opr1))
            {
                txtInput.Text = (Math.Sqrt(opr1)).ToString();
            }


        }

        private void button3_Click(object sender, EventArgs e)
        {
            double putere;
            if (double.TryParse(txtInput.Text, out putere))
            {
                txtInput.Text = (putere * putere).ToString();
            }
        }

        private void button16_Click(object sender, EventArgs e)
        {
            txtInput.Text += "1";
            
        }

        private void button17_Click(object sender, EventArgs e)
        {
            txtInput.Text += "2";

        }

        private void button19_Click(object sender, EventArgs e)
        {
            txtInput.Text += "0";
        }

        private void button18_Click(object sender, EventArgs e)
        {
            txtInput.Text += "3";
        }

        private void button13_Click(object sender, EventArgs e)
        {
            txtInput.Text += "4";
        }

        private void button14_Click(object sender, EventArgs e)
        {
            txtInput.Text += "5";
        }

        private void button15_Click(object sender, EventArgs e)
        {
            txtInput.Text += "6";
        }

        private void button10_Click(object sender, EventArgs e)
        {
            txtInput.Text += "7";
        }

        private void button11_Click(object sender, EventArgs e)
        {
            txtInput.Text += "8";
        }

        private void button12_Click(object sender, EventArgs e)
        {
            txtInput.Text += "9";
        }

        private void button8_Click(object sender, EventArgs e)
        {
            label1.Text = txtInput.Text;
            label2.Text = "+";
            
            operand1 = txtInput.Text;
            operation = '+';
            txtInput.Text = string.Empty;

        }

        private void button9_Click(object sender, EventArgs e)
        {
            
            operand2 = txtInput.Text;
            

            double opr1, opr2;
            double.TryParse(operand1, out opr1);
            double.TryParse(operand2, out opr2);
            label3.Text = opr2.ToString();
            switch (operation)
            {
                case '+':
                    result = (opr1 + opr2).ToString();
                    
                   
                    break;

                case '-':
                    result = (opr1 - opr2).ToString();
                    break;

                case '*':
                    result = (opr1 * opr2).ToString();
                    break;

                case '/':
                    if (opr2 != 0)
                    {
                        result = (opr1 / opr2).ToString();
                    }
                    else
                    {
                        MessageBox.Show("Eroare !");
                    }
                    break;
            }

            txtInput.Text = result.ToString();


        }

        private void button20_Click(object sender, EventArgs e)
        {
            txtInput.Text += ".";
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button6_Click(object sender, EventArgs e)
        {
            label1.Text = txtInput.Text;
            label2.Text = "x";
            operand1 = txtInput.Text;
            operation = '*';
            txtInput.Text = string.Empty;
        }

        private void button5_Click(object sender, EventArgs e)
        {
            label1.Text = txtInput.Text;
            label2.Text = "/";
            operand1 = txtInput.Text;
            operation = '/';
            txtInput.Text = string.Empty;
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
    }
}
