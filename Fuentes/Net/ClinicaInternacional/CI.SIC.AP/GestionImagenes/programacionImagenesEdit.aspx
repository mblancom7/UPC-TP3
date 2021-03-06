﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.master" AutoEventWireup="true" CodeFile="programacionImagenesEdit.aspx.cs" Inherits="GestionImagenes_programacionImagenesEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .col_04 span
        {
            padding: 0px 0px 0px 0px;
            text-align: inherit;
        }
        .ValidacionMensaje
        {
            font-size: 11px;
            color: Red;
        }
    </style>

<%--     <script type="text/javascript">
         $(document).ready(function () {

             $('#btnConsultar').click(function () {
                 return confirm("Seguro de Anular Contrato");
             })
         });
    </script>--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" Runat="Server">
    <div class="col_04">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="12pt"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <table style="width:100%;">
                    <tr>
                        <td colspan="4">
                            <div class="box_tit">
                                Orden de Examen</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Orden de examen</td>
                        <td>
                            <asp:TextBox ID="txtId_orden_examen" runat="server" Width="85px" 
                                ontextchanged="txtId_orden_examen_TextChanged"></asp:TextBox>
                        &nbsp;
                            <asp:Button ID="btnConsultar" runat="server" Text="Consultar" 
                                onclick="btnConsultar_Click" />
                        </td>
                        <td>
                            Fecha orden</td>
                        <td>
                            <asp:TextBox ID="txtFecha_examen" runat="server" Width="83px" ReadOnly="True" 
                                CssClass="no_edit"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Estado</td>
                        <td>
                            <asp:TextBox ID="txtEstado_orden_examen" runat="server" Width="95px" 
                                ReadOnly="True" CssClass="no_edit"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Orden atención</td>
                        <td>
                            <asp:TextBox ID="txtId_orden_atencion" runat="server" Width="84px" 
                                ReadOnly="True" CssClass="no_edit"></asp:TextBox>
                        </td>
                        <td>
                            Tipo atención</td>
                        <td>
                            <asp:TextBox ID="txtTipo_atencion" runat="server" Width="142px" ReadOnly="True" 
                                CssClass="no_edit"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Historia clínica</td>
                        <td>
                            <asp:TextBox ID="txtId_historia" runat="server" Width="84px" ReadOnly="True" 
                                CssClass="no_edit"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Paciente</td>
                        <td>
                            <asp:TextBox ID="txtPaciente" runat="server" Width="259px" ReadOnly="True" 
                                CssClass="no_edit"></asp:TextBox>
                        </td>
                        <td>
                            Médico</td>
                        <td>
                            <asp:TextBox ID="txtMedico" runat="server" Width="223px" ReadOnly="True" 
                                CssClass="no_edit"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Tipo examen</td>
                        <td>
                            <asp:DropDownList ID="cboTipo_examen" runat="server" Enabled="False" 
                                CssClass="no_edit">
                            </asp:DropDownList>
                        </td>
                        <td>
                            Examen</td>
                        <td>
                            <asp:TextBox ID="txtExamen" runat="server" ReadOnly="True" Width="216px" 
                                CssClass="no_edit"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            Precio S/.</td>
                        <td>
                            <asp:TextBox ID="txtPrecio" runat="server" ReadOnly="True" Width="57px" 
                                CssClass="no_edit"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:HiddenField ID="hidProgramacion" runat="server" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div class="box_tit">
                                Programación</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Local</td>
                        <td>
                            <asp:DropDownList ID="cboLocal" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="cboLocal_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td>
                            Consultorio</td>
                        <td>
                            <asp:DropDownList ID="cboConsultorio" runat="server" 
                                onselectedindexchanged="cboConsultorio_SelectedIndexChanged" 
                                AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Horario</td>
                        <td>
                            <asp:DropDownList ID="cboHorario" runat="server" 
                                Width="137px" AutoPostBack="True" 
                                onselectedindexchanged="cboHorario_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td>
                            Estado</td>
                        <td>
                            <asp:TextBox ID="txtEstado_programacion" runat="server" Width="109px" 
                                ReadOnly="True" CssClass="no_edit"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Especialista</td>
                        <td>
                            <asp:TextBox ID="txtEspecialista" runat="server" Width="224px" ReadOnly="True" 
                                CssClass="no_edit"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblMotivoR" runat="server" Text="Motivo Reprogramación"></asp:Label>
                        </td>
                        <td colspan="3">
                            <asp:TextBox ID="txtMotivoR" runat="server" Width="459px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            Historial Programación</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td colspan="3">
                <asp:GridView ID="grvProgramacion" runat="server" AutoGenerateColumns="False" 
                    Width="98%" CssClass="mGrid">
                    <Columns>
<%--                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="hplModificar" runat="server" 
                                    
                                    NavigateUrl='<%# Eval("id_programacion", "programacionImagenesEdit.aspx?id={0}&accion=M") %>' 
                                    ToolTip="Modificación"><img src="../Imagenes/edit.png" alt="Modificar" 
                                    border="0" width="19" height="19" /></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        <asp:BoundField DataField="Id_programacion" Visible="False" />
                        <asp:BoundField DataField="Id_orden_examen" HeaderText="Orden Examen" 
                            Visible="False" />
                        <asp:BoundField DataField="Local" HeaderText="Local" />
                        <asp:BoundField DataField="Consultorio" HeaderText="Consultorio" />
                        <asp:BoundField DataField="Examen" HeaderText="Exámen" />
                        <asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yyyy hh:mm}" 
                            HeaderText="Fecha" HtmlEncode="False" />
                        <asp:BoundField DataField="Paciente" HeaderText="Paciente" Visible="False" />
                        <asp:BoundField DataField="Estado" HeaderText="Estado" />
<%--                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="hplAnular" runat="server" 
                                    
                                    NavigateUrl='<%# Eval("id_programacion", "programacionImagenesEdit.aspx?id={0}&accion=A") %>' 
                                    ToolTip="Anular"><img src="../Imagenes/borrar.png" alt="Modificar" border="0" width="18" height="18" /></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                    </Columns>
                </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td colspan="3">
                            <table style="width:100%;">
                                <tr>
                                    <td>
                            <asp:Button ID="btnProgramar" runat="server" 
                                Text="Programar" onclick="btnProgramar_Click" 
                                            onclientclick="javascript:return confirm(&quot;Seguro de registrar la Programación?&quot;)" />
                                    </td>
                                    <td>
                            <asp:Button ID="btnReProgramar" runat="server" 
                                Text="Re-Programar" onclick="btnReProgramar_Click" 
                                            onclientclick="javascript:return confirm(&quot;Seguro de registrar la Reprogramación?&quot;)"/>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnAnular" runat="server" onclick="btnAnular_Click" 
                                            Text="Anular" />
                                    </td>
                                    <td>
                            <asp:Button ID="btnOrden_pago" runat="server" 
                                Text="Generar Orden Pago" onclick="btnOrden_pago_Click" />
                                    </td>
                                    <td>
                                        <asp:Button ID="btnCerrar" runat="server" 
                                            onclick="btnCerrar_Click" Text="Cancelar" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:HiddenField ID="hidAccion" runat="server" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblMensaje" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="PaginaActual" runat="Server">
</asp:Content>