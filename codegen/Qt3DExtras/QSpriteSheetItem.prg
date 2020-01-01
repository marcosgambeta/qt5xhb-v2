%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DExtras
$namespace=Qt3DExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=Qt3DCore::QNode

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSpriteSheetItem(Qt3DCore::QNode *parent = nullptr)

%% $deleteMethod

%%
%% Q_PROPERTY(int x READ x WRITE setX NOTIFY xChanged)
%%

$prototype=int x() const
$prototype=void setX(int x) [slot]

%%
%% Q_PROPERTY(int y READ y WRITE setY NOTIFY yChanged)
%%

$prototype=int y() const
$prototype=void setY(int y) [slot]

%%
%% Q_PROPERTY(int width READ width WRITE setWidth NOTIFY widthChanged)
%%

$prototype=int width() const
$prototype=void setWidth(int width) [slot]

%%
%% Q_PROPERTY(int height READ height WRITE setHeight NOTIFY heightChanged)
%%

$prototype=int height() const
$prototype=void setHeight(int height) [slot]

%%
%% SIGNALS
%%

$prototype=void xChanged(int x)
$prototype=void yChanged(int y)
$prototype=void widthChanged(int width)
$prototype=void heightChanged(int height)

#pragma ENDDUMP
