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

#include <QtGui/QScreen>

$prototype=QOpenGLContext(QObject * parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=bool create()

$prototypeV2=GLuint defaultFramebufferObject() const

$prototypeV2=void doneCurrent()

$prototypeV2=QSurfaceFormat format() const

$prototypeV2=QOpenGLFunctions * functions() const

$prototype=QFunctionPointer getProcAddress(const QByteArray & procName) const
%% TODO: implementar ?
%% $method=|QFunctionPointer|getProcAddress|const QByteArray &

$prototypeV2=bool hasExtension( const QByteArray & extension ) const

$prototypeV2=bool isValid() const

$prototypeV2=bool makeCurrent( QSurface * surface )

$prototypeV2=QScreen * screen() const

$prototypeV2=void setFormat( const QSurfaceFormat & format )

$prototypeV2=void setScreen( QScreen * screen )

$prototypeV2=void setShareContext( QOpenGLContext * shareContext )

$prototypeV2=QOpenGLContext * shareContext() const

$prototypeV2=QOpenGLContextGroup * shareGroup() const

$prototypeV2=QSurface * surface() const

$prototypeV2=void swapBuffers( QSurface * surface )

$prototypeV2=static bool areSharing( QOpenGLContext * first, QOpenGLContext * second )

$prototypeV2=static QOpenGLContext * currentContext()

%%
%% SIGNALS
%%

$prototype=void aboutToBeDestroyed()
$signalMethod=|void|aboutToBeDestroyed|

#pragma ENDDUMP
