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

$prototype=QVector<QSpriteSheetItem *> sprites() const
$prototype=void setSprites(QVector<QSpriteSheetItem *> sprites) [slot]

%%
%%
%%

$prototype=QSpriteSheetItem *addSprite(int x, int y, int width, int height)
$prototype=void addSprite(QSpriteSheetItem *sprite)
$prototype=void removeSprite(QSpriteSheetItem *sprite)

%%
%% SIGNALS
%%

$prototype=void spritesChanged(QVector<QSpriteSheetItem *> sprites)

#pragma ENDDUMP
