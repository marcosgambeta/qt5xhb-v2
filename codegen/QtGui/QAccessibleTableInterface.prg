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

$prototypeV2=virtual QAccessibleInterface * cellAt( int row, int column ) const = 0

$prototypeV2=virtual QAccessibleInterface * caption() const = 0

$prototypeV2=virtual QString columnDescription( int column ) const = 0

$prototypeV2=virtual int columnCount() const = 0

$prototypeV2=virtual int rowCount() const = 0

$prototypeV2=virtual int selectedCellCount() const = 0

$prototypeV2=virtual int selectedColumnCount() const = 0

$prototypeV2=virtual int selectedRowCount() const = 0

$prototypeV2=virtual QString rowDescription( int row ) const = 0

$prototypeV2=virtual QList<QAccessibleInterface *> selectedCells() const = 0
%% TODO: implementar

$prototypeV2=virtual QList<int> selectedColumns() const = 0

$prototypeV2=virtual QList<int> selectedRows() const = 0

$prototypeV2=virtual QAccessibleInterface * summary() const = 0

$prototypeV2=virtual bool isColumnSelected( int column ) const = 0

$prototypeV2=virtual bool isRowSelected( int row ) const = 0

$prototypeV2=virtual bool selectRow( int row ) = 0

$prototypeV2=virtual bool selectColumn( int column ) = 0

$prototypeV2=virtual bool unselectRow( int row ) = 0

$prototypeV2=virtual bool unselectColumn( int column ) = 0

$extraMethods

#pragma ENDDUMP
