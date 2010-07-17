PREFIX		= /usr/local
MANPREFIX	= ${PREFIX}/man
CXX?		= g++
OBJ		= main.o core.o settings.o utils.o ipfilter.o
OUT		= hrktorrent
CXXFLAGS	+= -DHAVE_SSL -DBOOST_ASIO_HASH_MAP_BUCKETS=1021 -DTORRENT_USE_OPENSSL -DTORRENT_LINKING_SHARED -DBOOST_EXCEPTION_DISABLE -Ilibtorrent-rasterbar-0.15.1/include -I/usr/include/openssl -I/usr/include/boost-1_41
LIBS		=  -L libtorrent-rasterbar-0.15.1/src/.libs -lboost_thread -lboost_filesystem -ltorrent-rasterbar -lpthread -lboost_system