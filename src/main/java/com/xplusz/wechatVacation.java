package com.xplusz;


import jodd.mail.SendMailSession;
import jodd.mail.SmtpServer;
import jodd.mail.Email;

import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;


/**
 * Created by jasonpeng on 5/27/15.
 */
public class WechatVacation extends javax.servlet.http.HttpServlet {



    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {

        Properties prop = new Properties();
        FileInputStream in = new FileInputStream("config.properties");

        prop.load(in);

        String FROM = prop.getProperty("FROM");
        String MIMA = prop.getProperty("MIMA");
        String SUBJECT = prop.getProperty("SUBJECT");
        String HOST = prop.getProperty("HOST");
        String PORT = prop.getProperty("PORT");
        String to[] = getTo(prop.getProperty("TO"));

        String username = request.getParameter("username");
        String type = request.getParameter("type");
        String start = request.getParameter("start");
        String end = request.getParameter("end");
        String other = request.getParameter("other");
        String reason = request.getParameter("reason");

        Date date = new java.util.Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
        String now = sdf.format(date);

        String text =
                "<meta name='viewport' content='width=device-width, initial-scale=1'>" +
                "<div style='width:512px;height:auto;margin:0px auto;font-family:Calibriborder-radius:5px;padding:5px;'>"+
                "<table  border='0' style='background:img/bg.png;'align=center width=400px><tr><td colspan='2'><font style='padding:0px 0px;font-weight:bold;font-size:18px'>Apply For Leave<hr></font></td></tr>" +
                        "<tr><td><table><tr><td></td></tr></table></td></tr>" +
                        "<tr><td align=left><font style='font-weight:bold;font-size:15px'>Staff</font></td><td><font style='padding:0px 40px;font-size:15px'> "+username+"</font></td></tr>" +
                        "<tr><td align=left><font style='font-weight:bold;font-size:15px'>Leave Type:</font></td><td><font style='padding:0px 40px;font-size:15px'> "+type+"</font></td></tr>"+
                        "<tr><td align=left><font style='font-weight:bold;font-size:15px'>Start Time:</font></td><td><font style='padding:0px 40px;font-size:15px'> "+start+"</font></td></tr>" +
                        "<tr><td align=left><font style='font-weight:bold;font-size:15px'>End Time:</font></td><td><font style='padding:0px 40px;font-size:15px'> "+end+"</font></td></tr>"+
                        "<tr><td align=left><font style='font-weight:bold;font-size:15px'>Days:</font></td><td><font style='padding:0px 40px;font-size:15px'> "+other+"</font></td></tr>"+
                        "<tr><td align=left><font style='font-weight:bold;font-size:15px'>Reason:</font></td><td><font style='padding:0px 40px;font-size:15px'> "+reason+"</font></td></tr>" +
                        "<tr><td align=left><font style='font-weight:bold;font-size:15px'>Apply Time:</font></td><td><font style='padding:0px 40px;font-size:15px'> "+now+"</font></td></tr>" +
                "</table>"+
                "</div>";

        Email email = Email.create()
                .from(FROM)
                .to(to)
                .subject(SUBJECT)
                .addHtml("<html><META http-equiv=Content-Type content=\"text/html; charset=utf-8\">" +
                        text + "</html>");

        SmtpServer mailSession =
                new SmtpServer(HOST,Integer.parseInt(PORT));
        mailSession.authenticateWith(FROM, MIMA);
        SendMailSession session = mailSession.createSession();
        session.open();
        session.sendMail(email);
        session.close();

        request.getRequestDispatcher("success.html").forward(request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doPost(request,response);
    }


    private String[] getTo(String toWithQuet) {
        if(toWithQuet==null||!toWithQuet.contains(",")){
            return null;
        }
        String to[] = toWithQuet.split(",");
        return to;
    }

}