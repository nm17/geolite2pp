#!/bin/bash
# $Id: geolite2pp_get_database.sh 1990 2016-10-16 10:03:16Z stephane $


# Both wget and curl can be used.  Neither is "better" between them as far as
# this script is concerned. The one to use depends only on what is installed by
# default on the system where you want this code to run.
use_wget=$(which wget)
use_curl=$(which curl)


# See:  http://dev.maxmind.com/geoip/geoip2/geolite2/
#
# The database is only updated once per month.  Normally on the first Tuesday.
# So by keeping the timestamp, we can prevent having to unecessarily download
# the entire database, which is a non-trivial 26 MiB in size.
#
url="http://geolite.maxmind.com/download/geoip/database/GeoLite2-City.mmdb.gz"
filename=$(basename "${url}")
database=$(basename --suffix=.gz ${filename})


echo "URL:      ${url}"
echo "Download: ${filename}..."
echo "Database: ${database}..."


# **********************
# FIRST WE TRY WITH WGET
# **********************
if [ -x "${use_wget}" ]; then
	echo "Trying ${use_wget}..."
	${use_wget} --no-verbose --timestamping "${url}"
	if [ $? -eq 0 -a -f ${filename} ]; then
		rm -f ${database}
		gunzip --verbose --keep ${filename}
		echo "Done!"
		exit 0
	fi
	echo "Failed to download using ${use_wget}..."
fi


# **********************
# THEN WE TRY WITH CURL
# **********************
if [ -x "${use_curl}" ]; then
	echo "Trying ${use_curl}..."
	${use_curl} --fail --silent --remote-time --remote-name --time-cond ${filename} "${url}"
	if [ $? -eq 0 -a -f ${filename} ]; then
		rm -f ${database}
		gunzip --verbose --keep ${filename}
		echo "Done!"
		exit 0
	fi
	echo "Failed to download using ${use_curl}..."
fi


# *****************************************
# IF WE GET HERE THEN WE FAILED TO DOWNLOAD
# *****************************************
echo "Failed to download the database with wget or curl."
echo "See this URL: ${url}"
exit 1

