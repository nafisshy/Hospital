<%-- 
    Document   : remove_user
    Created on : 23-Apr-2022, 3:30:20 pm
    Author     : sadiq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "hospital";
String userid = "admin";
String password = "RdsHospital1!";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <!-- Importing bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <!-- Bootstrap import finished -->
        <!--Linking vanilla css-->
        <link rel="stylesheet" href="style.css"/>
        <!--Importing font awesome -->
 <script src="https://kit.fontawesome.com/ddbd31c09a.js" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <!-- Font awesome imported -->
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
    </head>
    <body>
        <!--Header Unauthorized Begins Here -->
       <header>
            <nav class="navbar navbar-default">
                <div class="container-fluid">

                    <div class="navbar-header">

                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                        </button>
                        <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-plus-sign"></span>&nbsp&nbsp&nbsp Inas Hospital</a>

                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li class=""><a href="admin.jsp">Home</a></li>
                            <li class=""><a href="viewComplaints.jsp">Feedback</a></li>
                            <li class=""><a href="view_patient_admin.jsp">Patient</a></li>

                        </ul>
                        <ul class="nav navbar-nav navbar-right">
        <li class=""><a href="getEditAdmin.jsp"><span class="fa fa-solid fa-user-pen" style="color:#5cb85c"></span> Edit Profile</a></li>
        <li class=""><a href="canceladmin.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>

                    </div> 
                    
                </div>
                        </header>
                        <!-- header ends here--->
               <table border='5' align="center" width="1000">
        <tr>
            <th>Id</th>
            <th> First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>DOB</th>
            <th>Address</th> 
            <th>Action</th>
            
        </tr>
        <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select reg_id,fname,lname,email,ph_no,dob,address from registration;";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
 <tr>
            <td><%=resultSet.getInt("reg_id")%></td>
            <td><center><%=resultSet.getString("fname")%></center></td>
            <td><center><%=resultSet.getString("lname")%></center></td>
            <td><center><%=resultSet.getString("email")%></center></td>
            <td><center><%=resultSet.getString("ph_no")%></center></td>
            <td><center><%=resultSet.getString("dob")%></center></td>
            <td><center><%=resultSet.getString("address")%></center></td>
           <td><a href="delete_user.jsp?id=<%=resultSet.getString("reg_id") %>"><button type="button"  class="delete">Delete</button></a></td> 
        </tr>
         <%
i++;
}

} catch (Exception e) {
System.out.print(e);
}
%>
</table>
    </body>
</html>
