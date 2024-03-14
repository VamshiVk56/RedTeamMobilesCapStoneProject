<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
String q1="create table users(name varchar(100),email varchar(100)primary key,mobilenumber integer,password varchar(100),address varchar(200),city varchar(100),state varchar(100),country varchar(100))";
String q2="create table products(id int primary key,name varchar(200),description varchar(2000),category varchar(200),price integer,active varchar(100),image varchar(5000))";
String q3="create table cart(email varchar(100),product_id integer,quantity integer,price integer,total integer,address varchar(500),city varchar(100),state varchar(200),country varchar(100),mobileNumber int,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(100),category varchar(200))";
String q4="create table event(id int,name varchar(100),description varchar(900),fromDate DATETIME,toDate DATETIME)";
String q5="create table coupon(id int,name varchar(100),description varchar(600),discount varchar(200),category varchar(200))";
String q6="create table payment(cardNumber bigint,name varchar(200),month varchar(50),year varchar(50),email varchar(100))";

System.out.println(q1);
System.out.println(q2);
System.out.println(q3);
System.out.println(q4);
System.out.println(q5);
System.out.println(q6);

st.execute(q1);
st.execute(q2);
st.execute(q3);
st.execute(q4);
st.execute(q5);
st.execute(q6);

System.out.print("Table is created");
con.close();
}
catch(Exception e)
{
System.out.print(e);
}
%>