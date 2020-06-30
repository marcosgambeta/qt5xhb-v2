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

$beginClassFrom=QAbstractSpriteSheet

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSpriteSheet(Qt3DCore::QNode *parent = nullptr)

$prototype=~QSpriteSheet()
$deleteMethod

%%
%% Q_PROPERTY(QVector<QSpriteSheetItem *> sprites READ sprites WRITE setSprites NOTIFY spritesChanged)
%%

$prototypeV2=QVector<QSpriteSheetItem *> sprites() const

$prototypeV2=void setSprites( QVector<QSpriteSheetItem *> sprites ) [slot]

%%
%%
%%

$prototypeV2=QSpriteSheetItem * addSprite( int x, int y, int width, int height )

$prototypeV2=void addSprite( QSpriteSheetItem * sprite )

$prototypeV2=void removeSprite( QSpriteSheetItem * sprite )

%%
%% SIGNALS
%%

$prototype=void spritesChanged(QVector<QSpriteSheetItem *> sprites)

#pragma ENDDUMP
