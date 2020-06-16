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

$beginClassFrom=QLayout

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGridLayout ( QWidget * parent )
$internalConstructor=|new1|QWidget *

$prototype=QGridLayout ()
$internalConstructor=|new2|

/*
[1]QGridLayout ( QWidget * parent )
[2]QGridLayout ()
*/

HB_FUNC_STATIC( QGRIDLAYOUT_NEW )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QGridLayout_new1();
  }
  else if( ISNUMPAR(0) )
  {
    QGridLayout_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addItem ( QLayoutItem * item, int row, int column, int rowSpan = 1, int columnSpan = 1, Qt::Alignment alignment = 0 )
$method=|void|addItem|QLayoutItem *,int,int,int=1,int=1,Qt::Alignment=0

$prototype=void addLayout ( QLayout * layout, int row, int column, Qt::Alignment alignment = 0 )
$internalMethod=|void|addLayout,addLayout1|QLayout *,int,int,Qt::Alignment=0

$prototype=void addLayout ( QLayout * layout, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
$internalMethod=|void|addLayout,addLayout2|QLayout *,int,int,int,int,Qt::Alignment=0

/*
[1]void addLayout ( QLayout * layout, int row, int column, Qt::Alignment alignment = 0 )
[2]void addLayout ( QLayout * layout, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
*/

HB_FUNC_STATIC( QGRIDLAYOUT_ADDLAYOUT )
{
  if( ISBETWEEN(3,4) && ISQLAYOUT(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QGridLayout_addLayout1();
  }
  else if( ISBETWEEN(5,6) && ISQLAYOUT(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISOPTNUM(6) )
  {
    QGridLayout_addLayout2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addLayout

$prototype=void addWidget ( QWidget * widget, int row, int column, Qt::Alignment alignment = 0 )
$internalMethod=|void|addWidget,addWidget1|QWidget *,int,int,Qt::Alignment=0

$prototype=void addWidget ( QWidget * widget, int fromRow, int fromColumn, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
$internalMethod=|void|addWidget,addWidget2|QWidget *,int,int,int,int,Qt::Alignment=0

/*
[1]void addWidget ( QWidget * widget, int row, int column, Qt::Alignment alignment = 0 )
[2]void addWidget ( QWidget * widget, int fromRow, int fromColumn, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
*/

HB_FUNC_STATIC( QGRIDLAYOUT_ADDWIDGET )
{
  if( ISBETWEEN(3,4) && ISQWIDGET(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QGridLayout_addWidget1();
  }
  else if( ISBETWEEN(5,6) && ISQWIDGET(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISOPTNUM(6) )
  {
    QGridLayout_addWidget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addWidget

$prototype=QRect cellRect ( int row, int column ) const
$method=|QRect|cellRect|int,int

$prototypeV2=int columnCount() const

$prototype=int columnMinimumWidth ( int column ) const
$method=|int|columnMinimumWidth|int

$prototype=int columnStretch ( int column ) const
$method=|int|columnStretch|int

$prototype=void getItemPosition ( int index, int * row, int * column, int * rowSpan, int * columnSpan )
$method=|void|getItemPosition|int,int *,int *,int *,int *

$prototypeV2=int horizontalSpacing() const

$prototype=QLayoutItem * itemAtPosition ( int row, int column ) const
$method=|QLayoutItem *|itemAtPosition|int,int

$prototypeV2=Qt::Corner originCorner() const

$prototypeV2=int rowCount() const

$prototype=int rowMinimumHeight ( int row ) const
$method=|int|rowMinimumHeight|int

$prototype=int rowStretch ( int row ) const
$method=|int|rowStretch|int

$prototype=void setColumnMinimumWidth ( int column, int minSize )
$method=|void|setColumnMinimumWidth|int,int

$prototype=void setColumnStretch ( int column, int stretch )
$method=|void|setColumnStretch|int,int

$prototype=void setHorizontalSpacing ( int spacing )
$method=|void|setHorizontalSpacing|int

$prototype=void setOriginCorner ( Qt::Corner corner )
$method=|void|setOriginCorner|Qt::Corner

$prototype=void setRowMinimumHeight ( int row, int minSize )
$method=|void|setRowMinimumHeight|int,int

$prototype=void setRowStretch ( int row, int stretch )
$method=|void|setRowStretch|int,int

$prototype=void setSpacing ( int spacing )
$method=|void|setSpacing|int

$prototype=void setVerticalSpacing ( int spacing )
$method=|void|setVerticalSpacing|int

$prototypeV2=int spacing() const

$prototypeV2=int verticalSpacing() const

$prototypeV2=virtual int count() const

$prototypeV2=virtual Qt::Orientations expandingDirections() const

$prototypeV2=virtual bool hasHeightForWidth() const

$prototype=virtual int heightForWidth ( int w ) const
$virtualMethod=|int|heightForWidth|int

$prototypeV2=virtual void invalidate()

$prototype=virtual QLayoutItem * itemAt ( int index ) const
$virtualMethod=|QLayoutItem *|itemAt|int

$prototypeV2=virtual QSize maximumSize() const

$prototype=virtual int minimumHeightForWidth ( int w ) const
$virtualMethod=|int|minimumHeightForWidth|int

$prototypeV2=virtual QSize minimumSize() const

$prototype=virtual void setGeometry ( const QRect & rect )
$virtualMethod=|void|setGeometry|const QRect &

$prototypeV2=virtual QSize sizeHint() const

$prototype=virtual QLayoutItem * takeAt ( int index )
$virtualMethod=|QLayoutItem *|takeAt|int

#pragma ENDDUMP
