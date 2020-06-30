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

#include <QtCore/QMimeData>
#include <QtCore/QPoint>
#include <QtGui/QPixmap>

$prototype=QDrag(QObject * dragSource)
$constructor=|new|QObject *

$deleteMethod

$prototypeV2=Qt::DropAction defaultAction() const

$prototypeV2=QPixmap dragCursor( Qt::DropAction action ) const

$prototype=Qt::DropAction exec(Qt::DropActions supportedActions = Qt::MoveAction)
$internalMethod=|Qt::DropAction|exec,exec1|Qt::DropActions=Qt::MoveAction

$prototype=Qt::DropAction exec(Qt::DropActions supportedActions, Qt::DropAction defaultDropAction)
$internalMethod=|Qt::DropAction|exec,exec2|Qt::DropActions,Qt::DropAction

/*
[1]Qt::DropAction exec(Qt::DropActions supportedActions = Qt::MoveAction)
[2]Qt::DropAction exec(Qt::DropActions supportedActions, Qt::DropAction defaultDropAction)
*/

HB_FUNC_STATIC( QDRAG_EXEC )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QDrag_exec1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QDrag_exec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=exec

$prototypeV2=QPoint hotSpot() const

$prototypeV2=QMimeData * mimeData() const

$prototypeV2=QPixmap pixmap() const

$prototypeV2=void setDragCursor( const QPixmap & cursor, Qt::DropAction action )

$prototypeV2=void setHotSpot( const QPoint & hotspot )

$prototypeV2=void setMimeData( QMimeData * data )

$prototypeV2=void setPixmap( const QPixmap & pixmap )

$prototypeV2=QObject * source() const

$prototypeV2=Qt::DropActions supportedActions() const

$prototypeV2=QObject * target() const

%%
%% SIGNALS
%%

$prototype=void actionChanged( Qt::DropAction action )
$signalMethod=|void|actionChanged|Qt::DropAction

$prototype=void targetChanged( QObject * newTarget )
$signalMethod=|void|targetChanged|QObject *

#pragma ENDDUMP
