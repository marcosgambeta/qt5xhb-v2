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

#include <QtDeclarative/QDeclarativeError>
#include <QtDeclarative/QDeclarativeEngine>
#include <QtDeclarative/QDeclarativeContext>
#include <QtWidgets/QGraphicsObject>

$prototype=QDeclarativeView ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QDeclarativeView ( const QUrl & source, QWidget * parent = nullptr )
$internalConstructor=|new2|const QUrl &,QWidget *=nullptr

//[1]QDeclarativeView ( QWidget * parent = nullptr )
//[2]QDeclarativeView ( const QUrl & source, QWidget * parent = nullptr )

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QDeclarativeEngine * engine () const
$method=|QDeclarativeEngine *|engine|

$prototype=QList<QDeclarativeError> errors () const
$method=|QList<QDeclarativeError>|errors|

$prototype=QSize initialSize () const
$method=|QSize|initialSize|

$prototype=ResizeMode resizeMode () const
$method=|QDeclarativeView::ResizeMode|resizeMode|

$prototype=QDeclarativeContext * rootContext () const
$method=|QDeclarativeContext *|rootContext|

$prototype=QGraphicsObject * rootObject () const
$method=|QGraphicsObject *|rootObject|

$prototype=void setResizeMode ( ResizeMode )
$method=|void|setResizeMode|QDeclarativeView::ResizeMode

$prototype=void setSource ( const QUrl & url )
$method=|void|setSource|const QUrl &

$prototype=QUrl source () const
$method=|QUrl|source|

$prototype=Status status () const
$method=|QDeclarativeView::Status|status|

%%
%% SIGNALS
%%

$prototype=void sceneResized( QSize size )
$signalMethod=|void|sceneResized|QSize

$prototype=void statusChanged( QDeclarativeView::Status status )
$signalMethod=|void|statusChanged|QDeclarativeView::Status

#pragma ENDDUMP
