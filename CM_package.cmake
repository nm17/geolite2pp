# GeoLite2++ (C) 2016 Stephane Charette <stephanecharette@gmail.com>
# $Id: CM_package.cmake 1999 2016-10-17 16:49:34Z stephane $


SET ( CPACK_PACKAGE_VENDOR				"Stéphane Charette"				)
SET ( CPACK_PACKAGE_CONTACT				"stephanecharette@gmail.com"	)
SET ( CPACK_PACKAGE_DESCRIPTION_SUMMARY	"GeoLite2 C++ Interface"		)
SET ( CPACK_PACKAGE_DESCRIPTION			"GeoLite2 C++ Interface"		)
SET ( CPACK_PACKAGE_NAME				"geolite2++"					)
SET ( CPACK_PACKAGE_VERSION				${GeoLite2PP_VERSION}			)
SET ( CPACK_PACKAGE_VERSION_MAJOR		${GeoLite2PP_VER_MAJOR}			)
SET ( CPACK_PACKAGE_VERSION_MINOR		${GeoLite2PP_VER_MINOR}			)
SET ( CPACK_PACKAGE_VERSION_PATCH		${GeoLite2PP_VER_PATCH}			)
SET ( CPACK_RESOURCE_FILE_LICENSE		${CMAKE_CURRENT_SOURCE_DIR}/license.txt )
SET ( CPACK_SYSTEM_NAME					${GeoLite2PP_SYSTEM_NAME}		)

INCLUDE ( CM_package_ubuntu.cmake )
INCLUDE ( CM_package_redhat.cmake )

SET ( CPACK_GENERATOR "DEB" )

SET ( CPACK_SOURCE_IGNORE_FILES ".svn" ".kdev4" "build" "generate_and_upload.sh" "GeoLite2-City.mmdb" )
SET ( CPACK_SOURCE_GENERATOR "TGZ" )

INCLUDE( CPack )
