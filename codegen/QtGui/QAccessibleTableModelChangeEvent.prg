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

$beginClassFrom=QAccessibleEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleTableModelChangeEvent(QObject *obj, ModelChangeType changeType)
$constructor=|new|QObject *,QAccessibleTableModelChangeEvent::ModelChangeType

$deleteMethod

$prototype=void setModelChangeType(ModelChangeType changeType)
$method=|void|setModelChangeType|QAccessibleTableModelChangeEvent::ModelChangeType

$prototypeV2=QAccessibleTableModelChangeEvent::ModelChangeType modelChangeType() const

$prototype=void setFirstRow(int row)
$method=|void|setFirstRow|int

$prototype=void setFirstColumn(int col)
$method=|void|setFirstColumn|int

$prototype=void setLastRow(int row)
$method=|void|setLastRow|int

$prototype=void setLastColumn(int col)
$method=|void|setLastColumn|int

$prototypeV2=int firstRow() const

$prototypeV2=int firstColumn() const

$prototypeV2=int lastRow() const

$prototypeV2=int lastColumn() const

#pragma ENDDUMP
