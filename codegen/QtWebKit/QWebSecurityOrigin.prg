%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKit

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>
#include <QtWebKit/QWebDatabase>

$prototype=QWebSecurityOrigin ( const QWebSecurityOrigin & other )
$constructor=|new|const QWebSecurityOrigin &

$deleteMethod

$prototypeV2=qint64 databaseQuota() const

$prototypeV2=qint64 databaseUsage() const

$prototype=QList<QWebDatabase> databases () const
$method=|QList<QWebDatabase>|databases|

$prototypeV2=QString host() const

$prototypeV2=int port() const

$prototypeV2=QString scheme() const

$prototype=void setDatabaseQuota ( qint64 quota )
$method=|void|setDatabaseQuota|qint64

$prototype=static void addLocalScheme ( const QString & scheme )
$staticMethod=|void|addLocalScheme|const QString &

$prototype=static QList<QWebSecurityOrigin> allOrigins ()
$staticMethod=|QList<QWebSecurityOrigin>|allOrigins|

$prototypeV2=static QStringList localSchemes()

$prototype=static void removeLocalScheme ( const QString & scheme )
$staticMethod=|void|removeLocalScheme|const QString &

$extraMethods

#pragma ENDDUMP
