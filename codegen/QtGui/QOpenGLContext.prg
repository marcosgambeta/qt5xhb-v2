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

$prototype=bool hasExtension(const QByteArray & extension) const
$method=|bool|hasExtension|const QByteArray &

$prototypeV2=bool isValid() const

$prototype=bool makeCurrent(QSurface * surface)
$method=|bool|makeCurrent|QSurface *

$prototypeV2=QScreen * screen() const

$prototype=void setFormat(const QSurfaceFormat & format)
$method=|void|setFormat|const QSurfaceFormat &

$prototype=void setScreen(QScreen * screen)
$method=|void|setScreen|QScreen *

$prototype=void setShareContext(QOpenGLContext * shareContext)
$method=|void|setShareContext|QOpenGLContext *

$prototypeV2=QOpenGLContext * shareContext() const

$prototypeV2=QOpenGLContextGroup * shareGroup() const

$prototypeV2=QSurface * surface() const

$prototype=void swapBuffers(QSurface * surface)
$method=|void|swapBuffers|QSurface *

$prototype=static bool areSharing(QOpenGLContext * first, QOpenGLContext * second)
$staticMethod=|bool|areSharing|QOpenGLContext *,QOpenGLContext *

$prototypeV2=static QOpenGLContext * currentContext()

%%
%% SIGNALS
%%

$prototype=void aboutToBeDestroyed()
$signalMethod=|void|aboutToBeDestroyed|

#pragma ENDDUMP
