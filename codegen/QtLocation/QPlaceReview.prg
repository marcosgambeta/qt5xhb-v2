%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=QDateTime dateTime() const
$method=|QDateTime|dateTime|

$prototype=void setDateTime(const QDateTime &dt)
$method=|void|setDateTime|const QDateTime &

$prototype=QString text() const
$method=|QString|text|

$prototype=void setText(const QString &text)
$method=|void|setText|const QString &

$prototype=QString language() const
$method=|QString|language|

$prototype=void setLanguage(const QString &data)
$method=|void|setLanguage|const QString &

$prototype=qreal rating() const
$method=|qreal|rating|

$prototype=void setRating(qreal data)
$method=|void|setRating|qreal

$prototype=QString reviewId() const
$method=|QString|reviewId|

$prototype=void setReviewId(const QString &identifier)
$method=|void|setReviewId|const QString &

$prototype=QString title() const
$method=|QString|title|

$prototype=void setTitle(const QString &data)
$method=|void|setTitle|const QString &

#pragma ENDDUMP
