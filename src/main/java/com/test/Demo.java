package com.test;



import javax.mail.Authenticator;
import javax.mail.Session;
import javax.mail.Message;
import javax.mail.Transport;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.InternetAddress;
import javax.mail.PasswordAuthentication;
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
            String to = "jason.peng@xplusz.com";
            String subject = "Vacation";
            String text = "username: "+username+"\r\n"+
                    "department: "+department+"\r\n"+
                    "type: "+type+"\r\n"+
                    "start time: "+start+"\r\n"+
                    "end time: "+end+"\r\n"+
                    "other: "+other;

            Properties properties = new Properties();
            properties.setProperty("mail.transport.protocol", "smtp");
            properties.put("mail.smtp.host", "smtp.163.com");
            properties.setProperty("mail.smtp.auth", "true");

            Authenticator auth = new AjavaAuthenticator(from,"pjx94!");
            Session session = Session.getDefaultInstance(properties, auth);
            try {

                Message message = new MimeMessage(session);//Message存储发送的电子邮件信息
                message.setFrom(new InternetAddress(from));
                message.setRecipient(Message.RecipientType.TO,
                        new InternetAddress(to));//设置收信邮箱
                message.setSubject(subject);//设置主题
                message.setText(text);//设置内容
                Transport.send(message);//发送
            } catch (MessagingException e) {
                e.printStackTrace();
            }

        }

        protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
                    doPost(request,response);
                }


        }
class AjavaAuthenticator extends Authenticator {
    private String user;
    private String pwd;
    public AjavaAuthenticator(String user, String pwd) {
        this.user = user;
        this.pwd = pwd;
    }
    @Override
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(user, pwd);
    }
}