%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=static bool demarshall( const QDBusArgument &, int id, void * data )

$prototypeV2=static int signatureToType( const char * signature )

$prototypeV2=static const char * typeToSignature( int type )

$extraMethods

#pragma ENDDUMP
