%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototypeV2=int x() const

$prototypeV2=void setX( int x ) [slot]

%%
%% Q_PROPERTY(int y READ y WRITE setY NOTIFY yChanged)
%%

$prototypeV2=int y() const

$prototypeV2=void setY( int y ) [slot]

%%
%% Q_PROPERTY(int width READ width WRITE setWidth NOTIFY widthChanged)
%%

$prototypeV2=int width() const

$prototypeV2=void setWidth( int width ) [slot]

%%
%% Q_PROPERTY(int height READ height WRITE setHeight NOTIFY heightChanged)
%%

$prototypeV2=int height() const

$prototypeV2=void setHeight( int height ) [slot]

%%
%% SIGNALS
%%

$prototype=void xChanged(int x)
$prototype=void yChanged(int y)
$prototype=void widthChanged(int width)
$prototype=void heightChanged(int height)

#pragma ENDDUMP
