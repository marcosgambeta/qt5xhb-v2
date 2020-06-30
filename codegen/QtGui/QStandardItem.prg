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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStandardItem()
$internalConstructor=|new1|

$prototype=QStandardItem(const QString &text)
$internalConstructor=|new2|const QString &

$prototype=QStandardItem(const QIcon &icon, const QString &text)
$internalConstructor=|new3|const QIcon &,const QString &

$prototype=QStandardItem(int rows, int columns = 1)
$internalConstructor=|new4|int,int=1

/*
[1]QStandardItem()
[2]QStandardItem(const QString &text)
[3]QStandardItem(const QIcon &icon, const QString &text)
[4]QStandardItem(int rows, int columns = 1)
*/

HB_FUNC_STATIC(QSTANDARDITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStandardItem_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QStandardItem_new2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QStandardItem_new3();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QStandardItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=virtual QVariant data( int role = Qt::UserRole + 1 ) const

$prototypeV2=virtual void setData( const QVariant & value, int role = Qt::UserRole + 1 )

$prototypeV2=QString text() const

$prototypeV2=void setText( const QString & text )

$prototypeV2=QIcon icon() const

$prototypeV2=void setIcon( const QIcon & icon )

$prototypeV2=QString toolTip() const

$prototypeV2=void setToolTip( const QString & toolTip )

$prototypeV2=QString statusTip() const

$prototypeV2=void setStatusTip( const QString & statusTip )

$prototypeV2=QString whatsThis() const

$prototypeV2=void setWhatsThis( const QString & whatsThis )

$prototypeV2=QSize sizeHint() const

$prototypeV2=void setSizeHint( const QSize & sizeHint )

$prototypeV2=QFont font() const

$prototypeV2=void setFont( const QFont & font )

$prototypeV2=Qt::Alignment textAlignment() const

$prototypeV2=void setTextAlignment( Qt::Alignment textAlignment )

$prototypeV2=QBrush background() const

$prototypeV2=void setBackground( const QBrush & brush )

$prototypeV2=QBrush foreground() const

$prototypeV2=void setForeground( const QBrush & brush )

$prototypeV2=Qt::CheckState checkState() const

$prototypeV2=void setCheckState( Qt::CheckState checkState )

$prototypeV2=QString accessibleText() const

$prototypeV2=void setAccessibleText( const QString & accessibleText )

$prototypeV2=QString accessibleDescription() const

$prototypeV2=void setAccessibleDescription( const QString & accessibleDescription )

$prototypeV2=Qt::ItemFlags flags() const

$prototypeV2=void setFlags( Qt::ItemFlags flags )

$prototypeV2=bool isEnabled() const

$prototypeV2=void setEnabled( bool enabled )

$prototypeV2=bool isEditable() const

$prototypeV2=void setEditable( bool editable )

$prototypeV2=bool isSelectable() const

$prototypeV2=void setSelectable( bool selectable )

$prototypeV2=bool isCheckable() const

$prototypeV2=void setCheckable( bool checkable )

$prototypeV2=bool isTristate() const

$prototypeV2=void setTristate( bool tristate )

$prototypeV2=bool isDragEnabled() const

$prototypeV2=void setDragEnabled( bool dragEnabled )

$prototypeV2=bool isDropEnabled() const

$prototypeV2=void setDropEnabled( bool dropEnabled )

$prototypeV2=QStandardItem * parent() const

$prototypeV2=int row() const

$prototypeV2=int column() const

$prototypeV2=QModelIndex index() const

$prototypeV2=QStandardItemModel * model() const

$prototypeV2=int rowCount() const

$prototypeV2=void setRowCount( int rows )

$prototypeV2=int columnCount() const

$prototypeV2=void setColumnCount( int columns )

$prototypeV2=bool hasChildren() const

$prototypeV2=QStandardItem * child( int row, int column = 0 ) const

$prototype=void setChild(int row, int column, QStandardItem *item)
$internalMethod=|void|setChild,setChild1|int,int,QStandardItem *

$prototype=void setChild(int row, QStandardItem *item)
$internalMethod=|void|setChild,setChild2|int,QStandardItem *

/*
[1]void setChild(int row, int column, QStandardItem *item)
[2]void setChild(int row, QStandardItem *item)
*/

HB_FUNC_STATIC( QSTANDARDITEM_SETCHILD )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSTANDARDITEM(3) )
  {
    QStandardItem_setChild1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    QStandardItem_setChild2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setChild

$prototype=void insertRow(int row, const QList<QStandardItem*> &items)
$internalMethod=|void|insertRow,insertRow1|int,const QList<QStandardItem *> &

$prototype=void insertRow(int row, QStandardItem *item)
$internalMethod=|void|insertRow,insertRow2|int,QStandardItem *

/*
[1]void insertRow(int row, const QList<QStandardItem*> &items)
[2]void insertRow(int row, QStandardItem *item)
*/

HB_FUNC_STATIC( QSTANDARDITEM_INSERTROW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    QStandardItem_insertRow1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    QStandardItem_insertRow2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertRow

$prototypeV2=void insertColumn( int column, const QList<QStandardItem *> & items )

$prototype=void insertRows(int row, const QList<QStandardItem*> &items)
$internalMethod=|void|insertRows,insertRows1|int,const QList<QStandardItem *> &

$prototype=void insertRows(int row, int count)
$internalMethod=|void|insertRows,insertRows2|int,int

/*
[1]void insertRows(int row, const QList<QStandardItem*> &items)
[2]void insertRows(int row, int count)
*/

HB_FUNC_STATIC( QSTANDARDITEM_INSERTROWS )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    QStandardItem_insertRows1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QStandardItem_insertRows2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertRows

$prototypeV2=void insertColumns( int column, int count )

$prototypeV2=void removeRow( int row )

$prototypeV2=void removeColumn( int column )

$prototypeV2=void removeRows( int row, int count )

$prototypeV2=void removeColumns( int column, int count )

$prototype=void appendRow(const QList<QStandardItem*> &items)
$internalMethod=|void|appendRow,appendRow1|const QList<QStandardItem *> &

$prototype=void appendRow(QStandardItem *item)
$internalMethod=|void|appendRow,appendRow2|QStandardItem *

/*
[1]void appendRow(const QList<QStandardItem*> &items)
[2]void appendRow(QStandardItem *item)
*/

HB_FUNC_STATIC( QSTANDARDITEM_APPENDROW )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QStandardItem_appendRow1();
  }
  else if( ISNUMPAR(1) && ISQSTANDARDITEM(1) )
  {
    QStandardItem_appendRow2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=appendRow

$prototypeV2=void appendRows( const QList<QStandardItem *> & items )

$prototypeV2=void appendColumn( const QList<QStandardItem *> & items )

$prototypeV2=QStandardItem * takeChild( int row, int column = 0 )

$prototypeV2=QList<QStandardItem *> takeRow( int row )

$prototypeV2=QList<QStandardItem *> takeColumn( int column )

$prototypeV2=void sortChildren( int column, Qt::SortOrder order = Qt::AscendingOrder )

$prototypeV2=virtual QStandardItem * clone() const

$prototypeV2=virtual int type() const

$prototypeV2=virtual void read( QDataStream & in )

$prototypeV2=virtual void write( QDataStream & out ) const

$prototypeV2=5,12,0|void QStandardItem::clearData()

$extraMethods

#pragma ENDDUMP
