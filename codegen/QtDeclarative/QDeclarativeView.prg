%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDeclarative

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDeclarative/QDeclarativeContext>
#include <QtDeclarative/QDeclarativeEngine>
#include <QtDeclarative/QDeclarativeError>
#include <QtWidgets/QGraphicsObject>

$prototype=QDeclarativeView ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QDeclarativeView ( const QUrl & source, QWidget * parent = nullptr )
$internalConstructor=|new2|const QUrl &,QWidget *=nullptr

/*
[1]QDeclarativeView ( QWidget * parent = nullptr )
[2]QDeclarativeView ( const QUrl & source, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QDECLARATIVEVIEW_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QDeclarativeView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTQWIDGET(2) )
  {
    QDeclarativeView_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QDeclarativeEngine * engine() const

$prototype=QList<QDeclarativeError> errors () const
$method=|QList<QDeclarativeError>|errors|

$prototypeV2=QSize initialSize() const

$prototypeV2=QDeclarativeView::ResizeMode resizeMode() const

$prototypeV2=QDeclarativeContext * rootContext() const

$prototypeV2=QGraphicsObject * rootObject() const

$prototype=void setResizeMode ( ResizeMode )
$method=|void|setResizeMode|QDeclarativeView::ResizeMode

$prototype=void setSource ( const QUrl & url )
$method=|void|setSource|const QUrl &

$prototypeV2=QUrl source() const

$prototypeV2=QDeclarativeView::Status status() const

%%
%% SIGNALS
%%

$prototype=void sceneResized( QSize size )
$signalMethod=|void|sceneResized|QSize

$prototype=void statusChanged( QDeclarativeView::Status status )
$signalMethod=|void|statusChanged|QDeclarativeView::Status

#pragma ENDDUMP
