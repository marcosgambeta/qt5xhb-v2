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

$prototype=virtual QVariant data(int role = Qt::UserRole + 1) const
$virtualMethod=|QVariant|data|int=Qt::UserRole+1

$prototype=virtual void setData(const QVariant &value, int role = Qt::UserRole + 1)
$virtualMethod=|void|setData|const QVariant &,int=Qt::UserRole+1

$prototypeV2=QString text() const

$prototype=void setText(const QString &text)
$method=|void|setText|const QString &

$prototypeV2=QIcon icon() const

$prototype=void setIcon(const QIcon &icon)
$method=|void|setIcon|const QIcon &

$prototypeV2=QString toolTip() const

$prototype=void setToolTip(const QString &toolTip)
$method=|void|setToolTip|const QString &

$prototypeV2=QString statusTip() const

$prototype=void setStatusTip(const QString &statusTip)
$method=|void|setStatusTip|const QString &

$prototypeV2=QString whatsThis() const

$prototype=void setWhatsThis(const QString &whatsThis)
$method=|void|setWhatsThis|const QString &

$prototypeV2=QSize sizeHint() const

$prototype=void setSizeHint(const QSize &sizeHint)
$method=|void|setSizeHint|const QSize &

$prototypeV2=QFont font() const

$prototype=void setFont(const QFont &font)
$method=|void|setFont|const QFont &

$prototypeV2=Qt::Alignment textAlignment() const

$prototype=void setTextAlignment(Qt::Alignment textAlignment)
$method=|void|setTextAlignment|Qt::Alignment

$prototypeV2=QBrush background() const

$prototype=void setBackground(const QBrush &brush)
$method=|void|setBackground|const QBrush &

$prototypeV2=QBrush foreground() const

$prototype=void setForeground(const QBrush &brush)
$method=|void|setForeground|const QBrush &

$prototypeV2=Qt::CheckState checkState() const

$prototype=void setCheckState(Qt::CheckState checkState)
$method=|void|setCheckState|Qt::CheckState

$prototypeV2=QString accessibleText() const

$prototype=void setAccessibleText(const QString &accessibleText)
$method=|void|setAccessibleText|const QString &

$prototypeV2=QString accessibleDescription() const

$prototype=void setAccessibleDescription(const QString &accessibleDescription)
$method=|void|setAccessibleDescription|const QString &

$prototypeV2=Qt::ItemFlags flags() const

$prototype=void setFlags(Qt::ItemFlags flags)
$method=|void|setFlags|Qt::ItemFlags

$prototypeV2=bool isEnabled() const

$prototype=void setEnabled(bool enabled)
$method=|void|setEnabled|bool

$prototypeV2=bool isEditable() const

$prototype=void setEditable(bool editable)
$method=|void|setEditable|bool

$prototypeV2=bool isSelectable() const

$prototype=void setSelectable(bool selectable)
$method=|void|setSelectable|bool

$prototypeV2=bool isCheckable() const

$prototype=void setCheckable(bool checkable)
$method=|void|setCheckable|bool

$prototypeV2=bool isTristate() const

$prototype=void setTristate(bool tristate)
$method=|void|setTristate|bool

$prototypeV2=bool isDragEnabled() const

$prototype=void setDragEnabled(bool dragEnabled)
$method=|void|setDragEnabled|bool

$prototypeV2=bool isDropEnabled() const

$prototype=void setDropEnabled(bool dropEnabled)
$method=|void|setDropEnabled|bool

$prototypeV2=QStandardItem * parent() const

$prototypeV2=int row() const

$prototypeV2=int column() const

$prototypeV2=QModelIndex index() const

$prototypeV2=QStandardItemModel * model() const

$prototypeV2=int rowCount() const

$prototype=void setRowCount(int rows)
$method=|void|setRowCount|int

$prototypeV2=int columnCount() const

$prototype=void setColumnCount(int columns)
$method=|void|setColumnCount|int

$prototypeV2=bool hasChildren() const

$prototype=QStandardItem *child(int row, int column = 0) const
$method=|QStandardItem *|child|int,int=0

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

$prototype=void insertColumn(int column, const QList<QStandardItem*> &items)
$method=|void|insertColumn|int,const QList<QStandardItem *> &

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

$prototype=void insertColumns(int column, int count)
$method=|void|insertColumns|int,int

$prototype=void removeRow(int row)
$method=|void|removeRow|int

$prototype=void removeColumn(int column)
$method=|void|removeColumn|int

$prototype=void removeRows(int row, int count)
$method=|void|removeRows|int,int

$prototype=void removeColumns(int column, int count)
$method=|void|removeColumns|int,int

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

$prototype=void appendRows(const QList<QStandardItem*> &items)
$method=|void|appendRows|const QList<QStandardItem *> &

$prototype=void appendColumn(const QList<QStandardItem*> &items)
$method=|void|appendColumn|const QList<QStandardItem *> &

$prototype=QStandardItem *takeChild(int row, int column = 0)
$method=|QStandardItem *|takeChild|int,int=0

$prototype=QList<QStandardItem*> takeRow(int row)
$method=|QList<QStandardItem *>|takeRow|int

$prototype=QList<QStandardItem*> takeColumn(int column)
$method=|QList<QStandardItem *>|takeColumn|int

$prototype=void sortChildren(int column, Qt::SortOrder order = Qt::AscendingOrder)
$method=|void|sortChildren|int,Qt::SortOrder=Qt::AscendingOrder

$prototypeV2=virtual QStandardItem * clone() const

$prototypeV2=virtual int type() const

$prototype=virtual void read(QDataStream &in)
$virtualMethod=|void|read|QDataStream &

$prototype=virtual void write(QDataStream &out) const
$virtualMethod=|void|write|QDataStream &

$prototype=void QStandardItem::clearData()
$method=5,12,0|void|clearData|

$extraMethods

#pragma ENDDUMP
