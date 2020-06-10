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

$prototype=void setColumns(int columns)
$method=|void|setColumns|int

$prototype=void setColumnWidthConstraints(const QVector<QTextLength> &constraints)
$method=|void|setColumnWidthConstraints|const QVector<QTextLength> &

$prototype=QVector<QTextLength> columnWidthConstraints() const
$method=|QVector<QTextLength>|columnWidthConstraints|

$prototypeV2=void clearColumnWidthConstraints()

$prototypeV2=qreal cellSpacing() const

$prototype=void setCellSpacing(qreal spacing)
$method=|void|setCellSpacing|qreal

$prototypeV2=qreal cellPadding() const

$prototype=void setCellPadding(qreal padding)
$method=|void|setCellPadding|qreal

$prototype=void setAlignment(Qt::Alignment alignment)
$method=|void|setAlignment|Qt::Alignment

$prototypeV2=Qt::Alignment alignment() const

$prototype=void setHeaderRowCount(int count)
$method=|void|setHeaderRowCount|int

$prototypeV2=int headerRowCount() const

#pragma ENDDUMP
