#!/bin/bash

echo "#######################"

echo " ## ./scriptcorrection ##"

echo "## correction git ######"

repo_url=https://github.com/KoneRokia/moussouris-kone


echo -n "Entrer un message commit > "

read commitmessage

if [ -d .git ]; then

	echo ""Depôt déjà initialisé
	echo "Push encours de demarrage"

		git add .
		git commit -m "$commitmessage"
		git push 

else

	echo "Initialisation du repo"

	git init
	git add .
	git commit -m $commitmessage
	git branch -M main
	git remote add $repo_url
	git push -u origin main

fi


