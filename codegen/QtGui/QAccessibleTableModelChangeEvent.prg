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

$prototypeV2=void setModelChangeType( QAccessibleTableModelChangeEvent::ModelChangeType changeType )

$prototypeV2=QAccessibleTableModelChangeEvent::ModelChangeType modelChangeType() const

$prototypeV2=void setFirstRow( int row )

$prototypeV2=void setFirstColumn( int col )

$prototypeV2=void setLastRow( int row )

$prototypeV2=void setLastColumn( int col )

$prototypeV2=int firstRow() const

$prototypeV2=int firstColumn() const

$prototypeV2=int lastRow() const

$prototypeV2=int lastColumn() const

#pragma ENDDUMP
