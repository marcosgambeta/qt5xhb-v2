%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsObject,QGraphicsLayoutItem

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QStyle>

$prototype=QGraphicsWidget ( QGraphicsItem * parent = nullptr, Qt::WindowFlags wFlags = 0 )
$constructor=|new|QGraphicsItem *=nullptr,Qt::WindowFlags=0

$deleteMethod

$prototype=void addAction ( QAction * action )
$method=|void|addAction|QAction *

$prototypeV2=void adjustSize()

$prototypeV2=bool autoFillBackground() const

$prototypeV2=Qt::FocusPolicy focusPolicy() const

$prototypeV2=QGraphicsWidget * focusWidget() const

$prototypeV2=QFont font() const

$prototype=void getWindowFrameMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
$method=|void|getWindowFrameMargins|qreal *,qreal *,qreal *,qreal *

$prototype=int grabShortcut ( const QKeySequence & sequence, Qt::ShortcutContext context = Qt::WindowShortcut )
$method=|int|grabShortcut|const QKeySequence &,Qt::ShortcutContext=Qt::WindowShortcut

$prototype=void insertAction ( QAction * before, QAction * action )
$method=|void|insertAction|QAction *,QAction *

$prototypeV2=bool isActiveWindow() const

$prototypeV2=QGraphicsLayout * layout() const

$prototypeV2=Qt::LayoutDirection layoutDirection() const

$prototype=virtual void paintWindowFrame ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = nullptr )
$virtualMethod=|void|paintWindowFrame|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=nullptr

$prototypeV2=QPalette palette() const

$prototypeV2=QRectF rect() const

$prototype=void releaseShortcut ( int id )
$method=|void|releaseShortcut|int

$prototype=void removeAction ( QAction * action )
$method=|void|removeAction|QAction *

$prototype=void resize ( const QSizeF & size )
$internalMethod=|void|resize,resize1|const QSizeF &

$prototype=void resize ( qreal w, qreal h )
$internalMethod=|void|resize,resize2|qreal,qreal

/*
[1]void resize ( const QSizeF & size )
[2]void resize ( qreal w, qreal h )
*/

HB_FUNC_STATIC( QGRAPHICSWIDGET_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsWidget_resize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsWidget_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=resize

$prototype=void setAttribute ( Qt::WidgetAttribute attribute, bool on = true )
$method=|void|setAttribute|Qt::WidgetAttribute,bool=true

$prototype=void setAutoFillBackground ( bool enabled )
$method=|void|setAutoFillBackground|bool

$prototype=void setContentsMargins ( qreal left, qreal top, qreal right, qreal bottom )
$method=|void|setContentsMargins|qreal,qreal,qreal,qreal

$prototype=void setFocusPolicy ( Qt::FocusPolicy policy )
$method=|void|setFocusPolicy|Qt::FocusPolicy

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=void setGeometry ( qreal x, qreal y, qreal w, qreal h )
$internalMethod=|void|setGeometry,setGeometry1|qreal,qreal,qreal,qreal

$prototype=virtual void setGeometry ( const QRectF & rect )
$internalVirtualMethod=|void|setGeometry,setGeometry2|const QRectF &

/*
[1]void setGeometry ( qreal x, qreal y, qreal w, qreal h )
[2]virtual void setGeometry ( const QRectF & rect )
*/

HB_FUNC_STATIC( QGRAPHICSWIDGET_SETGEOMETRY )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsWidget_setGeometry1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsWidget_setGeometry2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setGeometry

$prototype=void setLayout ( QGraphicsLayout * layout )
$method=|void|setLayout|QGraphicsLayout *

$prototype=void setLayoutDirection ( Qt::LayoutDirection direction )
$method=|void|setLayoutDirection|Qt::LayoutDirection

$prototype=void setPalette ( const QPalette & palette )
$method=|void|setPalette|const QPalette &

$prototype=void setShortcutAutoRepeat ( int id, bool enabled = true )
$method=|void|setShortcutAutoRepeat|int,bool=true

$prototype=void setShortcutEnabled ( int id, bool enabled = true )
$method=|void|setShortcutEnabled|int,bool=true

$prototype=void setStyle ( QStyle * style )
$method=|void|setStyle|QStyle *

$prototype=void setWindowFlags ( Qt::WindowFlags wFlags )
$method=|void|setWindowFlags|Qt::WindowFlags

$prototype=void setWindowFrameMargins ( qreal left, qreal top, qreal right, qreal bottom )
$method=|void|setWindowFrameMargins|qreal,qreal,qreal,qreal

$prototype=void setWindowTitle ( const QString & title )
$method=|void|setWindowTitle|const QString &

$prototypeV2=QSizeF size() const

$prototypeV2=QStyle * style() const

$prototype=bool testAttribute ( Qt::WidgetAttribute attribute ) const
$method=|bool|testAttribute|Qt::WidgetAttribute

$prototypeV2=void unsetLayoutDirection()

$prototypeV2=void unsetWindowFrameMargins()

$prototypeV2=Qt::WindowFlags windowFlags() const

$prototypeV2=QRectF windowFrameGeometry() const

$prototypeV2=QRectF windowFrameRect() const

$prototypeV2=QString windowTitle() const

$prototypeV2=Qt::WindowType windowType() const

$prototypeV2=virtual QRectF boundingRect() const

$prototype=virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
$virtualMethod=|void|getContentsMargins|qreal *,qreal *,qreal *,qreal *

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = nullptr )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=nullptr

$prototypeV2=virtual QPainterPath shape() const

$prototypeV2=virtual int type() const

$prototypeV2=bool close()

$prototype=static void setTabOrder ( QGraphicsWidget * first, QGraphicsWidget * second )
$staticMethod=|void|setTabOrder|QGraphicsWidget *,QGraphicsWidget *

%%
%% SIGNALS
%%

$prototype=void geometryChanged()
$signalMethod=|void|geometryChanged|

#pragma ENDDUMP
