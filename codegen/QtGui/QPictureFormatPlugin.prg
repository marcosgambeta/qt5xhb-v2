%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual bool loadPicture( const QString & format, const QString & filename, QPicture * pic )

$prototypeV2=virtual bool savePicture( const QString & format, const QString & filename, const QPicture & pic )

$prototypeV2=virtual bool installIOHandler( const QString & format ) = 0

#pragma ENDDUMP
