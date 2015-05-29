package com.test;

import java.io.PrintWriter;

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
                    System.out.println(username+department+type+start+end);

                }

        protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
                    doPost(request,response);
                }

        public static void main(String []args){
            System.out.print("asdasd");
        }
        }