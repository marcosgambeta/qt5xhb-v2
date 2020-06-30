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

$beginClassFrom=QTextFrameFormat

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextTableFormat()
$constructor=|new|

$deleteMethod

$prototypeV2=bool isValid() const

$prototypeV2=int columns() const

$prototypeV2=void setColumns( int columns )

$prototypeV2=void setColumnWidthConstraints( const QVector<QTextLength> & constraints )

$prototypeV2=QVector<QTextLength> columnWidthConstraints() const

$prototypeV2=void clearColumnWidthConstraints()

$prototypeV2=qreal cellSpacing() const

$prototypeV2=void setCellSpacing( qreal spacing )

$prototypeV2=qreal cellPadding() const

$prototypeV2=void setCellPadding( qreal padding )

$prototypeV2=void setAlignment( Qt::Alignment alignment )

$prototypeV2=Qt::Alignment alignment() const

$prototypeV2=void setHeaderRowCount( int count )

$prototypeV2=int headerRowCount() const

#pragma ENDDUMP
