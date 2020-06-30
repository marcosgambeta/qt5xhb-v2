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

$prototype=QTextTableCellFormat()
$constructor=|new|

$deleteMethod

$prototypeV2=bool isValid() const

$prototypeV2=void setTopPadding( qreal padding )

$prototypeV2=qreal topPadding() const

$prototypeV2=void setBottomPadding( qreal padding )

$prototypeV2=qreal bottomPadding() const

$prototypeV2=void setLeftPadding( qreal padding )

$prototypeV2=qreal leftPadding() const

$prototypeV2=void setRightPadding( qreal padding )

$prototypeV2=qreal rightPadding() const

$prototypeV2=void setPadding( qreal padding )

#pragma ENDDUMP
