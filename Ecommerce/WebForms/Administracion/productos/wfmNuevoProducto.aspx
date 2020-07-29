<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfmNuevoProducto.aspx.cs" Inherits="Ecommerce.WebForms.Administracion.productos.wfmNuevoProducto" %>
<%@ Register Src="~/UserControl/ucCategoria.ascx" TagName="Uc_categoria" TagPrefix="Uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ecommerce</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="../../../css/bootstrap.min.css" />
    <link rel="stylesheet" href="../../../css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="../../../css/fullcalendar.css" />
    <link rel="stylesheet" href="../../../css/matrix-style.css" />
    <link rel="stylesheet" href="../../../css/matrix-media.css" />
    <link href="../../../font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../../css/jquery.gritter.css" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
    </style>
    <script type="text/javascript">
           function previewFile() {
               var preview = document.querySelector('#<%=Avatar.ClientID %>');
               var file = document.querySelector('#<%=avatarUpload.ClientID %>').files[0];
               var reader = new FileReader();

               reader.onloadend = function () {
                   preview.src = reader.result;
               }

               if (file) {
                   reader.readAsDataURL(file);
               } else {
                   preview.src = "";
               }
           }
       </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <h1><a href="dashboard.html">Matrix Admin</a></h1>
        </div>

        <!--top-Header-menu-->
        <div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav">
                <li class="dropdown" id="profile-messages"><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i><span class="text">Welcome User</span><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="icon-user"></i>My Profile</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="icon-check"></i>My Tasks</a></li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="icon-key"></i>Log Out</a></li>
                    </ul>
                </li>
                <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i><span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i>new message</a></li>
                        <li class="divider"></li>
                        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i>inbox</a></li>
                        <li class="divider"></li>
                        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i>outbox</a></li>
                        <li class="divider"></li>
                        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i>trash</a></li>
                    </ul>
                </li>
                <li class=""><a title="" href="#"><i class="icon icon-cog"></i><span class="text">Settings</span></a></li>
                <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i><span class="text">Logout</span></a></li>
            </ul>
        </div>
        <!--close-top-Header-menu-->
        <!--start-top-serch-->
        <div id="search">
            <input type="text" placeholder="Search here..." />
            <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
        </div>
        <!--close-top-serch-->
        <!--sidebar-menu-->
        <div id="sidebar">
            <a href="#" class="visible-phone"><i class="icon icon-home"></i>Dashboard</a>
            <ul>
                <li class="active"><a href="index.html"><i class="icon icon-home"></i><span>Dashboard</span></a> </li>
                <li class="submenu"><a href="#"><i class="icon icon-th-list"></i><span>Productos</span> <span class="label label-important">2</span></a>
                    <ul>
                        <li><a href="wfmNuevoProducto.aspx">Nuevo Producto</a></li>
                        <li><a href="wfmListaProductos.aspx">Lista de Productos</a></li>
                    </ul>
                </li>

                <li><a href="widgets.html"><i class="icon icon-inbox"></i><span>Widgets</span></a> </li>
                <li><a href="tables.html"><i class="icon icon-th"></i><span>Tables</span></a></li>
                <li><a href="grid.html"><i class="icon icon-fullscreen"></i><span>Full width</span></a></li>
                <li class="submenu"><a href="#"><i class="icon icon-th-list"></i><span>Forms</span> <span class="label label-important">3</span></a>
                    <ul>
                        <li><a href="form-common.html">Basic Form</a></li>
                        <li><a href="form-validation.html">Form with Validation</a></li>
                        <li><a href="form-wizard.html">Form with Wizard</a></li>
                    </ul>
                </li>
                <li><a href="buttons.html"><i class="icon icon-tint"></i><span>Buttons &amp; icons</span></a></li>
                <li><a href="interface.html"><i class="icon icon-pencil"></i><span>Eelements</span></a></li>
                <li class="submenu"><a href="#"><i class="icon icon-file"></i><span>Addons</span> <span class="label label-important">5</span></a>
                    <ul>
                        <li><a href="index2.html">Dashboard2</a></li>
                        <li><a href="gallery.html">Gallery</a></li>
                        <li><a href="calendar.html">Calendar</a></li>
                        <li><a href="invoice.html">Invoice</a></li>
                        <li><a href="chat.html">Chat option</a></li>
                    </ul>
                </li>
                <li class="submenu"><a href="#"><i class="icon icon-info-sign"></i><span>Error</span> <span class="label label-important">4</span></a>
                    <ul>
                        <li><a href="error403.html">Error 403</a></li>
                        <li><a href="error404.html">Error 404</a></li>
                        <li><a href="error405.html">Error 405</a></li>
                        <li><a href="error500.html">Error 500</a></li>
                    </ul>
                </li>

            </ul>
        </div>
        <!--sidebar-menu-->

        <%-------------------------------------------------------------------------CONTENIDO--------------------------------------------------------------------%>
        <div id="content">
            <div id="content-header">
                <div id="breadcrumb"><a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>Home</a> <a href="#" class="current">Productos</a> </div>
                <h1>Nuevo Producto</h1>
            </div>
            <div class="container-fluid">
                <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="lbGuardarProducto" runat="server"  ForeColor="Black">Guardar</asp:LinkButton>
                            <br />
                            <asp:ImageButton ID="IbGuardarProducto" runat="server" ImageUrl="~/images/guardar.png" Width="40px" Height="40px"  OnClick="IbGuardarProducto_Click"  />
                            
                        </td>
                        <td>
                           <asp:LinkButton ID="lbNuevoProducto" runat="server" ForeColor="Black"  CausesValidation="false" OnClick="lbNuevoProducto_Click">Nuevo</asp:LinkButton>
                            <br />
                           <asp:ImageButton ID="ibNuevoProducto" runat="server" ImageUrl="~/images/nuevo.png" Width="40px" Height="40px"  CausesValidation="false" OnClick="ibNuevoProducto_Click" />
                            
                            
                            
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="2" style="font-size: large">
                            &nbsp;</td>
                    </tr>
                   
                    <tr>
                        <td class="auto-style1">ID
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="lblId" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                       
                        <td class="auto-style1" colspan="2">
                            <%--<asp:DropDownList ID="ddlCategoria" runat="server" Width="219px"></asp:DropDownList>--%>
                            <uc1:uc_categoria id="UC_CATEGORIA1" runat="server"></uc1:uc_categoria>
                            
                        </td>
                        <td>Precio de compra<br />
                        &nbsp;</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtPreCom" runat="server" Width="206px"></asp:TextBox>
                             <br />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campo requerido Precio de compra" ControlToValidate="txtPreCom" ForeColor="Red">Ingrese el precio de compra</asp:RequiredFieldValidator>
                            &nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>Codigo
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtCodPro" runat="server" Width="206px"></asp:TextBox>
                            &nbsp;
                            </td>
                        <td>Precio de venta
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtPreVen" runat="server" Width="206px"></asp:TextBox>
                            &nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo requerido Codigo" ControlToValidate="txtCodPro"  ForeColor="Red">Ingrese el codigo del producto</asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style1">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo requerido Precio de venta" ControlToValidate="txtPreVen" ForeColor="Red">Ingrese el precio de venta</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td class="auto-style1">
                            </td>
                        <td class="auto-style1"></td>
                        <td class="auto-style1">
                            </td>
                    </tr>
                    <tr>
                        <td>Nombre
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtNomPro" runat="server" Width="206px"></asp:TextBox>
                            &nbsp;
                            </td>
                         <td>Stock Maximo
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtStockMax" runat="server" Width="206px"></asp:TextBox>
                            &nbsp;
                            </td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo requerido Nombre" ControlToValidate="txtNomPro"  ForeColor="Red">Ingrese el nombre del producto</asp:RequiredFieldValidator>
                        </td>
                         <td>&nbsp;</td>
                        <td class="auto-style1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Campo requerido Stock Maximo" ControlToValidate="txtStockMax"  ForeColor="Red">Ingrese el Stock Maximo</asp:RequiredFieldValidator>
                        
                        </td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                         <td>&nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>

                    <tr>
                        <td rowspan="1" translate="yes">Descripcion
                        </td>
                        <td>
                            <asp:TextBox ID="txtDesPro" runat="server" Width="206px"></asp:TextBox>
                            &nbsp;
                            </td>
                        

                        <td>Stock Minimo
                        </td>
                        <td>
                            <asp:TextBox ID="txtStockMin" runat="server" Width="206px"></asp:TextBox>
                            &nbsp;
                            </td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Campo requerido Descripcion" ControlToValidate="txtDesPro"  ForeColor="Red">Ingrese la descripcion del producto</asp:RequiredFieldValidator>
                        </td>
                        

                        <td>&nbsp;</td>
                        <td class="auto-style1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Campo requerido Stock Minimo" ControlToValidate="txtStockMin" ForeColor="Red">Ingrese el Stock Minimo</asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                        

                        <td>&nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>Imagen
                        </td>
                        <td class="auto-style1">

                            <input id="avatarUpload" type="file" name="file" onchange="previewFile()"  runat="server" />
                            <%--<asp:FileUpload ID="avatarUpload" runat="server" />--%>
                            <%--<asp:Button ID="btnUpload" runat="server" Text="Cargar" OnClick="Upload" />--%>
                            <br />
                            <asp:Image ID="Avatar" runat="server" Height="180px"  Width="210px" />

                            
                            <%--<asp:FileUpload ID="avatarUpload" runat="server" Width="308px"  />
                            <asp:Button ID="btnUpload" runat="server" Text="Cargar" OnClick="" />--%>
                       
                        </td>
                         <td>Mensaje</td>
                        <td class="auto-style1">
                            <asp:Label ID="lblMensajes" runat="server" Text="" ForeColor="Red"></asp:Label>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"/>
                        </td>
                    </tr>
                                                            
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="avatarUpload" ErrorMessage="Campo requerido Imagen" ForeColor="Red">Seleccione una imagen</asp:RequiredFieldValidator>

                        </td>
                         <td>&nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                                                            
                   
                                                            
                </table>
            </div>
        </div>
        <!--main-container-part-->

    </form>

    <script src="../../../js/excanvas.min.js"></script>
    <script src="../../../js/jquery.min.js"></script>
    <script src="../../../js/jquery.ui.custom.js"></script>
    <script src="../../../js/bootstrap.min.js"></script>
    <script src="../../../js/jquery.flot.min.js"></script>
    <script src="../../../js/jquery.flot.resize.min.js"></script>
    <script src="../../../js/jquery.peity.min.js"></script>
    <script src="../../../js/fullcalendar.min.js"></script>
    <script src="../../../js/matrix.js"></script>
    <script src="../../../js/matrix.dashboard.js"></script>
    <script src="../../../js/jquery.gritter.min.js"></script>
    <script src="../../../js/matrix.interface.js"></script>
    <script src="../../../js/matrix.chat.js"></script>
    <script src="../../../js/jquery.validate.js"></script>
    <script src="../../../js/matrix.form_validation.js"></script>
    <script src="../../../js/jquery.wizard.js"></script>
    <script src="../../../js/jquery.uniform.js"></script>
    <script src="../../../js/select2.min.js"></script>
    <script src="../../../js/matrix.popover.js"></script>
    <script src="../../../js/jquery.dataTables.min.js"></script>
    <script src="../../../js/matrix.tables.js"></script>

    <script type="text/javascript">
        // This function is called from the pop-up menus to transfer to
        // a different page. Ignore if the value returned is a null string:
        function goPage(newURL) {

            // if url is empty, skip the menu dividers and reset the menu selection to default
            if (newURL != "") {

                // if url is "-", it is this page -- reset the menu:
                if (newURL == "-") {
                    resetMenu();
                }
                // else, send page to designated URL            
                else {
                    document.location.href = newURL;
                }
            }
        }

        // resets the menu selection upon entry to this page:
        function resetMenu() {
            document.gomenu.selector.selectedIndex = 2;
        }
    </script>
</body>
</html>
