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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=QRectF contentsRect() const

$prototype=QSizeF effectiveSizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
$method=|QSizeF|effectiveSizeHint|Qt::SizeHint,const QSizeF &=QSizeF()

$prototypeV2=QRectF geometry() const

$prototype=virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
$virtualMethod=|void|getContentsMargins|qreal *,qreal *,qreal *,qreal *

$prototypeV2=QGraphicsItem * graphicsItem() const

$prototypeV2=bool isLayout() const

$prototypeV2=qreal maximumHeight() const

$prototypeV2=QSizeF maximumSize() const

$prototypeV2=qreal maximumWidth() const

$prototypeV2=qreal minimumHeight() const

$prototypeV2=QSizeF minimumSize() const

$prototypeV2=qreal minimumWidth() const

$prototypeV2=bool ownedByLayout() const

$prototypeV2=QGraphicsLayoutItem * parentLayoutItem() const

$prototypeV2=qreal preferredHeight() const

$prototypeV2=QSizeF preferredSize() const

$prototypeV2=qreal preferredWidth() const

$prototype=virtual void setGeometry ( const QRectF & rect )
$virtualMethod=|void|setGeometry|const QRectF &

$prototype=void setMaximumHeight ( qreal height )
$method=|void|setMaximumHeight|qreal

$prototype=void setMaximumSize ( const QSizeF & size )
$internalMethod=|void|setMaximumSize,setMaximumSize1|const QSizeF &

$prototype=void setMaximumSize ( qreal w, qreal h )
$internalMethod=|void|setMaximumSize,setMaximumSize2|qreal,qreal

/*
[1]void setMaximumSize ( const QSizeF & size )
[2]void setMaximumSize ( qreal w, qreal h )
*/

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMAXIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsLayoutItem_setMaximumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsLayoutItem_setMaximumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setMaximumSize

$prototype=void setMaximumWidth ( qreal width )
$method=|void|setMaximumWidth|qreal

$prototype=void setMinimumHeight ( qreal height )
$method=|void|setMinimumHeight|qreal

$prototype=void setMinimumSize ( const QSizeF & size )
$internalMethod=|void|setMinimumSize,setMinimumSize1|const QSizeF &

$prototype=void setMinimumSize ( qreal w, qreal h )
$internalMethod=|void|setMinimumSize,setMinimumSize2|qreal,qreal

/*
[1]void setMinimumSize ( const QSizeF & size )
[2]void setMinimumSize ( qreal w, qreal h )
*/

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMINIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsLayoutItem_setMinimumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsLayoutItem_setMinimumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setMinimumSize

$prototype=void setMinimumWidth ( qreal width )
$method=|void|setMinimumWidth|qreal

$prototype=void setParentLayoutItem ( QGraphicsLayoutItem * parent )
$method=|void|setParentLayoutItem|QGraphicsLayoutItem *

$prototype=void setPreferredHeight ( qreal height )
$method=|void|setPreferredHeight|qreal

$prototype=void setPreferredSize ( const QSizeF & size )
$internalMethod=|void|setPreferredSize,setPreferredSize1|const QSizeF &

$prototype=void setPreferredSize ( qreal w, qreal h )
$internalMethod=|void|setPreferredSize,setPreferredSize2|qreal,qreal

/*
[1]void setPreferredSize ( const QSizeF & size )
[2]void setPreferredSize ( qreal w, qreal h )
*/

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETPREFERREDSIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsLayoutItem_setPreferredSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsLayoutItem_setPreferredSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPreferredSize

$prototype=void setPreferredWidth ( qreal width )
$method=|void|setPreferredWidth|qreal

$prototype=void setSizePolicy ( const QSizePolicy & policy )
$internalMethod=|void|setSizePolicy,setSizePolicy1|const QSizePolicy &

$prototype=void setSizePolicy ( QSizePolicy::Policy hPolicy, QSizePolicy::Policy vPolicy, QSizePolicy::ControlType controlType = QSizePolicy::DefaultType )
$internalMethod=|void|setSizePolicy,setSizePolicy2|QSizePolicy::Policy,QSizePolicy::Policy,QSizePolicy::ControlType=QSizePolicy::DefaultType

/*
[1]void setSizePolicy ( const QSizePolicy & policy )
[2]void setSizePolicy ( QSizePolicy::Policy hPolicy, QSizePolicy::Policy vPolicy, QSizePolicy::ControlType controlType = QSizePolicy::DefaultType )
*/

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETSIZEPOLICY )
{
  if( ISNUMPAR(1) && ISQSIZEPOLICY(1) )
  {
    QGraphicsLayoutItem_setSizePolicy1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QGraphicsLayoutItem_setSizePolicy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSizePolicy

$prototypeV2=QSizePolicy sizePolicy() const

$prototypeV2=virtual void updateGeometry()

$extraMethods

#pragma ENDDUMP
