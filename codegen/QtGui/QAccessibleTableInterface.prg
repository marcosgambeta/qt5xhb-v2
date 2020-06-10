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

$prototype=virtual QAccessibleInterface *cellAt (int row, int column) const = 0
$virtualMethod=|QAccessibleInterface *|cellAt|int,int

$prototypeV2=virtual QAccessibleInterface * caption() const = 0

$prototype=virtual QString columnDescription(int column) const = 0
$virtualMethod=|QString|columnDescription|int

$prototypeV2=virtual int columnCount() const = 0

$prototypeV2=virtual int rowCount() const = 0

$prototypeV2=virtual int selectedCellCount() const = 0

$prototypeV2=virtual int selectedColumnCount() const = 0

$prototypeV2=virtual int selectedRowCount() const = 0

$prototype=virtual QString rowDescription(int row) const = 0
$virtualMethod=|QString|rowDescription|int

$prototype=virtual QList<QAccessibleInterface*> selectedCells() const = 0
%% TODO: implementar
$virtualMethod=|QList<QAccessibleInterface *>|selectedCells|

$prototype=virtual QList<int> selectedColumns() const = 0
$virtualMethod=|QList<int>|selectedColumns|

$prototype=virtual QList<int> selectedRows() const = 0
$virtualMethod=|QList<int>|selectedRows|

$prototypeV2=virtual QAccessibleInterface * summary() const = 0

$prototype=virtual bool isColumnSelected(int column) const = 0
$virtualMethod=|bool|isColumnSelected|int

$prototype=virtual bool isRowSelected(int row) const = 0
$virtualMethod=|bool|isRowSelected|int

$prototype=virtual bool selectRow(int row) = 0
$virtualMethod=|bool|selectRow|int

$prototype=virtual bool selectColumn(int column) = 0
$virtualMethod=|bool|selectColumn|int

$prototype=virtual bool unselectRow(int row) = 0
$virtualMethod=|bool|unselectRow|int

$prototype=virtual bool unselectColumn(int column) = 0
$virtualMethod=|bool|unselectColumn|int

$extraMethods

#pragma ENDDUMP
