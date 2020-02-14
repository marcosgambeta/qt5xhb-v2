%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets
$added=5,4,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QOpenGLContext>

$prototype=explicit QOpenGLWidget(QWidget* parent = nullptr, Qt::WindowFlags f = 0)
$constructor=|new|QWidget *=nullptr,Qt::WindowFlags=0|#ifndef QT_NO_OPENGL

$deleteMethod=|#ifndef QT_NO_OPENGL

$prototype=QSurfaceFormat format() const
$method=|QSurfaceFormat|format||#ifndef QT_NO_OPENGL

$prototype=void setFormat(const QSurfaceFormat &format)
$method=|void|setFormat|const QSurfaceFormat &|#ifndef QT_NO_OPENGL

$prototype=bool isValid() const
$method=|bool|isValid||#ifndef QT_NO_OPENGL

$prototype=void makeCurrent()
$method=|void|makeCurrent||#ifndef QT_NO_OPENGL

$prototype=void doneCurrent()
$method=|void|doneCurrent||#ifndef QT_NO_OPENGL

$prototype=QOpenGLContext *context() const
$method=|QOpenGLContext *|context||#ifndef QT_NO_OPENGL

$prototype=GLuint defaultFramebufferObject() const
$method=|GLuint|defaultFramebufferObject||#ifndef QT_NO_OPENGL

$prototype=QImage grabFramebuffer()
$method=|QImage|grabFramebuffer||#ifndef QT_NO_OPENGL

%%
%% SIGNALS
%%

$prototype=void aboutToCompose()
$signalMethod=|void|aboutToCompose|

$prototype=void frameSwapped()
$signalMethod=|void|frameSwapped|

$prototype=void aboutToResize()
$signalMethod=|void|aboutToResize|

$prototype=void resized()
$signalMethod=|void|resized|

#pragma ENDDUMP
