<%-- 
    Document   : calcular
    Created on : 13/11/2021, 5:00:24 p.m.
    Author     : DIDIER
--%>


<%@page import="Modelo.Nomina"%>
<%
    Nomina nomi = (Nomina) request.getAttribute("objn");
//String nombre = (request.getParameter("nombre"));
//String ident = (request.getParameter("ident"));
//Double sbase  = Double.parseDouble(request.getParameter("sbase"));
//Double dias =Double.parseDouble (request.getParameter("dias"));
//
//        Double aux;
//        Double salario=(sbase/30)*dias;
//        Double salud=salario*0.03;
//        Double pension=salario*0.04;
//     if (sbase < (2 * 737117)) {
//                    aux = (83140 / 30) * dias; 
//                } else {
//                    aux = 0*dias;
//                    }
//     
//        Double neto=salario+aux-salud-pension;

%>
<%--crear objeto nomina llamado nomi y llamamos a objn--%>
<%@ page language="java" %>
<%--<%@ page import = "Parcial.Controlador.Controlador"%>--%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Nomina</title>
        <style type="text/css" media="screen">
            .caja,div,a{
                margin: auto;
            }
            td{
                text-align: center;
                font-size: 25px;
            }
            th{
                text-align: center;
                font-size: 40px;

            }
            dito{
                background-color: white;
                font-size: 40px;
            }
        </style>
    </head>
    <body>

        <div class="col-sm-10 ">
            <div class="card col-sm-6">
                <div class="card-body">
                    <form action="Controlador?menu=ejemplo" method="POST">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>NOMINA</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>NOMBRE:  <%=nomi.getNombre()%></td><%--llamamos a nombre--%>
                                </tr>
                                <tr>
                                    <td>IDENTIFICACION:  <%=nomi.getId()%></td>
                                </tr>
                                <tr>
                                    <td>SALARIO BASE:  <%=nomi.getSalariobasico()%></td>

                                </tr>
                                <tr>
                                    <td>DIAS TRABAJADOS:  <%=nomi.getDias()%></td>

                                </tr>
                                <tr>
                                    <td>AUXILIO DE TRANSPORTE:  <%=nomi.getAuxilioTransporte()%></td>

                                </tr>
                                <tr>
                                    <td>SALUD: <%=nomi.getSalud()%> </td>

                                </tr>
                                <tr>
                                    <td>PENSIÓN: <%=nomi.getPension()%> </td>

                                </tr>
                                </tr>
                                <tr>
                                    <td>NETO A PAGAR: <%=nomi.calcularsalario()%> </td>

                                </tr>
                            </tbody>
                        </table>

                    </form>
                </div>
            </div>



            <div class="col-sm-3">
                <a style="margin: auto"  href="index.jsp"  type="button" class="btn btn-primary "na>NUEVA CONSULTA</a>
            </div>
        </div>

        <p>
        <div class="col-sm-3">
            <a id="dito" href="https://matias.ma/nsfw/" target="_blank" style="background-color: white,font-size: 5px"> .</a>
        </div>



    </body>
</html>