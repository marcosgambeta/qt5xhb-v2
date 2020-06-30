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

$prototype=QResource ( const QString & file = QString(), const QLocale & locale = QLocale() )
$constructor=|new|const QString &=QString(),const QLocale &=QLocale()

$deleteMethod

$prototypeV2=QString absoluteFilePath() const

$prototypeV2=const uchar * data() const
%% TODO: implementar 'const uchar *'

$prototypeV2=QString fileName() const

$prototypeV2=bool isCompressed() const

$prototypeV2=bool isValid() const

$prototypeV2=QLocale locale() const

$prototypeV2=void setFileName( const QString & file )

$prototypeV2=void setLocale( const QLocale & locale )

$prototypeV2=qint64 size() const

$prototypeV2=static bool registerResource( const QString & rccFileName, const QString & mapRoot = QString() )

$prototypeV2=static bool unregisterResource( const QString & rccFileName, const QString & mapRoot = QString() )

$extraMethods

#pragma ENDDUMP
