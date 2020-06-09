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

$prototype=const uchar * data () const
%% TODO: implementar 'const uchar *'
$method=|const char *|data|

$prototypeV2=QString fileName() const

$prototypeV2=bool isCompressed() const

$prototypeV2=bool isValid() const

$prototypeV2=QLocale locale() const

$prototype=void setFileName ( const QString & file )
$method=|void|setFileName|const QString &

$prototype=void setLocale ( const QLocale & locale )
$method=|void|setLocale|const QLocale &

$prototypeV2=qint64 size() const

$prototype=static bool registerResource ( const QString & rccFileName, const QString & mapRoot = QString() )
$staticMethod=|bool|registerResource|const QString &,const QString &=QString()

$prototype=static bool unregisterResource ( const QString & rccFileName, const QString & mapRoot = QString() )
$staticMethod=|bool|unregisterResource|const QString &,const QString &=QString()

$extraMethods

#pragma ENDDUMP
