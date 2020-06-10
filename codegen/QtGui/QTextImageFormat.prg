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

$beginClassFrom=QTextCharFormat

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextImageFormat()
$constructor=|new|

$deleteMethod

$prototypeV2=bool isValid() const

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

$prototypeV2=QString name() const

$prototype=void setWidth(qreal width)
$method=|void|setWidth|qreal

$prototypeV2=qreal width() const

$prototype=void setHeight(qreal height)
$method=|void|setHeight|qreal

$prototypeV2=qreal height() const

$prototype=int QTextImageFormat::quality() const
$method=5,12,0|int|quality|

$prototype=void QTextImageFormat::setQuality(int quality = ...)
$method=5,12,0|void|setQuality|int=100

#pragma ENDDUMP
