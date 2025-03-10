#!/bin/bash
#info system
###############constante

title="kali Info system"
JJ="$(date +"%x %r %z")"
mj="mise à jour $jj sur $USER"

###############fonction
info_system()
{
	echo "Fonction sur les systèmes:"
	uname -a
	free -m
	
	
}


info_user()
{
	echo "Fonction sur information utilisateur:"
	whoami

}

info_disk()
{
	echo "Fonction information sur le disk:"
	df -h
	

}



info_chemin()
{
	echo "Fonction sur information sur les variables d'environnement:"
	pwd
	
}

info_show_time()
{
	echo "Fonction consernant le temps:"
	uptime
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
<p>$(info_user)</p>
<p>$(info_disk)</p>
<p> $(info_chemin)</p>
<p> $(info_show_time)</p>
<p> $(info_system)</p>
</body>
</html>
_EOF_

