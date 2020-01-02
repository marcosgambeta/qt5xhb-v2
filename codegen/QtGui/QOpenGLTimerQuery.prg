%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui
$added=5,1,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QOpenGLTimerQuery(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr|#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$deleteMethod=|#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=bool create()
$method=|bool|create||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=void destroy()
$method=|void|destroy||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=bool isCreated() const
$method=|bool|isCreated||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=GLuint objectId() const
$method=|GLuint|objectId||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=void begin()
$method=|void|begin||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=void end()
$method=|void|end||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=GLuint64 waitForTimestamp() const
$method=|GLuint64|waitForTimestamp||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=void recordTimestamp()
$method=|void|recordTimestamp||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=bool isResultAvailable() const
$method=|bool|isResultAvailable||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=GLuint64 waitForResult() const
$method=|GLuint64|waitForResult||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

#pragma ENDDUMP
