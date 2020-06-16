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

$beginClassFrom=QAbstractScrollArea

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=bool alternatingRowColors() const

$prototype=void setAlternatingRowColors ( bool enable )
$method=|void|setAlternatingRowColors|bool

$prototypeV2=int autoScrollMargin() const

$prototype=void setAutoScrollMargin ( int margin )
$method=|void|setAutoScrollMargin|int

$prototypeV2=QModelIndex currentIndex() const

$prototype=void setCurrentIndex ( const QModelIndex & index )
$method=|void|setCurrentIndex|const QModelIndex &

$prototypeV2=Qt::DropAction defaultDropAction() const

$prototype=void setDefaultDropAction ( Qt::DropAction dropAction )
$method=|void|setDefaultDropAction|Qt::DropAction

$prototypeV2=QAbstractItemView::DragDropMode dragDropMode() const

$prototype=void setDragDropMode ( DragDropMode behavior )
$method=|void|setDragDropMode|QAbstractItemView::DragDropMode

$prototypeV2=bool dragDropOverwriteMode() const

$prototype=void setDragDropOverwriteMode ( bool overwrite )
$method=|void|setDragDropOverwriteMode|bool

$prototypeV2=bool dragEnabled() const

$prototype=void setDragEnabled ( bool enable )
$method=|void|setDragEnabled|bool

$prototypeV2=QAbstractItemView::EditTriggers editTriggers() const

$prototype=void setEditTriggers ( EditTriggers triggers )
$method=|void|setEditTriggers|QAbstractItemView::EditTriggers

$prototypeV2=bool hasAutoScroll() const

$prototype=void setAutoScroll ( bool enable )
$method=|void|setAutoScroll|bool

$prototypeV2=QAbstractItemView::ScrollMode horizontalScrollMode() const

$prototype=void setHorizontalScrollMode ( ScrollMode mode )
$method=|void|setHorizontalScrollMode|QAbstractItemView::ScrollMode

$prototypeV2=QSize iconSize() const

$prototype=void setIconSize ( const QSize & size )
$method=|void|setIconSize|const QSize &

$prototype=QWidget * indexWidget ( const QModelIndex & index ) const
$method=|QWidget *|indexWidget|const QModelIndex &

$prototype=void setIndexWidget ( const QModelIndex & index, QWidget * widget )
$method=|void|setIndexWidget|const QModelIndex &,QWidget *

$prototype=void closePersistentEditor ( const QModelIndex & index )
$method=|void|closePersistentEditor|const QModelIndex &

$prototype=virtual QModelIndex indexAt ( const QPoint & point ) const = 0
$virtualMethod=|QModelIndex|indexAt|const QPoint &

$prototype=QAbstractItemDelegate * itemDelegate () const
$internalMethod=|QAbstractItemDelegate *|itemDelegate,itemDelegate1|

$prototype=QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const
$internalMethod=|QAbstractItemDelegate *|itemDelegate,itemDelegate2|const QModelIndex &

/*
[1]QAbstractItemDelegate * itemDelegate () const
[2]QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const
*/

HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATE )
{
  if( ISNUMPAR(0) )
  {
    QAbstractItemView_itemDelegate1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QAbstractItemView_itemDelegate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=itemDelegate

$prototype=void setItemDelegate ( QAbstractItemDelegate * delegate )
$method=|void|setItemDelegate|QAbstractItemDelegate *

$prototype=QAbstractItemDelegate * itemDelegateForColumn ( int column ) const
$method=|QAbstractItemDelegate *|itemDelegateForColumn|int

$prototype=void setItemDelegateForColumn ( int column, QAbstractItemDelegate * delegate )
$method=|void|setItemDelegateForColumn|int,QAbstractItemDelegate *

$prototype=QAbstractItemDelegate * itemDelegateForRow ( int row ) const
$method=|QAbstractItemDelegate *|itemDelegateForRow|int

$prototype=void setItemDelegateForRow ( int row, QAbstractItemDelegate * delegate )
$method=|void|setItemDelegateForRow|int,QAbstractItemDelegate *

$prototype=virtual void keyboardSearch ( const QString & search )
$virtualMethod=|void|keyboardSearch|const QString &

$prototypeV2=QAbstractItemModel * model() const

$prototype=virtual void setModel ( QAbstractItemModel * model )
$virtualMethod=|void|setModel|QAbstractItemModel *

$prototype=void openPersistentEditor ( const QModelIndex & index )
$method=|void|openPersistentEditor|const QModelIndex &

$prototypeV2=QModelIndex rootIndex() const

$prototype=virtual void setRootIndex ( const QModelIndex & index )
$virtualMethod=|void|setRootIndex|const QModelIndex &

$prototype=virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible ) = 0
$virtualMethod=|void|scrollTo|const QModelIndex &,QAbstractItemView::ScrollHint=QAbstractItemView::EnsureVisible

$prototypeV2=QAbstractItemView::SelectionBehavior selectionBehavior() const

$prototype=void setSelectionBehavior ( QAbstractItemView::SelectionBehavior behavior )
$method=|void|setSelectionBehavior|QAbstractItemView::SelectionBehavior

$prototypeV2=QAbstractItemView::SelectionMode selectionMode() const

$prototype=void setSelectionMode ( QAbstractItemView::SelectionMode mode )
$method=|void|setSelectionMode|QAbstractItemView::SelectionMode

$prototypeV2=QItemSelectionModel * selectionModel() const

$prototype=virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
$virtualMethod=|void|setSelectionModel|QItemSelectionModel *

$prototypeV2=bool showDropIndicator() const

$prototype=void setDropIndicatorShown ( bool enable )
$method=|void|setDropIndicatorShown|bool

$prototypeV2=bool tabKeyNavigation() const

$prototype=void setTabKeyNavigation ( bool enable )
$method=|void|setTabKeyNavigation|bool

$prototypeV2=Qt::TextElideMode textElideMode() const

$prototype=void setTextElideMode ( Qt::TextElideMode mode )
$method=|void|setTextElideMode|Qt::TextElideMode

$prototypeV2=QAbstractItemView::ScrollMode verticalScrollMode() const

$prototype=void setVerticalScrollMode ( ScrollMode mode )
$method=|void|setVerticalScrollMode|QAbstractItemView::ScrollMode

$prototype=virtual int sizeHintForColumn ( int column ) const
$virtualMethod=|int|sizeHintForColumn|int

$prototype=QSize sizeHintForIndex ( const QModelIndex & index ) const
$method=|QSize|sizeHintForIndex|const QModelIndex &

$prototype=virtual int sizeHintForRow ( int row ) const
$virtualMethod=|int|sizeHintForRow|int

$prototype=virtual QRect visualRect ( const QModelIndex & index ) const = 0
$virtualMethod=|QRect|visualRect|const QModelIndex &

$prototype=virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototypeV2=void clearSelection()

$prototype=void edit ( const QModelIndex & index )
$method=|void|edit|const QModelIndex &

$prototypeV2=virtual void reset()

$prototypeV2=void scrollToBottom()

$prototypeV2=void scrollToTop()

$prototypeV2=virtual void selectAll()

$prototype=void update ( int x, int y, int w, int h )
$internalMethod=|void|update,update1|int,int,int,int

$prototype=void update ( const QRect & rect )
$internalMethod=|void|update,update2|const QRect &

$prototype=void update ( const QRegion & rgn )
$internalMethod=|void|update,update3|const QRegion &

$prototype=void update ()
$internalMethod=|void|update,update4|

$prototype=void update ( const QModelIndex & index )
$internalMethod=|void|update,update5|const QModelIndex &

/*
[1]void update ( int x, int y, int w, int h ) [QWidget]
[2]void update ( const QRect & rect )         [QWidget]
[3]void update ( const QRegion & rgn )        [QWidget]
[4]void update ()                             [QWidget]
[5]void update ( const QModelIndex & index )  [QAbstractItemView]
*/

HB_FUNC_STATIC( QABSTRACTITEMVIEW_UPDATE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QAbstractItemView_update1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QAbstractItemView_update2();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QAbstractItemView_update3();
  }
  else if( ISNUMPAR(0) )
  {
    QAbstractItemView_update4();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QAbstractItemView_update5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=update

$prototypeV2=virtual void doItemsLayout()

%%
%% SIGNALS
%%

$prototype=void activated( const QModelIndex & index )
$signalMethod=|void|activated|const QModelIndex &

$prototype=void clicked( const QModelIndex & index )
$signalMethod=|void|clicked|const QModelIndex &

$prototype=void doubleClicked( const QModelIndex & index )
$signalMethod=|void|doubleClicked|const QModelIndex &

$prototype=void entered( const QModelIndex & index )
$signalMethod=|void|entered|const QModelIndex &

$prototype=void pressed( const QModelIndex & index )
$signalMethod=|void|pressed|const QModelIndex &

$prototype=void viewportEntered()
$signalMethod=|void|viewportEntered|

#pragma ENDDUMP
