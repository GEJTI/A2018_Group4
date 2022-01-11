<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     
    <title>Dashboard</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
    <!--NAVIGATION-->
       <nav>
          <img src="img/ca.png" class="img" alt="logo"/> 
          <ul>
              <li><a href="#">HOME</a></li>
              <li><a href="#">ABOUT</a></li>
              <li><a href="#">COURSES</a></li>
              <li><a href="#">EVENTS</a></li>
              <li><a href="#">GALLERY</a></li>
              <li><a href="#">BLOG</a></li>
              <li><a href="#">PAGES</a></li>
              <li><a href="#">CONTACT</a></li>
          </ul>
       </nav>
<!--END OF NAVIGATION-->
        <div class="section">
          <h1>WE ENSURE A BETTER EDUCATION <br/> FOR A BETTER WORLD</h1>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium corporis, illum, rerum praesentium cupiditate inventore sed vero itaque impedit, recusandae eaque. Eligendi harum, molestias ducimus eum quas ut officia sit?</p>
          
          <a href="#"><asp:Button ID="Button1" cssclass="btn-1"  runat="server" Text="GET STARTED"/></a>
<!--FEATURES-->
         <div class="features">
             <asp:Button  Text="Learn Online Classes" ID="btnlearn" cssclass="btn-learn"  runat="server"/>
             <asp:Button Text= "Bridge Courses" ID="btnbc" cssclass="btn-bc"  runat="server"/>
             <asp:Button Text="Huge Library" ID="btnlib" cssclass="btn-lib"  runat="server"/>
             <asp:Button Text="Practical Exposure" ID="btnpe" cssclass="btn-pe"  runat="server"/>
         </div>
<!--END OF FEATURES-->
      </div>
<!--END OF SECTION-->
   </div>
<!--END OF WRAPPER-->

        <!--SHOWCASE-->
   <showcase>
       <h1>POPULAR COURSES WE OFFER</h1>
       <div id="courses">
           <div class="cs">
               <h3>Computer Science</h3>
               <img src="img/cse.jpeg" width="50%" alt="cs" />
               <a href="#" ><asp:Button Text="Apply Here" class="apply" ID="apply" cssclass="btn-apply"  runat="server"/></a>
           </div>
           <div class="business">
               <h3>Business Studies</h3>
               <img src="img/business.jpeg" alt="business"/>
               <a href="#" ><asp:Button Text="Apply Here" class="apply" ID="apply2" cssclass="btn-apply"  runat="server"/></a>
           </div>
           <div class="journalism">
               <h3>Media and Journalism</h3>
               <img src="img/journalism.jpeg" alt="media"/>
               <a href="#" ><asp:Button Text="Apply Here" class="apply" ID="apply3" cssclass="btn-apply"  runat="server"/></a>
           </div>
           <div class="arts">
               <h3>Arts & Humanities</h3>
               <img src="img/arts.jpeg" alt="arts"/>
               <a href="#" ><asp:Button Text="Apply Here" class="apply" ID="apply4" cssclass="btn-apply"  runat="server"/></a>
           </div>
           <div class="medical">
               <h3>Medical Science</h3>
               <img src="img/medical.jpeg" alt="ms"/>
               <a href="#" ><asp:Button Text="Apply Here" class="apply" ID="apply5" cssclass="btn-apply"  runat="server"/></a>
           </div>
       </div>
   </showcase>
<!--END OF SHOWCASE-->
    </form>

    <footer>
       <p>Copyright &copy; 2022, Group 4 BSCS A2018</p>
   </footer>
</body>
</html>
