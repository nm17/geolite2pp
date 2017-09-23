# GeoLite2++ (C) 2016 Stephane Charette <stephanecharette@gmail.com>
# $Id: CM_package_ubuntu.cmake 1990 2016-10-16 10:03:16Z stephane $


SET ( CPACK_DEBIAN_PACKAGE_SECTION			"devel" )
SET ( CPACK_DEBIAN_PACKAGE_PRIORITY			"optional" )
SET ( CPACK_DEBIAN_PACKAGE_DEPENDS			"libmaxminddb0" )
SET ( CPACK_DEBIAN_PACKAGE_MAINTAINER		"Stéphane Charette <stephanecharette@gmail.com>" )
SET ( CPACK_DEBIAN_PACKAGE_HOMEPAGE			"http://www.ccoderun.ca/" )
SET ( CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA	"${CMAKE_CURRENT_SOURCE_DIR}/src-deb/postinst;${CMAKE_CURRENT_SOURCE_DIR}/src-deb/postrm" )

IF ( ${GeoLite2PP_CROSS_COMPILE_FOR_ARM7} OR ${GeoLite2PP_COMPILE_FOR_ARM7} )
	SET ( CPACK_DEBIAN_PACKAGE_ARCHITECTURE	"armhf" )
ENDIF ()
