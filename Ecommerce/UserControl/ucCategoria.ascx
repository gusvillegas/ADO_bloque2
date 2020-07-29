<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCategoria.ascx.cs" Inherits="Ecommerce.UserControl.ucCategoria" %>
 <table>
     <tr>
     
                        <td class="text-left">Categoria
                        </td>
     
                        <td class="auto-style1">
                           &nbsp;&nbsp;
                           <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                            
                        </td>
                        </tr>
                       <tr>
     
                        <td class="auto-style1">
                            &nbsp;</td>
     
                             <td class="auto-style1">
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo Requerido Categoria" ControlToValidate="DropDownList1" InitialValue="0" ForeColor="Red">Seleccione la categoria del producto</asp:RequiredFieldValidator>
                            
                        </td>
         </tr>
 </table>
