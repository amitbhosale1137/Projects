<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Image_Detail.aspx.cs" Inherits="Image_Detail" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ImageGallery DataList</title>
    <script type="text/javascript">
 var CurrentPage=1;
function GetImageIndex(obj)
{
    while(obj.parentNode.tagName != "TD")
        obj=obj.parentNode;
   var td=obj.parentNode;
   var tr=td.parentNode;
   if(td.rowIndex%2==0)
   {
      return td.cellIndex+tr.rowIndex;
   }
   else
   {
      return td.cellIndex+(tr.rowIndex*2);
   }
}
 function LoadDiv(url, lnk)
 {
    var img = new Image();
    var bcgDiv = document.getElementById("divBackground");
    var imgDiv = document.getElementById("divImage");
    var imgFull = document.getElementById("imgFull");
    var imgLoader= document.getElementById("imgLoader");
    var dl = document.getElementById("<%=DataList1.ClientID%>");
    var imgs = dl.getElementsByTagName("img");

    
    CurrentPage = GetImageIndex(lnk.parentNode) + 1;
    imgLoader.style.display = "block";
    img.onload = function() {
        imgFull.src = img.src;
        imgFull.style.display = "block";
        imgLoader.style.display = "none";
    };
    img.src= url;
    Prepare_Pager(imgs.length);
    var width = document.body.clientWidth;
    if (document.body.clientHeight > document.body.scrollHeight)
    {
        bcgDiv.style.height = document.body.clientHeight + "px";
    }
    else
    {
        bcgDiv.style.height = document.body.scrollHeight + "px" ;
    }

    imgDiv.style.left = (width-650)/2 + "px";
    imgDiv.style.top =  "20px";
    bcgDiv.style.width="100%";
    
    bcgDiv.style.display="block";
    imgDiv.style.display="block";
    return false;
 } 
 function HideDiv()
 {
    var bcgDiv = document.getElementById("divBackground");
    var imgDiv = document.getElementById("divImage");
    var imgFull = document.getElementById("imgFull");
    bcgDiv.style.display="none";
    imgDiv.style.display="none";
    imgFull.style.display="none";
 }
 function doPaging(lnk)
 {
    var dl = document.getElementById("<%=DataList1.ClientID%>");
    var imgs = dl.getElementsByTagName("img");
    var imgLoader= document.getElementById("imgLoader");
    var imgFull = document.getElementById("imgFull");
    
    var img = new Image();
    if(lnk.id == "Next")
    {
        if(CurrentPage<imgs.length)
        {
            CurrentPage++;
            imgLoader.style.display = "block";
            imgFull.style.display = "none";
            img.onload = function() {
            imgFull.src = imgs[CurrentPage-1].src;
            imgFull.style.display = "block";
            imgLoader.style.display = "none";
            };
        }
    }
    else
    {
        if(CurrentPage>1)
        {   
            CurrentPage--;        
            imgLoader.style.display = "block";
            imgLoader.style.display = "none";
            img.onload = function() {
            imgFull.src = imgs[CurrentPage-1].src;
            imgFull.style.display = "block";
            imgLoader.style.display = "none";
            };
        }
    }
    Prepare_Pager(imgs.length);
    img.src= imgs[CurrentPage-1].src;
 }
 function Prepare_Pager(imgCount)
 {
    var Previous = document.getElementById("Previous");
    var Next = document.getElementById("Next");
    var lblPrevious = document.getElementById("lblPrevious");
    var lblNext = document.getElementById("lblNext");
    if(CurrentPage<imgCount)
    {
       lblNext.style.display="none";
       Next.style.display="block";
    }
    else
    {
       lblNext.style.display="block";
       Next.style.display="none";
    }
    if(CurrentPage>1)
    {
        Previous.style.display="block";
        lblPrevious.style.display="none";        
    }
    else
    {
        Previous.style.display="none";
        lblPrevious.style.display="block";        
    }
 }
</script>

<style type = "text/css">
     .modal
     {
        display: none; 
        position: absolute;
        top: 0px; 
        left: 0px;
        background-color:black;
        z-index:100;
        opacity: 0.8;
        filter: alpha(opacity=60);
        -moz-opacity:0.8;
        min-height: 100%;
     }
     #divImage
     {
        display: none;
        z-index: 1000;
        position: fixed;
        top: 0;
        left: 0;
        background-color:White;
        height: 550px;
        width: 610px;
        padding: 3px;
        border: solid 1px black;
     }
    .dlTable
    {
        border:double 1px #D9D9D9;
        width:200px;
        text-align:left;
    }
</style> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
<asp:DataList ID="DataList1" runat="server" RepeatColumns = "2"  RepeatLayout = "Table"  Width = "500px">
    <ItemTemplate>
        <br />
        <table cellpadding = "5px" cellspacing = "0" class="dlTable">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl = '<%# Eval("FilePath")%>' 
                Width = "200px" Height = "200px" onclick = "LoadDiv(this.src, this)" style ="cursor:pointer" />
            </td>
        </tr>
        </table>
        <br /> 
    </ItemTemplate> 
</asp:DataList>
<asp:Panel ID="pnlPager" runat="server" Height="20px" Width="153px">
    <asp:LinkButton ID="lnkPrev" runat="server" CommandName = "Previous" 
        Text = "<< Previous" OnClick = "Pager_Click"></asp:LinkButton>
    &nbsp;
    <asp:LinkButton ID="lnkNext" runat="server" CommandName = "Next" 
        Text = "Next >>"  OnClick = "Pager_Click"></asp:LinkButton>
</asp:Panel>
    </div>
    <div id="divBackground" class="modal">
</div>
<div id="divImage" >
    <table style="height: 100%; width: 100%">
        <tr>
            <td valign="middle" align="center" colspan = "3" style ="height:500px;">
                <img id="imgLoader" runat="server" alt=""
                 src="images/loader.gif" />
                <img id="imgFull" alt="" src="" 
                 style="display: none;
                height: 500px;width: 600px" />
            </td>
        </tr>
        <tr>
            <td align = "left" style="padding:10px;width:200px">
              <a id = "Previous" href = "javascript:" onclick = "doPaging(this)" style ="display:none">Previous</a>
                <span id = "lblPrevious">Previous</span>
            </td>
             <td align="center" valign="middle" style ="width:200px">
                <input id="btnClose" type="button" value="close"
                 onclick="HideDiv()"/>
            </td>
            <td align = "right" style ="padding:10px;width:200px">
                <a id = "Next" href = "javascript:" onclick = "doPaging(this)">Next</a>
                <span id = "lblNext" style ="display:none">Next</span>
            </td>
        </tr>
        
    </table>
</div>
    </form>
</body>
</html>
