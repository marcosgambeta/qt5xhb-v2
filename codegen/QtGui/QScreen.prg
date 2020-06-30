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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QPixmap>

$deleteMethod

$prototype=QPlatformScreen *handle() const
%% TODO: implementar ?
%% $method=|QPlatformScreen *|handle|

$prototypeV2=QString name() const

$prototypeV2=int depth() const

$prototypeV2=QSize size() const

$prototypeV2=QRect geometry() const

$prototypeV2=QSizeF physicalSize() const

$prototypeV2=qreal physicalDotsPerInchX() const

$prototypeV2=qreal physicalDotsPerInchY() const

$prototypeV2=qreal physicalDotsPerInch() const

$prototypeV2=qreal logicalDotsPerInchX() const

$prototypeV2=qreal logicalDotsPerInchY() const

$prototypeV2=qreal logicalDotsPerInch() const

$prototypeV2=qreal devicePixelRatio() const

$prototypeV2=QSize availableSize() const

$prototypeV2=QRect availableGeometry() const

$prototypeV2=QList<QScreen *> virtualSiblings() const
%% TODO: implementar método

$prototypeV2=QSize virtualSize() const

$prototypeV2=QRect virtualGeometry() const

$prototypeV2=QSize availableVirtualSize() const

$prototypeV2=QRect availableVirtualGeometry() const

$prototypeV2=Qt::ScreenOrientation primaryOrientation() const

$prototypeV2=Qt::ScreenOrientation orientation() const

$prototypeV2=Qt::ScreenOrientations orientationUpdateMask() const

$prototypeV2=void setOrientationUpdateMask( Qt::ScreenOrientations mask )

$prototypeV2=int angleBetween( Qt::ScreenOrientation a, Qt::ScreenOrientation b ) const

$prototypeV2=QTransform transformBetween( Qt::ScreenOrientation a, Qt::ScreenOrientation b, const QRect & target ) const

$prototypeV2=QRect mapBetween( Qt::ScreenOrientation a, Qt::ScreenOrientation b, const QRect & rect ) const

$prototypeV2=bool isPortrait( Qt::ScreenOrientation orientation ) const

$prototypeV2=bool isLandscape( Qt::ScreenOrientation orientation ) const

$prototypeV2=QPixmap grabWindow( WId window, int x = 0, int y = 0, int w = -1, int h = -1 )

$prototypeV2=qreal refreshRate() const

%%
%% SIGNALS
%%

$prototype=void geometryChanged( const QRect & geometry )
$signalMethod=|void|geometryChanged|const QRect &

$prototype=void physicalSizeChanged( const QSizeF & size )
$signalMethod=|void|physicalSizeChanged|const QSizeF &

$prototype=void physicalDotsPerInchChanged( qreal dpi )
$signalMethod=|void|physicalDotsPerInchChanged|qreal

$prototype=void logicalDotsPerInchChanged( qreal dpi )
$signalMethod=|void|logicalDotsPerInchChanged|qreal

$prototype=void virtualGeometryChanged( const QRect & rect )
$signalMethod=|void|virtualGeometryChanged|const QRect &

$prototype=void primaryOrientationChanged( Qt::ScreenOrientation orientation )
$signalMethod=|void|primaryOrientationChanged|Qt::ScreenOrientation

$prototype=void orientationChanged( Qt::ScreenOrientation orientation )
$signalMethod=|void|orientationChanged|Qt::ScreenOrientation

$prototype=void refreshRateChanged( qreal refreshRate )
$signalMethod=|void|refreshRateChanged|qreal

#pragma ENDDUMP
