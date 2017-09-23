/* GeoLite2++ (C) 2016 Stephane Charette <stephanecharette@gmail.com>
 * $Id: main.cpp 1996 2016-10-17 16:16:21Z stephane $
 */


#include <iostream>
#include <GeoLite2PP.hpp>


int main( int argc, char *argv[] )
{
	GeoLite2PP::DB db( "GeoLite2-City.mmdb" );

	std::cout << "MMDB version:   " << db.get_lib_version_mmdb()		<< std::endl;
	std::cout << "GeoLite2PP ver: " << db.get_lib_version_geolite2pp()	<< std::endl;

	if (argc < 2)
	{
		std::cout	<< "Database metadata: "	<< std::endl
					<< db.get_metadata()		<< std::endl;
	}

	for (int idx = 1; idx < argc; idx ++)
	{
		std::cout	<< "Looking up \"" << argv[idx] << "..."	<< std::endl
					<< ""										<< std::endl
					<< "JSON:"									<< std::endl
					<< db.lookup( argv[idx] )					<< std::endl
					<< ""										<< std::endl
					<< "MAP:"									<< std::endl;
		const auto m = db.get_all_fields( argv[idx] );
		for (const auto iter : m)
		{
			const std::string key = iter.first;
			const std::string val = iter.second;
			std::cout << "    " << key << " -> " << val << std::endl;
		}
	}

	return 0;
}
