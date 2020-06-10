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

$prototype=void setTopPadding(qreal padding)
$method=|void|setTopPadding|qreal

$prototypeV2=qreal topPadding() const

$prototype=void setBottomPadding(qreal padding)
$method=|void|setBottomPadding|qreal

$prototypeV2=qreal bottomPadding() const

$prototype=void setLeftPadding(qreal padding)
$method=|void|setLeftPadding|qreal

$prototypeV2=qreal leftPadding() const

$prototype=void setRightPadding(qreal padding)
$method=|void|setRightPadding|qreal

$prototypeV2=qreal rightPadding() const

$prototype=void setPadding(qreal padding)
$method=|void|setPadding|qreal

#pragma ENDDUMP
