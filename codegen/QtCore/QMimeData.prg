%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>
#include <QtCore/QUrl>

$prototype=QMimeData ()
$constructor=|new|

$deleteMethod

$prototypeV2=void clear()

$prototypeV2=QVariant colorData() const

$prototypeV2=QByteArray data( const QString & mimeType ) const

$prototypeV2=virtual QStringList formats() const

$prototypeV2=bool hasColor() const

$prototypeV2=virtual bool hasFormat( const QString & mimeType ) const

$prototypeV2=bool hasHtml() const

$prototypeV2=bool hasImage() const

$prototypeV2=bool hasText() const

$prototypeV2=bool hasUrls() const

$prototypeV2=QString html() const

$prototypeV2=QVariant imageData() const

$prototypeV2=void removeFormat( const QString & mimeType )

$prototypeV2=void setColorData( const QVariant & color )

$prototypeV2=void setData( const QString & mimeType, const QByteArray & data )

$prototypeV2=void setHtml( const QString & html )

$prototypeV2=void setImageData( const QVariant & image )

$prototypeV2=void setText( const QString & text )

$prototypeV2=void setUrls( const QList<QUrl> & urls )

$prototypeV2=QString text() const

$prototypeV2=QList<QUrl> urls() const

#pragma ENDDUMP
