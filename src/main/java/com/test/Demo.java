package com.test;



import javax.mail.Authenticator;
import javax.mail.Session;
import javax.mail.Message;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.InternetAddress;
import javax.mail.PasswordAuthentication;
import java.util.Properties;


/**
 * Created by jasonpeng on 5/27/15.
 */
public class Demo extends javax.servlet.http.HttpServlet {

    public static final String FROM = "18036086690@163.com";
    public static final String MIMA = "pjx94!";
    public static final String CONTENT_TYPE = "text/html;charset=utf-8";
    public static final String SUBJECT = "Apply For Leave";


    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        String username = request.getParameter("username");
        String teams = request.getParameter("department");
        String type = request.getParameter("type");
        String start = request.getParameter("start");
        String end = request.getParameter("end");
        String other = request.getParameter("other");
        String phone = request.getParameter("phone");
        String reason = request.getParameter("reason");


        String []to = {"jason.peng@xplusz.com"};

        String text =
                "<div style='width:1024px;height:auto;margin:0px auto;font-size:14px;font-family:微软雅黑;border-radius:5px;padding:5px;'><center><h3>"+
                "<table align=left width=25%><tr><td align=left>Staff</td><td> "+username+"</td></tr>"+
                        "<tr><td align=left>Team:</td><td> "+teams+"</td></tr>"+
                        "<tr><td align=left>Leave Type:</td><td> "+type+"</td></tr>"+
                        "<tr><td align=left>Start Time:</td><td> "+start+"</td></tr>"+
                        "<tr><td align=left>End Time:</td><td> "+end+"</td></tr>"+
                        "<tr><td align=left>Days:</td><td> "+other+"</td></tr>"+
                        "<tr><td align=left>Phone:</td><td> "+phone+"</td></tr>"+
                        "<tr><td align=left>Reason:</td><td> "+reason+"</td></tr>" +
                "</table>"+
                "</div>";
        String toList = getMailList(to);


        Properties properties = new Properties();
        properties.setProperty("mail.transport.protocol", "smtp");
        properties.put("mail.smtp.host", "smtp.163.com");
        properties.setProperty("mail.smtp.auth", "true");

        Authenticator auth = new AjavaAuthenticator(FROM,MIMA);
        Session session = Session.getDefaultInstance(properties, auth);
        try {
            InternetAddress[] iaToList = new InternetAddress().parse(toList);
            Message message = new MimeMessage(session);//Message存储发送的电子邮件信息
            message.setFrom(new InternetAddress(FROM));
            message.setRecipients(Message.RecipientType.TO, iaToList);//设置收信邮箱
            message.setSubject(SUBJECT);//设置主题
//                message.setText(text);//设置内容
            message.setContent(text, CONTENT_TYPE);//设置内容

            Transport.send(message,message.getAllRecipients());//发送
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doPost(request,response);
    }

    private String getMailList(String[] mailArray) {

        StringBuffer toList = new StringBuffer();
        int length = mailArray.length;
        if (mailArray != null && length < 2) {
            toList.append(mailArray[0]);
        } else {
            for (int i = 0; i < length; i++) {
                toList.append(mailArray[i]);
                if (i != (length - 1)) {
                    toList.append(",");
                }

            }
        }
        return toList.toString();
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