<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="votrechoix">
	<spring:message code="label.votrechoix" />
</c:set>

<html>
<head>
<title>CRIME TEAM - Planifier VISITE</title>
<link href="<c:url value="/resources/css/crimeteam.css"/>"
	rel="stylesheet" type="text/css">
</head>
<body>
	<div style="text-align: center; width: 70%;">
		<table>
			<tr>
				<td align="center" valign="top" width="250"></td>

				<td style="text-align: center; width: 400px;"><img
					style="width: 258px; height: 95px;" alt="CRM"
					src="<c:url value="/resources/images/logos/CRM.jpg"/>"></td>
				<td style="width: 400px; text-align: center;"><img
					style="width: 306px; height: 82px;" alt="CRIME"
					src="<c:url value="/resources/images/logos/crimeteam.png"/>"></td>

				<td align="center" valign="top" width="250"></td>

			</tr>
		</table>
		<table>
			<tr>
				<td valign="top">
				<form:form method="POST" commandName="client">

						<table>
							<tr>
								<td class="tTexte"><spring:message code="label.titre" /><br></td>
							</tr>
						</table>

						<form:errors path="*" cssClass="errorblock" element="div" />

						<table class="orangeBorder">
							<tr>
								<td class="tTexte" colspan="2"><spring:message code="label.soustitre" /></td>
							</tr>

							<tr>
								<td class="nTexte"><spring:message code="label.svisitenom" /></td>
								<td><form:input path="firstname" size="42"
										maxlength="30" /> <form:errors path="firstname"
										cssClass="error" /></td>
							</tr>

							<tr>
								<td class="nTexte"><spring:message code="label.svisitepren" /></td>
								<td><form:input path="lastname" size="42"
										maxlength="30" /> <form:errors path="lastname"
										cssClass="error" /></td>
							</tr>

							<tr>
								<td class="nTexte" colspan="2"><img
									src="<c:url value="/resources/images/Attention.gif"/>"
									width="24" height="21'/>"> <spring:message code="label.attention"></spring:message></td>
							</tr>
						</table>
						<table>
							<tr>
								<td class="nTexte"><b><i>* <font color="#CC0000">:
												 <spring:message code="label.message1" /> </font></i></b></td>
							</tr>
							<tr>
								<td>Language : <a href="?locale=fr">France</a>| <a
									href="?locale=en">English</a>
								</td>
							</tr>
							<tr>
								<td align="center"><form:hidden path="id" /> <input
									type="submit" class="nTexte" value="<spring:message code='label.enregistrer' />" /> <input
									type="button" name="back" value="<spring:message code='label.annuler' />"
									onclick="javascript:window.close();"></td>
							</tr>
						</table>
					</form:form></td>
			</tr>
		</table>
	</div>
</body>
</html>
