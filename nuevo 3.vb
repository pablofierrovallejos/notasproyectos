    Private Sub obtenerConfig(sfile As String)
        ' obtenerConfig("C:\ventasPOS\config\impresion_ticket.ini")
        Dim objReader As New IO.StreamReader(sfile)
        Dim sLine As String = ""

        Do
            sLine = objReader.ReadLine()
            If Not sLine Is Nothing Then
                If sLine.Trim = "IMPRIMIR_TICKET=SI" Then
                    CheckBox1.Checked = True

                ElseIf sLine.Trim = "IMPRIMIR_TICKET=NO" Then
                    CheckBox1.Checked = False

                Else
                    CheckBox1.Checked = False
                End If
            End If
        Loop Until sLine Is Nothing
        objReader.Close()
    End Sub
	
	
	
        public MainForm()
        {
            CenterToScreen();
            InitializeComponent();

            PortName_lbl.Text = portName;
            Port_ddown.DataSource = POSIntegrado.Instance.ListPorts();
            portName = Port_ddown.SelectedItem.ToString();
            Price_lbl.Text = total.ToString();
            BuyItems = new List<Product>();
            POSIntegrado.Instance.IntermediateResponseChange += new EventHandler<IntermediateResponse>((s, response) => UpdateMessage(s, response));
        }

        private void PortDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            portName = Port_ddown.SelectedItem.ToString();
        }


		
	
	   private void Pay_btn_Click(object sender, EventArgs e)
        {
            eventResponseMessage = "";
            try
            {
                if (total > 0 && ShopingList_lst.Items.Count > 0)
                {
                   string ticket = new Random().Next(0, 999999).ToString("D6");
                   Task<SaleResponse> response = POSIntegrado.Instance.Sale(total, ticket, intermediateMsg);
                    response.Wait();

                   MessageBox.Show(response.Result.ToString());
                   Clean_btn_Click(sender, e);
                }
                else
                {
                    MessageBox.Show("No hay elementos para cobrar o el total es 0", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            } catch (TransbankSaleException a)
            {
                MessageBox.Show("Error Procesando el Pago" + "\n" +
                        a.SaleResponse.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (TransbankException a)
            {
                MessageBox.Show(a.Message + "\n" + a.Data.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
		
		
		
///AL PRESIONAR PAGAR
'WindowsApp2.exe' (CLR v4.0.30319: WindowsApp2.exe): 'C:\ventasPOS\WindowsApp2\WindowsApp2\WindowsApp2\bin\Debug\TransbankPosSDK.dll' cargado. Se omitió la carga de símbolos. El módulo está optimizado y la opción del depurador 'Sólo mi código' está habilitada.
'WindowsApp2.exe' (CLR v4.0.30319: WindowsApp2.exe): 'C:\WINDOWS\Microsoft.Net\assembly\GAC_MSIL\netstandard\v4.0_2.0.0.0__cc7b13ffcd2ddd51\netstandard.dll' cargado. Se omitió la carga de símbolos. El módulo está optimizado y la opción del depurador 'Sólo mi código' está habilitada.
'WindowsApp2.exe' (CLR v4.0.30319: WindowsApp2.exe): 'C:\ventasPOS\WindowsApp2\WindowsApp2\WindowsApp2\bin\Debug\System.IO.Ports.dll' cargado. Se omitió la carga de símbolos. El módulo está optimizado y la opción del depurador 'Sólo mi código' está habilitada.
COM1
COM6
Out (Hex): 02 30 32 30 30 7C 31 35 30 30 7C 54 69 63 6B 65 74 7C 7C 7C 30 7C 03 11
Out (ASCII): 0200|1500|Ticket|||0|
'WindowsApp2.exe' (CLR v4.0.30319: WindowsApp2.exe): 'C:\WINDOWS\Microsoft.Net\assembly\GAC_MSIL\mscorlib.resources\v4.0_4.0.0.0_es_b77a5c561934e089\mscorlib.resources.dll' cargado. El módulo se compiló sin símbolos.
In: 06
Read ACK OK
El subproceso 0x3d64 terminó con código 0 (0x0).




//AL PRESIONAR DEBITO EN POS
In (Hex): 02 30 32 31 30 7C 30 37 7C 35 39 37 30 32 39 34 31 34 33 30 30 7C 49 54 37 35 30 31 39 39 7C 54 69 63 6B 65 74 7C 7C 31 35 30 30 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C
In (ASCII): 0210|07|597029414300|IT750199|Ticket||1500||||||||||||||
1500
0210|07|597029414300|IT750199|Ticket||1500||||||||||||||
7
Transacción cancelada desde el POS
597029414300
IT750199
Ticket

1500
0
0
0
0

Excepción producida: 'System.InvalidOperationException' en mscorlib.dll
   en System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   en System.Nullable`1.get_Value()
   en WindowsApp2.Form1.generaVentaTransbk(String smonto) en C:\ventasPOS\WindowsApp2\WindowsApp2\WindowsApp2\bin\Form1.vb:línea 1828
El subproceso 0x3d04 terminó con código 0 (0x0).
El subproceso 0x1490 terminó con código 0 (0x0).



////////////////////EXITOSO

COM1
COM6
Out (Hex): 02 30 32 30 30 7C 31 35 30 30 7C 54 69 63 6B 65 74 7C 7C 7C 30 7C 03 11
Out (ASCII): 0200|1500|Ticket|||0|
In: 06
Read ACK OK
El subproceso 0x3d60 terminó con código 0 (0x0).
El subproceso 0x44c8 terminó con código 0 (0x0).
In (Hex): 02 30 32 31 30 7C 30 30 7C 35 39 37 30 32 39 34 31 34 33 30 30 7C 49 54 37 35 30 31 39 39 7C 54 69 63 6B 65 74 7C 38 30 30 35 30 30 7C 31 35 30 30 7C 30 30 7C 7C 33 33 33 31 7C 30 30 30 30 30 36 7C 44 42 7C 30 30 30 30 30 30 7C 20 20 2A 2A 2A 2A 2A 2A 2A 2A 33 33 31 20 20 20 20 20 20 7C 44 42 7C 31 39 30 38 32 30 32 32 7C 32 32 33 34 35 32 7C 7C 7C 7C
In (ASCII): 0210|00|597029414300|IT750199|Ticket|800500|1500|00||3331|000006|DB|000000|  ********331      |DB|19082022|223452||||
1500
0210|00|597029414300|IT750199|Ticket|800500|1500|00||3331|000006|DB|000000|  ********331      |DB|19082022|223452||||
0
Aprobado
597029414300
IT750199
Ticket
800500
1500
0
0
3331
6
DB
0:00:00
********331
DB
19-08-2022 22:34:52
0
0
El subproceso 0x2348 terminó con código 0 (0x0).


 private void PollToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                Task<bool> pollResult = Task.Run(async () => { return await POSIntegrado.Instance.Poll(); });
                pollResult.Wait();

                if (pollResult.Result)
                {
                    MessageBox.Show("POS is connected.", "Polling the POS");
                }
                else
                {
                    MessageBox.Show("POS is NOT connected.", "Polling the POS");
                }
            } catch (TransbankException a)
            {
                MessageBox.Show(a.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }





        private void CloseToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try {
                Task<CloseResponse> response = POSIntegrado.Instance.Close();
                response.Wait();

                if (response.Result.Success)
                {
                    MessageBox.Show(response.Result.ToString(), "Register Closed Successfully.");
                }
            }
            catch (TransbankException a)
            {
                MessageBox.Show(a.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
		
		
        private void SetNormalModeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                DialogResult dialogResult = MessageBox.Show("Setting Normal Mode will disconect the POS\n Are You sure?", "Set Normal Mode", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    Task<bool> result = Task.Run(async () => { return await POSIntegrado.Instance.SetNormalMode(); });

                    result.Wait();
                    if (result.Result)
                    {
                        MessageBox.Show("POS configured in Normal Mode");
                        Disconnect_btn_Click(sender, e);
                    }
                    else
                        MessageBox.Show("Failed to configure POS in Normal Mode");
                    Disconnect_btn_Click(sender, e);
                }
            } catch (TransbankException a)
            {
                MessageBox.Show(a.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
		
		
 private void salesDetailToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form p = new DetailPrompt();
            p.Show();
            p.Focus();
        }
		
  private void noPrintBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string response = "";
                Task<List<DetailResponse>> details = POSIntegrado.Instance.Details(false);
                details.Wait();

                foreach (DetailResponse detail in details.Result)
                {
                    response += "Tipo de Tarjeta : " + detail.CardType + " Total : " + detail.Amount + "\n";
                }
                MessageBox.Show(response, "Resultado Detalle de venta.");
                this.Close();
            }
            catch (TransbankException a)
            {
                MessageBox.Show(a.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
		
        private void printToPOS_Click(object sender, EventArgs e)
        {
            try
            {
                Task<List<DetailResponse>> details = POSIntegrado.Instance.Details(true);
                details.Wait();

                MessageBox.Show("Impreso en POS", "Resultado Detalle de venta.");
                this.Close();
            }
            catch (TransbankException a)
            {
                MessageBox.Show(a.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }		
		