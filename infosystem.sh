#!/bin/bash
#info system
###############constante

title="kali Info system"
JJ="$(date +"%x %r %z")"
mj="mise à jour $jj sur $USER"

###############fonction
info_user()
{
	echo "Fonction sur information utilisateur"
}

info_disk()
{
	echo "Fonction information sur le disk"
}

info_chemin()
{
	echo "Fonction sur information sur les variables d'environnement"
}

info_show_time()
{
	echo "Fonction consernant le temps"
}

###############main

cat <<_EOF_
<html>
<head>
<title> $title  </title>
</head>
<body> 
<h1> $title  </h1>
<p> $mj </p>
$(info_user)
$(info_disk)
$(info_chemin)
$(info_show_time)
</body>
</html>
_EOF_

