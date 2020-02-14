%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

#include <QtCore/QVector>

$prototype=explicit QOpenGLTimeMonitor(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr|#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$deleteMethod=|#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=int sampleCount() const
$method=|int|sampleCount||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=void setSampleCount(int sampleCount)
$method=|void|setSampleCount|int|#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=bool create()
$method=|bool|create||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=void destroy()
$method=|void|destroy||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=bool isCreated() const
$method=|bool|isCreated||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=QVector<GLuint> objectIds() const
%% TODO: $method=|QVector<GLuint>|objectIds||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=int recordSample()
$method=|int|recordSample||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=bool isResultAvailable() const
$method=|bool|isResultAvailable||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=QVector<GLuint64> waitForSamples() const
%% TODO: $method=|QVector<GLuint64>|waitForSamples||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=QVector<GLuint64> waitForIntervals() const
%% TODO: $method=|QVector<GLuint64>|waitForIntervals||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=void reset()
$method=|void|reset||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

#pragma ENDDUMP
