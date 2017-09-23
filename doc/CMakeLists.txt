# GeoLite2++ (C) 2016 Stephane Charette <stephanecharette@gmail.com>
# $Id: CMakeLists.txt 1997 2016-10-17 16:22:42Z stephane $

FIND_PACKAGE ( Doxygen QUIET )

CONFIGURE_FILE ( ${CMAKE_CURRENT_SOURCE_DIR}/Doxyfile.in ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile )

ADD_CUSTOM_TARGET (
	doc
	${DOXYGEN_EXECUTABLE} ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile
	WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
	COMMENT "Generating documentation with Doxygen" VERBATIM )

ADD_CUSTOM_TARGET ( docs DEPENDS doc )
ADD_CUSTOM_TARGET ( dox  DEPENDS doc )
