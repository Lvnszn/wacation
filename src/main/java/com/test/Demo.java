package com.test;


import java.util.Properties;
/**
 * Created by jasonpeng on 5/27/15.
 */
public class Demo extends javax.servlet.http.HttpServlet {
        protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
            String username = request.getParameter("username");
            String department = request.getParameter("department");
            String type = request.getParameter("type");
            String start = request.getParameter("start");
            String end = request.getParameter("end");
            String other = request.getParameter("other");


            String from = "18036086690@163.com";
            String to = "jack@xplusz.com";
            String subject = "Vacation";
            String text = "username: "+username+"\r\n"+
                    "department: "+department+"\r\n"+
                    "type: "+type+"\r\n"+
                    "start time: "+start+"\r\n"+
                    "end time: "+end+"\r\n"+
                    "other: "+other;

            Properties properties = new Properties();
            properties.setProperty("mail.transport.protocol", "smtp");
            properties.put("mail.smtp.host", "smtp.sina.com");
            properties.setProperty("mail.smtp.auth", "true");


        }

        protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
                    doPost(request,response);
                }


        }