%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation
$added=5,4,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPlaceContent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDateTime>

$prototype=QPlaceReview()
$constructor=|new|

$deleteMethod

$prototypeV2=QDateTime dateTime() const

$prototypeV2=void setDateTime( const QDateTime & dt )

$prototypeV2=QString text() const

$prototypeV2=void setText( const QString & text )

$prototypeV2=QString language() const

$prototypeV2=void setLanguage( const QString & data )

$prototypeV2=qreal rating() const

$prototypeV2=void setRating( qreal data )

$prototypeV2=QString reviewId() const

$prototypeV2=void setReviewId( const QString & identifier )

$prototypeV2=QString title() const

$prototypeV2=void setTitle( const QString & data )

#pragma ENDDUMP
