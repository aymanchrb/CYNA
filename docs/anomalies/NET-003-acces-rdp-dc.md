# NET-003 — Utilisation par erreur de l'IP publique de la NAT Gateway comme destination RDP

## Description
L'IP publique de la NAT Gateway a été utilisée par erreur comme destination RDP au lieu de l'IP du DC.

## Sévérité
Moyenne

## Résolution
Création et réaffectation d'une IP publique directement sur la carte réseau de DC01.

## Statut
Résolu
