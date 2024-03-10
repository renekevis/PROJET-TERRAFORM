Ce projet Terraform simplifié vise à automatiser le déploiement d'une infrastructure AWS, en mettant en œuvre une instance EC2 avec des ressources associées. Le projet est organisé en plusieurs modules pour une gestion modulaire et évolutive.

Modules Individuels :

1 - EC2 Instance Module : Ce module définit les paramètres et les détails spécifiques de l'instance EC2.
2 - Security Group Module : Ce module gère la configuration du groupe de sécurité pour contrôler les accès à l'instance.
3 - Elastic IP Module : Gestion de l'allocation d'une adresse IP élastique pour l'instance EC2.
4 - EBS Volume Module : Configuration du volume EBS pour le stockage persistant.

Infrastructure Principale :

Fichier App (main.tf) : Ce fichier centralise l'assemblage des modules pour construire l'infrastructure complète. Il fait appel aux modules EC2, Security Group, Elastic IP, et EBS pour créer et intégrer une instance EC2 avec ses composants associés.
