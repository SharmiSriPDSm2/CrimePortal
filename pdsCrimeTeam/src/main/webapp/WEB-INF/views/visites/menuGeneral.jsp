<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<title>Menu général Customer Relationship Management</title>
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
				<td style="width: 400px; text-align: right;"><img
					style="width: 306px; height: 82px;" alt="CRIME"
					src="<c:url value="/resources/images/logos/crimeteam.png"/>"></td>

				<td align="center" valign="top" width="250"></td>

			</tr>
		</table>

		<h1>Menu Général</h1>


		<table>
			<tr>
				<td align="left" valign="top" width="250">
					<ul style="list-style-type: disc">
						<h2>Visites</h2>
						<ul>
							<li><a href="client" target="_blank">Mettre à jour les
									seminaires et évènements professionnels médicaux</a></li>
						</ul>
						<ul>
							<li><a href="client" target="_blank">Editer un compte rendu de visite</a></li>
						</ul>
						<ul>
							<li><a href="client" target="_blank">Suggérer une visite</a></li>
						</ul>
						<ul>
							<li><a href="client" target="_blank">Utiliser son agenda</a></li>
						</ul>

					</ul>
				</td>
				<td align="left" valign="top" width="250">
					<ul style="list-style-type: disc">
						<h2>Convergence TI</h2>
						<ul>
							<li><a href="client" target="_blank">Réaliser une campagne de Phoning</a></li>
						</ul>
						<ul>
							<li><a href="client" target="_blank">Visualier l'activité des collaborateurs en temps réel</a></li>
						</ul>
						<ul>
							<li><a href="client" target="_blank">Traiter un Appel manqué</a></li>
						</ul>
						<ul>
							<li><a href="client" target="_blank">Passer/recevoir un appel téléphonique</a></li>
						</ul>

					</ul>
				</td>
				
				<td align="left" valign="top" width="250">
					<ul style="list-style-type: disc">
						<h2>Force de vente</h2>
						<ul>
							<li><a href="client" target="_blank">Suggérer un partenariat ES</a></li>
						</ul>
						<ul>
							<li><a href="client" target="_blank">Simuler les ventes</a></li>
						</ul>
						<ul>
							<li><a href="client" target="_blank">Suivre le workflow d'un appel d'offres</a></li>
						</ul>
					

					</ul>
				</td>
				<td align="left" valign="top" width="250">
					<ul style="list-style-type: disc">
						<h2>Suivi des clients</h2>
						<ul>
							<li><a href="client" target="_blank">Analyser les données quantitatives et qualitatives du client</a></li>
						</ul>
						<ul>
							<li><a href="client" target="_blank">Manipuler la fiche d'un contact</a></li>
						</ul>
						<ul>
							<li><a href="client" target="_blank">Laisser un Message en interne</a></li>
						</ul>
					

					</ul>
				</td>
				<td align="left" valign="top" width="250">
					<ul style="list-style-type: disc">
						<h2>Autres</h2>
						<ul>
							<li><a href="client" target="_blank">Basculer en mode Offline/Online</a></li>
						</ul>
						<ul>
							<li><a href="client" target="_blank">Admin Référentiel Clients</a></li>
						</ul>
						<ul>
							<li><a href="client" target="_blank">Admin WorkGroups & Portefeuilles</a></li>
						</ul>
					
					</ul>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
