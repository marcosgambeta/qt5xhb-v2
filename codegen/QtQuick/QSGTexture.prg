%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual void bind() = 0

$prototype=QRectF convertToNormalizedSourceRect(const QRectF & rect) const
$method=|QRectF|convertToNormalizedSourceRect|const QRectF &

$prototypeV2=QSGTexture::Filtering filtering() const

$prototypeV2=virtual bool hasAlphaChannel() const = 0

$prototypeV2=virtual bool hasMipmaps() const = 0

$prototypeV2=QSGTexture::WrapMode horizontalWrapMode() const

$prototypeV2=virtual bool isAtlasTexture() const

$prototypeV2=QSGTexture::Filtering mipmapFiltering() const

$prototypeV2=virtual QRectF normalizedTextureSubRect() const

$prototypeV2=virtual QSGTexture * removedFromAtlas() const

$prototype=void setFiltering(Filtering filter)
$method=|void|setFiltering|QSGTexture::Filtering

$prototype=void setHorizontalWrapMode(WrapMode hwrap)
$method=|void|setHorizontalWrapMode|QSGTexture::WrapMode

$prototype=void setMipmapFiltering(Filtering filter)
$method=|void|setMipmapFiltering|QSGTexture::Filtering

$prototype=void setVerticalWrapMode(WrapMode vwrap)
$method=|void|setVerticalWrapMode|QSGTexture::WrapMode

$prototypeV2=virtual int textureId() const = 0

$prototypeV2=virtual QSize textureSize() const = 0

$prototype=void updateBindOptions(bool force = false)
$method=|void|updateBindOptions|bool=false

$prototypeV2=QSGTexture::WrapMode verticalWrapMode() const

#pragma ENDDUMP
