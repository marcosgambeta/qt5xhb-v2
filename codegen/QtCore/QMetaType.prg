%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=static int registerTypedef( const char * typeName, int aliasId )

$prototypeV2=static int type( const char * typeName )

$prototypeV2=static const char * typeName( int type )

$prototypeV2=static bool isRegistered( int type )

$prototypeV2=static void * construct( int type, void * where, const void * copy )

$prototypeV2=static void destroy( int type, void * data )

$prototypeV2=static bool save( QDataStream & stream, int type, const void * data )

$prototypeV2=static bool load( QDataStream & stream, int type, void * data )

$extraMethods

#pragma ENDDUMP
