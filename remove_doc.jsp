<%-- 
    Document   : remove_doc
    Created on : 23-Apr-2022, 3:13:37 pm
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
        
        <li class=""><a href="canceladmin.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>

                    </div> 
                    
                </div>
                        </header>
        <!-- header ends here--->
        
        <table border='5' align="center" width="2000">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>DOB</th>
                <th>Gender</th>
                <th>Qualification</th>
                <th>Department</th>
                <th>Phone Number</th> 
                <th>Email</th>
                <th>Address</th>
                <th>Start Time</th>
                <th>End Time</th>
                <th>Day</th>
                <th>Action</th>
            </tr>
            <%
    try{
    connection = DriverManager.getConnection(connectionUrl+database, userid, password);
    statement=connection.createStatement();
    String sql ="select d_id,dname,dob,gender,qualification,dep_name,ph_no,email,address,start_at,end_at,day from doc_registration;";
    resultSet = statement.executeQuery(sql);
    int i=0;
    while(resultSet.next()){
            %>
            <tr>
                <td><%=resultSet.getInt(1)%></td>
                <td><center><%=resultSet.getString(2)%></center></td>
        <td><center><%=resultSet.getString(3)%></center></td>
    <td><center><%=resultSet.getString(4)%></center></td>
<td><center><%=resultSet.getString(5)%></center></td>
<td><center><%=resultSet.getString(6)%></center></td>
<td><center><%=resultSet.getString(7)%></center></td>
<td><center><%=resultSet.getString(8)%></center></td>
<td><center><%=resultSet.getString(9)%></center></td>
<td><center><%=resultSet.getString(10)%></center></td>
<td><center><%=resultSet.getString(11)%></center></td>
<td><center><%=resultSet.getString(12)%></center></td>             
<td><a href="delete_doc.jsp?id=<%=resultSet.getString("d_id") %>"><button type="button"  class="delete">Delete</button></a></td>
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
