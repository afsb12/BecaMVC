<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web1.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nossa Primeira Página apsx</title>
    <link href="CSS/EstiloSite.css" rel="stylesheet" />
</head>
<body>
    <label id="title" class="Title">Título da Página</label>
    <br /> 
    <div class="Div1" id="StartDiv" runat="server">  
        <p class="Paragrafo"> 
        Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. 
        You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water.
        We swallow it too fast, we choke. We get some in our lungs, we drown.
        However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.

    </p>
      <p class="Paragrafo"> Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses
          differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react
          the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown.
          However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends.
    </p>

    </div>
    
    <div class="Div2" id="TextDiv" runat="server"> 
         <p class="Paragrafo">The path of the righteous man is beset on all sides by the iniquities of the selfish and
          the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through
          the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will
          strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy
          My brothers. And you will know My name is the Lord when I lay My vengeance upon thee.</p>
      <p class="AlturaLinha18"></p>
      <p class="Paragrafo">Well, the way they make shows is, they make one show. That show's called a pilot. Then they
          show that show to the people who make shows, and on the strength of that one show they decide if they're
          going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing.
          She starred in one of the ones that became nothing.</p>
    </div>
     

      <p class="Paragrafo" style="background-color:aqua;"> Esse é um exemplo de paragráfo</p>
    <br />  
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" id="text1"/>
            <br />
            <input runat="server" type="text" id="text2"/>
        </div>
    </form>
</body>
</html>
