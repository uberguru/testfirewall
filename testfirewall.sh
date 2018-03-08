#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

function checkport {
	if nc -v -w2 $1 $2 <<< '' &> /dev/null
	then
		echo "${green}[+] Port $1/$2 is open${reset}"
	else
		echo "${red}[-] Port $1/$2 is closed${reset}"
	fi
}

# Example checks

#JENKINS MIRRORS

checkport 'ftp-nyc.osuosl.org' 80
checkport 'ftp-nyc.osuosl.org' 443
checkport 'ftp-chi.osuosl.org' 80
checkport 'ftp-chi.osuosl.org' 443
checkport 'archives.jenkins-ci.org' 80
checkport 'archives.jenkins-ci.org' 443
checkport 'mirrors.seville-jam.es' 80
checkport 'mirrors.seville-jam.es' 443
#jenkins mirror mirror.esuni.jp
checkport '160.16.89.53' 80
checkport '160.16.89.53' 443
#jenkins mirror ftp.yz.yamagata-u.ac.jp
checkport '133.24.248.16' 80
checkport '133.24.248.18' 80
checkport '133.24.248.19' 80
checkport '133.24.248.17' 80
checkport 'mirrors.tuna.tsinghua.edu.cn' 80
checkport 'mirrors.shu.edu.cn'

#CENTOS MIRRORS
checkport 'ftp.funet.fi' 80
checkport 'ftp.funet.fi' 443
checkport 'centos.mirror.far.fi' 80
checkport 'centos.mirror.far.fi' 443

#MAVEN MIRRORS

checkport 'uk.maven.org' 80
checkport 'uk.maven.org' 443
checkport 'repo.maven.apache.org' 80
checkport 'repo.maven.apache.org' 443
