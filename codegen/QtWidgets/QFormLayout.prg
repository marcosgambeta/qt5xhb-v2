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

$prototype=QFormLayout ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototype=void addRow ( QWidget * label, QWidget * field )
$internalMethod=|void|addRow,addRow1|QWidget *,QWidget *

$prototype=void addRow ( QWidget * label, QLayout * field )
$internalMethod=|void|addRow,addRow2|QWidget *,QLayout *

$prototype=void addRow ( const QString & labelText, QWidget * field )
$internalMethod=|void|addRow,addRow3|const QString &,QWidget *

$prototype=void addRow ( const QString & labelText, QLayout * field )
$internalMethod=|void|addRow,addRow4|const QString &,QLayout *

$prototype=void addRow ( QWidget * widget )
$internalMethod=|void|addRow,addRow5|QWidget *

$prototype=void addRow ( QLayout * layout )
$internalMethod=|void|addRow,addRow6|QLayout *

/*
[1]void addRow ( QWidget * label, QWidget * field )
[2]void addRow ( QWidget * label, QLayout * field )
[3]void addRow ( const QString & labelText, QWidget * field )
[4]void addRow ( const QString & labelText, QLayout * field )
[5]void addRow ( QWidget * widget )
[6]void addRow ( QLayout * layout )
*/

HB_FUNC_STATIC( QFORMLAYOUT_ADDROW )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISQWIDGET(2) )
  {
    QFormLayout_addRow1();
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISQLAYOUT(2) )
  {
    QFormLayout_addRow2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQWIDGET(2) )
  {
    QFormLayout_addRow3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQLAYOUT(2) )
  {
    QFormLayout_addRow4();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QFormLayout_addRow5();
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    QFormLayout_addRow6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addRow

$prototypeV2=QFormLayout::FieldGrowthPolicy fieldGrowthPolicy() const

$prototypeV2=Qt::Alignment formAlignment() const

$prototypeV2=int horizontalSpacing() const

$prototype=void insertRow ( int row, QWidget * label, QWidget * field )
$internalMethod=|void|insertRow,insertRow1|int,QWidget *,QWidget *

$prototype=void insertRow ( int row, QWidget * label, QLayout * field )
$internalMethod=|void|insertRow,insertRow2|int,QWidget *,QLayout *

$prototype=void insertRow ( int row, const QString & labelText, QWidget * field )
$internalMethod=|void|insertRow,insertRow3|int,const QString &,QWidget *

$prototype=void insertRow ( int row, const QString & labelText, QLayout * field )
$internalMethod=|void|insertRow,insertRow4|int,const QString &,QLayout *

$prototype=void insertRow ( int row, QWidget * widget )
$internalMethod=|void|insertRow,insertRow5|int,QWidget *

$prototype=void insertRow ( int row, QLayout * layout )
$internalMethod=|void|insertRow,insertRow6|int,QLayout *

/*
[1]void insertRow ( int row, QWidget * label, QWidget * field )
[2]void insertRow ( int row, QWidget * label, QLayout * field )
[3]void insertRow ( int row, const QString & labelText, QWidget * field )
[4]void insertRow ( int row, const QString & labelText, QLayout * field )
[5]void insertRow ( int row, QWidget * widget )
[6]void insertRow ( int row, QLayout * layout )
*/

HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISQWIDGET(3) )
  {
    QFormLayout_insertRow1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISQLAYOUT(3) )
  {
    QFormLayout_insertRow2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISQWIDGET(3) )
  {
    QFormLayout_insertRow3();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISQLAYOUT(3) )
  {
    QFormLayout_insertRow4();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQWIDGET(2) )
  {
    QFormLayout_insertRow5();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQLAYOUT(2) )
  {
    QFormLayout_insertRow6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertRow

$prototype=QLayoutItem * itemAt ( int row, ItemRole role ) const
$internalMethod=|QLayoutItem *|itemAt,itemAt1|int,QFormLayout::ItemRole

$prototype=virtual QLayoutItem * itemAt ( int index ) const
$internalVirtualMethod=|QLayoutItem *|itemAt,itemAt2|int

/*
[1]QLayoutItem * itemAt ( int row, ItemRole role ) const
[2]virtual QLayoutItem * itemAt ( int index ) const
*/

HB_FUNC_STATIC( QFORMLAYOUT_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QFormLayout_itemAt1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFormLayout_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=itemAt

$prototypeV2=Qt::Alignment labelAlignment() const

$prototype=QWidget * labelForField ( QWidget * field ) const
$internalMethod=|QWidget *|labelForField,labelForField1|QWidget *

$prototype=QWidget * labelForField ( QLayout * field ) const
$internalMethod=|QWidget *|labelForField,labelForField2|QLayout *

/*
[1]QWidget * labelForField ( QWidget * field ) const
[2]QWidget * labelForField ( QLayout * field ) const
*/

HB_FUNC_STATIC( QFORMLAYOUT_LABELFORFIELD )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QFormLayout_labelForField1();
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    QFormLayout_labelForField2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=labelForField

$prototypeV2=int rowCount() const

$prototypeV2=QFormLayout::RowWrapPolicy rowWrapPolicy() const

$prototype=void setFieldGrowthPolicy ( FieldGrowthPolicy policy )
$method=|void|setFieldGrowthPolicy|QFormLayout::FieldGrowthPolicy

$prototype=void setFormAlignment ( Qt::Alignment alignment )
$method=|void|setFormAlignment|Qt::Alignment

$prototype=void setHorizontalSpacing ( int spacing )
$method=|void|setHorizontalSpacing|int

$prototype=void setItem ( int row, ItemRole role, QLayoutItem * item )
$method=|void|setItem|int,QFormLayout::ItemRole,QLayoutItem *

$prototype=void setLabelAlignment ( Qt::Alignment alignment )
$method=|void|setLabelAlignment|Qt::Alignment

$prototype=void setLayout ( int row, ItemRole role, QLayout * layout )
$method=|void|setLayout|int,QFormLayout::ItemRole,QLayout *

$prototype=void setRowWrapPolicy ( RowWrapPolicy policy )
$method=|void|setRowWrapPolicy|QFormLayout::RowWrapPolicy

$prototype=void setSpacing ( int spacing )
$method=|void|setSpacing|int

$prototype=void setVerticalSpacing ( int spacing )
$method=|void|setVerticalSpacing|int

$prototype=void setWidget ( int row, ItemRole role, QWidget * widget )
$method=|void|setWidget|int,QFormLayout::ItemRole,QWidget *

$prototypeV2=int spacing() const

$prototypeV2=int verticalSpacing() const

$prototype=virtual void addItem ( QLayoutItem * item )
$virtualMethod=|void|addItem|QLayoutItem *

$prototypeV2=virtual int count() const

$prototypeV2=virtual Qt::Orientations expandingDirections() const

$prototypeV2=virtual bool hasHeightForWidth() const

$prototype=virtual int heightForWidth ( int width ) const
$virtualMethod=|int|heightForWidth|int

$prototypeV2=virtual void invalidate()

$prototypeV2=virtual QSize minimumSize() const

$prototype=virtual void setGeometry ( const QRect & rect )
$virtualMethod=|void|setGeometry|const QRect &

$prototypeV2=virtual QSize sizeHint() const

$prototype=virtual QLayoutItem * takeAt ( int index )
$virtualMethod=|QLayoutItem *|takeAt|int

#pragma ENDDUMP
