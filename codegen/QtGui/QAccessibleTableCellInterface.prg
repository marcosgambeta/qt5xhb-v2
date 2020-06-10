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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual int columnExtent() const = 0

$prototype=virtual QList<QAccessibleInterface*> columnHeaderCells() const = 0
$virtualMethod=|QList<QAccessibleInterface *>|columnHeaderCells|

$prototypeV2=virtual int columnIndex() const = 0

$prototypeV2=virtual int rowExtent() const = 0

$prototype=virtual QList<QAccessibleInterface*> rowHeaderCells() const = 0
$virtualMethod=|QList<QAccessibleInterface *>|rowHeaderCells|

$prototypeV2=virtual int rowIndex() const = 0

$prototypeV2=virtual bool isSelected() const = 0

$prototypeV2=virtual QAccessibleInterface * table() const = 0

$extraMethods

#pragma ENDDUMP
