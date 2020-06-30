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

$prototypeV2=void setName( const QString & name )

$prototypeV2=QString name() const

$prototypeV2=void setWidth( qreal width )

$prototypeV2=qreal width() const

$prototypeV2=void setHeight( qreal height )

$prototypeV2=qreal height() const

$prototypeV2=5,12,0|int QTextImageFormat::quality() const

%% TODO: to check $prototypeV2=5,12,0|void QTextImageFormat::setQuality( int quality = ... )
$prototypeV2=5,12,0|void QTextImageFormat::setQuality( int quality = 100 )

#pragma ENDDUMP
