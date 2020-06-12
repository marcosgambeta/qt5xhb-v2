%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuickWidgets
$added=5,3,0

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

#include <QtQml/QQmlContext>
#include <QtQml/QQmlEngine>
#include <QtQml/QQmlError>
#include <QtQuick/QQuickItem>

$prototype=explicit QQuickWidget(QWidget *parent = nullptr)
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QQuickWidget(QQmlEngine* engine, QWidget *parent)
$internalConstructor=|new2|QQmlEngine *,QWidget *

$prototype=QQuickWidget(const QUrl &source, QWidget *parent = nullptr)
$internalConstructor=|new3|const QUrl &,QWidget *=nullptr

/*
[1]explicit QQuickWidget(QWidget *parent = nullptr)
[2]QQuickWidget(QQmlEngine* engine, QWidget *parent)
[3]QQuickWidget(const QUrl &source, QWidget *parent = nullptr)
*/

HB_FUNC_STATIC( QQUICKWIDGET_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QQuickWidget_new1();
  }
  else if( ISNUMPAR(2) && ISQQMLENGINE(1) && ISQWIDGET(2) )
  {
    QQuickWidget_new2();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTQWIDGET(2) )
  {
    QQuickWidget_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod

$prototypeV2=QUrl source() const

$prototype=void setSource(const QUrl&)
$method=|void|setSource|const QUrl &

$prototypeV2=QQmlEngine * engine() const

$prototypeV2=QQmlContext * rootContext() const

$prototypeV2=QQuickItem * rootObject() const

$prototypeV2=QQuickWidget::ResizeMode resizeMode() const

$prototype=void setResizeMode(ResizeMode)
$method=|void|setResizeMode|QQuickWidget::ResizeMode

$prototypeV2=QQuickWidget::Status status() const

$prototype=QList<QQmlError> errors() const
$method=|QList<QQmlError>|errors|

$prototypeV2=QSize sizeHint() const

$prototypeV2=QSize initialSize() const

$prototype=void setContent(const QUrl& url, QQmlComponent *component, QObject *item)
$method=|void|setContent|const QUrl &,QQmlComponent *,QObject *

$prototypeV2=QSurfaceFormat format() const

$prototype=void setFormat(const QSurfaceFormat &format)
$method=|void|setFormat|const QSurfaceFormat &

%%
%% SIGNALS
%%

$prototype=void statusChanged( QQuickWidget::Status status )
$signalMethod=|void|statusChanged|QQuickWidget::Status

$prototype=void sceneGraphError( QQuickWindow::SceneGraphError error, const QString & message )
$signalMethod=|void|sceneGraphError|QQuickWindow::SceneGraphError,const QString &

#pragma ENDDUMP
