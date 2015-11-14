<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>CRIME TEAM - Plannifier VISITE</title>
        <link href="<c:url value='/resources/css/crimeteam.css'/>" rel="stylesheet" type="text/css">
    </head>

    <body bgcolor="#FFFFFF">
        <div style="text-align:center; width:70%; " >
            <table>
                <tr>
                    <td align="center" valign="top" width="250"></td>
                    <td style="text-align: center; width: 400px;">
                        <img style="width: 258px; height: 95px;" alt="CNRS"
                             src="<c:url value='/resources/images/logos/CRM.jpg'/>"></td>
                    <td style="width: 400px; text-align: center;">
                        <img style="width: 306px; height: 82px;" alt="CRIME"
                             src="<c:url value='/resources/images/logos/crimeteam.png'/>"></td>
                    <td align="center" valign="top" width="250"></td>
                </tr>
                <tr> 
                    <td align="center" valign="top" width="250"></td>
                    <td colspan="2">
                        <font color="#000000" face="Arial" size="6">
                            <b>CUSTOMER RELATIONSHIP MANAGEMENT</b>
                        </font>
                    </td>
                </tr>
            </table>
            <p></p>
            <form name="form2" method="post" action="">
                <table>
                    <tr bgcolor="#FC750D"> 
                        <td valign="top" colspan="2">
                            <font face="Arial, Helvetica, sans-serif" size="3" color="#FFFFFF">
                                <b><spring:message code="label.attention2" /></b>
                            </font>
                        </td>
                    </tr>
                    <tr> 
                        <td valign="top" colspan="2">&nbsp;</td>
                    </tr>
                    <tr> 
                        <td valign="top" colspan="2">
                            <font size="3" color="#CC0000" face="Arial">
                                <b><spring:message code="label.soustitre" /></b>
                            </font> 
                            <hr color="#CC0000" size="1" noshade>
                        </td>
                    </tr>
               
                    <tr> 
                        <td valign="top" class="fontArial"><spring:message code="label.svisitenom" /></td>
                        <td valign="top" align="center"> 
                            <div align="left" class="fontArial">${client.lastname}</div>
                        </td>
                    </tr>
                    <tr> 
                        <td valign="top" class="fontArial"><spring:message code="label.svisitepren" /></td>
                        <td valign="top" align="center"> 
                            <div align="left" class="fontArial">${client.firstname}</div>
                        </td>
                    </tr>
               
                </table>
            </form>
            <table width="600">
                <tr> 
                    <td colspan="6" align="center"> 
                        <form name="form1" method="post" action="">
                            <div align="center">
                                <font size="4"><b> 
                                        <input type="button" name="Print" value="<spring:message code='label.imprimer' />" onClick="javascript:window.print()">&nbsp;&nbsp;
                                        <input type="button" name="back" value="<spring:message code='label.quitter' />" onClick="javascript:window.close();" >
                                    </b></font>
                            </div>
                        </form>
                    </td>
                </tr>
            </table>
            <p>&nbsp;</p>
        </div>
    </body>
</html>

