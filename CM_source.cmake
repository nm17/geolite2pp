# GeoLite2++ (C) 2016 Stephane Charette <stephanecharette@gmail.com>
# $Id: CM_source.cmake 1996 2016-10-17 16:16:21Z stephane $


INCLUDE_DIRECTORIES ( BEFORE ${CMAKE_CURRENT_SOURCE_DIR}/src-lib )
INCLUDE_DIRECTORIES ( BEFORE ${CMAKE_CURRENT_SOURCE_DIR}/src-main )

ADD_SUBDIRECTORY ( src-lib	)
ADD_SUBDIRECTORY ( src-main	)
ADD_SUBDIRECTORY ( scripts	)
ADD_SUBDIRECTORY ( doc		)
