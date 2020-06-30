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

$prototypeV2=virtual QImageIOPlugin::Capabilities capabilities( QIODevice * device, const QByteArray & format ) const = 0

$prototypeV2=virtual QImageIOHandler * create( QIODevice * device, const QByteArray & format = QByteArray() ) const = 0

#pragma ENDDUMP
