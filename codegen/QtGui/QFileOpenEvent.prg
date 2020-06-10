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

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QUrl>

$deleteMethod

$prototypeV2=QString file() const

$prototype=bool openFile ( QFile & file, QIODevice::OpenMode flags ) const
$method=|bool|openFile|QFile &,QIODevice::OpenMode

$prototypeV2=QUrl url() const

#pragma ENDDUMP
