%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DExtras
$namespace=Qt3DExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractSpriteSheet

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSpriteGrid(Qt3DCore::QNode *parent = nullptr)

$prototype=~QSpriteGrid()
$deleteMethod

%%
%% Q_PROPERTY(int rows READ rows WRITE setRows NOTIFY rowsChanged)
%%

$prototype=int rows() const
$prototype=void setRows(int rows) [slot]

%%
%% Q_PROPERTY(int columns READ columns WRITE setColumns NOTIFY columnsChanged)
%%

$prototype=int columns() const
$prototype=void setColumns(int columns) [slot]

%%
%% SIGNALS
%%

$prototype=void rowsChanged(int rows)
$prototype=void columnsChanged(int columns)

#pragma ENDDUMP
