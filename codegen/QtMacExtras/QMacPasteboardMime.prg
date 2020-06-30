%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMacExtras
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMacPasteboardMime(char)
$constructor=|new|char

$deleteMethod

$prototypeV2=virtual QString convertorName() = 0

$prototypeV2=virtual bool canConvert( const QString & mime, QString flav ) = 0

$prototypeV2=virtual QString mimeFor( QString flav ) = 0

$prototypeV2=virtual QString flavorFor( const QString & mime ) = 0

$prototypeV2=virtual QVariant convertToMime( const QString & mime, QList<QByteArray> data, QString flav ) = 0

$prototypeV2=virtual QList<QByteArray> convertFromMime( const QString & mime, QVariant data, QString flav ) = 0

$prototypeV2=virtual int count( QMimeData * mimeData )

$extraMethods

#pragma ENDDUMP
