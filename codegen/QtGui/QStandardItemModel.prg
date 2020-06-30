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

$beginClassFrom=QAbstractItemModel

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QMimeData>

$prototype=QStandardItemModel(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=QStandardItemModel(int rows, int columns, QObject *parent = nullptr)
$internalConstructor=|new2|int,int,QObject *=nullptr

/*
[1]QStandardItemModel(QObject *parent = nullptr)
[2]QStandardItemModel(int rows, int columns, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QSTANDARDITEMMODEL_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QStandardItemModel_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTQOBJECT(3) )
  {
    QStandardItemModel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void appendColumn( const QList<QStandardItem *> & items )

$prototype=void appendRow(const QList<QStandardItem*> &items)
$internalMethod=|void|appendRow,appendRow1|const QList<QStandardItem *> &

$prototype=void appendRow(QStandardItem *item)
$internalMethod=|void|appendRow,appendRow2|QStandardItem *

/*
[1]void appendRow(const QList<QStandardItem*> &items)
[2]void appendRow(QStandardItem *item)
*/

HB_FUNC_STATIC( QSTANDARDITEMMODEL_APPENDROW )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QStandardItemModel_appendRow1();
  }
  else if( ISNUMPAR(1) && ISQSTANDARDITEM(1) )
  {
    QStandardItemModel_appendRow2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=appendRow

$prototypeV2=void clear()

$prototypeV2=QList<QStandardItem *> findItems( const QString & text, Qt::MatchFlags flags = Qt::MatchExactly, int column = 0 ) const

$prototypeV2=QStandardItem * horizontalHeaderItem( int column ) const

$prototypeV2=QModelIndex indexFromItem( const QStandardItem * item ) const

$prototype=void insertColumn(int column, const QList<QStandardItem*> &items)
$internalMethod=|void|insertColumn,insertColumn1|int,const QList<QStandardItem *> &

$prototype=bool insertColumn(int column, const QModelIndex &parent = QModelIndex())
$internalMethod=|bool|insertColumn,insertColumn2|int,const QModelIndex &=QModelIndex()

/*
[1]void insertColumn(int column, const QList<QStandardItem*> &items)
[2]bool insertColumn(int column, const QModelIndex &parent = QModelIndex())
*/

HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTCOLUMN )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    QStandardItemModel_insertColumn1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQMODELINDEX(2)||ISNIL(2)) )
  {
    QStandardItemModel_insertColumn2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertColumn

$prototype=void insertRow(int row, const QList<QStandardItem*> &items)
$internalMethod=|void|insertRow,insertRow1|int,const QList<QStandardItem *> &

$prototype=void insertRow(int row, QStandardItem *item)
$internalMethod=|void|insertRow,insertRow2|int,QStandardItem *

$prototype=bool insertRow(int row, const QModelIndex &parent = QModelIndex())
$internalMethod=|bool|insertRow,insertRow3|int,const QModelIndex &=QModelIndex()

/*
[1]void insertRow(int row, const QList<QStandardItem*> &items)
[2]void insertRow(int row, QStandardItem *item)
[3]bool insertRow(int row, const QModelIndex &parent = QModelIndex())
*/

HB_FUNC_STATIC( QSTANDARDITEMMODEL_INSERTROW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    QStandardItemModel_insertRow1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    QStandardItemModel_insertRow2();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQMODELINDEX(2)||ISNIL(2)) )
  {
    QStandardItemModel_insertRow3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertRow

$prototypeV2=QStandardItem * invisibleRootItem() const

$prototypeV2=QStandardItem * item( int row, int column = 0 ) const

$prototypeV2=QStandardItem * itemFromIndex( const QModelIndex & index ) const

$prototypeV2=const QStandardItem * itemPrototype() const

$prototypeV2=QModelIndex index( int row, int column, const QModelIndex & parent = QModelIndex() ) const

$prototype=QModelIndex parent(const QModelIndex &child) const
$internalMethod=|QModelIndex|parent,parent1|const QModelIndex &

$prototype=QObject *parent() const
$internalMethod=|QObject *|parent,parent2|

/*
[1]QModelIndex parent(const QModelIndex &child) const
[2]QObject *parent() const
*/

HB_FUNC_STATIC( QSTANDARDITEMMODEL_PARENT )
{
  if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QStandardItemModel_parent1();
  }
  else if( ISNUMPAR(0) )
  {
    QStandardItemModel_parent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=parent

$prototypeV2=int rowCount( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=int columnCount( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=bool hasChildren( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=QModelIndex sibling( int row, int column, const QModelIndex & idx ) const

$prototypeV2=QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const

$prototypeV2=bool setData( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )

$prototypeV2=QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const

$prototypeV2=bool setHeaderData( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )

$prototypeV2=bool insertRows( int row, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=bool insertColumns( int column, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=bool removeRows( int row, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=bool removeColumns( int column, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=Qt::ItemFlags flags( const QModelIndex & index ) const

$prototypeV2=Qt::DropActions supportedDropActions() const

$prototypeV2=void sort( int column, Qt::SortOrder order = Qt::AscendingOrder )

$prototype=void setItem(int row, int column, QStandardItem *item)
$internalMethod=|void|setItem,setItem1|int,int,QStandardItem *

$prototype=void setItem(int row, QStandardItem *item)
$internalMethod=|void|setItem,setItem2|int,QStandardItem *

/*
[1]void setItem(int row, int column, QStandardItem *item)
[2]void setItem(int row, QStandardItem *item)
*/

HB_FUNC_STATIC( QSTANDARDITEMMODEL_SETITEM )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSTANDARDITEM(3) )
  {
    QStandardItemModel_setItem1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    QStandardItemModel_setItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setItem

$prototypeV2=void setHorizontalHeaderItem( int column, QStandardItem * item )

$prototypeV2=QStandardItem * verticalHeaderItem( int row ) const

$prototypeV2=void setVerticalHeaderItem( int row, QStandardItem * item )

$prototypeV2=void setHorizontalHeaderLabels( const QStringList & labels )

$prototypeV2=void setVerticalHeaderLabels( const QStringList & labels )

$prototypeV2=void setRowCount( int rows )

$prototypeV2=void setColumnCount( int columns )

$prototypeV2=QStandardItem * takeItem( int row, int column = 0 )

$prototypeV2=QList<QStandardItem *> takeRow( int row )

$prototypeV2=QList<QStandardItem *> takeColumn( int column )

$prototypeV2=QStandardItem * takeHorizontalHeaderItem( int column )

$prototypeV2=QStandardItem * takeVerticalHeaderItem( int row )

$prototypeV2=void setItemPrototype( const QStandardItem * item )

$prototypeV2=int sortRole() const

$prototypeV2=void setSortRole( int role )

$prototypeV2=QStringList mimeTypes() const

$prototypeV2=QMimeData * mimeData( const QModelIndexList & indexes ) const

$prototypeV2=bool dropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )

$prototypeV2=5,12,0|bool QStandardItemModel::clearItemData( const QModelIndex & index )

%%
%% SIGNALS
%%

$prototype=void itemChanged( QStandardItem * item )
$signalMethod=|void|itemChanged|QStandardItem *

#pragma ENDDUMP
