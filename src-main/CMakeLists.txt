# GeoLite2++ (C) 2016 Stephane Charette <stephanecharette@gmail.com>
# $Id: CMakeLists.txt 1990 2016-10-16 10:03:16Z stephane $

FILE ( GLOB MAIN_SOURCE *.cpp )
LIST ( SORT MAIN_SOURCE )

ADD_EXECUTABLE			(			geolite2pp ${MAIN_SOURCE}						)
TARGET_LINK_LIBRARIES	(			geolite2pp ${CMAKE_THREAD_LIBS_INIT} geolite2++	)
INSTALL					( TARGETS	geolite2pp DESTINATION bin						)
