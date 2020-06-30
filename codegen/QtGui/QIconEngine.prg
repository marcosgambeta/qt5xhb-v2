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

$prototypeV2=virtual QSize actualSize( const QSize & size, QIcon::Mode mode, QIcon::State state )

$prototypeV2=virtual void addFile( const QString & fileName, const QSize & size, QIcon::Mode mode, QIcon::State state )

$prototypeV2=virtual void addPixmap( const QPixmap & pixmap, QIcon::Mode mode, QIcon::State state )

$prototypeV2=virtual QList<QSize> availableSizes( QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off ) const

$prototypeV2=virtual QIconEngine * clone() const = 0

$prototypeV2=virtual QString iconName() const

$prototypeV2=virtual QString key() const

$prototypeV2=virtual void paint( QPainter * painter, const QRect & rect, QIcon::Mode mode, QIcon::State state ) = 0

$prototypeV2=virtual QPixmap pixmap( const QSize & size, QIcon::Mode mode, QIcon::State state )

$prototypeV2=virtual bool read( QDataStream & in )

$prototypeV2=virtual void virtual_hook( int id, void * data )

$prototypeV2=virtual bool write( QDataStream & out ) const

$extraMethods

#pragma ENDDUMP
