%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=virtual QString convertorName() = 0
$virtualMethod=|QString|convertorName|

$prototype=virtual bool canConvert(const QString &mime, QString flav) = 0
$virtualMethod=|bool|canConvert|const QString &,QString

$prototype=virtual QString mimeFor(QString flav) = 0
$virtualMethod=|QString|mimeFor|QString

$prototype=virtual QString flavorFor(const QString &mime) = 0
$virtualMethod=|QString|flavorFor|const QString &

$prototype=virtual QVariant convertToMime(const QString &mime, QList<QByteArray> data, QString flav) = 0
$virtualMethod=|QVariant|convertToMime|const QString &,QList<QByteArray>,QString

$prototype=virtual QList<QByteArray> convertFromMime(const QString &mime, QVariant data, QString flav) = 0
$virtualMethod=|QList<QByteArray>|convertFromMime|const QString &,QVariant,QString

$prototype=virtual int count(QMimeData *mimeData)
$virtualMethod=|int|count|QMimeData *

$extraMethods

#pragma ENDDUMP
