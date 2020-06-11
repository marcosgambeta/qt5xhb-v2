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

$prototype=void setDateTime(const QDateTime &dt)
$method=|void|setDateTime|const QDateTime &

$prototypeV2=QString text() const

$prototype=void setText(const QString &text)
$method=|void|setText|const QString &

$prototypeV2=QString language() const

$prototype=void setLanguage(const QString &data)
$method=|void|setLanguage|const QString &

$prototypeV2=qreal rating() const

$prototype=void setRating(qreal data)
$method=|void|setRating|qreal

$prototypeV2=QString reviewId() const

$prototype=void setReviewId(const QString &identifier)
$method=|void|setReviewId|const QString &

$prototypeV2=QString title() const

$prototype=void setTitle(const QString &data)
$method=|void|setTitle|const QString &

#pragma ENDDUMP
