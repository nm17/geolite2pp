# GeoLite2++ (C) 2016 Stephane Charette <stephanecharette@gmail.com>
# $Id: CM_dependencies.cmake 1990 2016-10-16 10:03:16Z stephane $


FIND_PACKAGE ( Threads		REQUIRED		)
FIND_LIBRARY ( maxminddb	NAMES maxminddb	)

SET ( GeoLite2PP_EXTERNAL_LIBS "${maxminddb}" )
