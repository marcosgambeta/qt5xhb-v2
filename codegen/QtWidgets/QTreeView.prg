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

$beginClassFrom=QAbstractItemView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QHeaderView>

$prototype=QTreeView ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototypeV2=bool allColumnsShowFocus() const

$prototypeV2=int autoExpandDelay() const

$prototype=int columnAt ( int x ) const
$method=|int|columnAt|int

$prototype=int columnViewportPosition ( int column ) const
$method=|int|columnViewportPosition|int

$prototype=int columnWidth ( int column ) const
$method=|int|columnWidth|int

$prototypeV2=bool expandsOnDoubleClick() const

$prototypeV2=QHeaderView * header() const

$prototypeV2=int indentation() const

$prototype=QModelIndex indexAbove ( const QModelIndex & index ) const
$method=|QModelIndex|indexAbove|const QModelIndex &

$prototype=QModelIndex indexBelow ( const QModelIndex & index ) const
$method=|QModelIndex|indexBelow|const QModelIndex &

$prototypeV2=bool isAnimated() const

$prototype=bool isColumnHidden ( int column ) const
$method=|bool|isColumnHidden|int

$prototype=bool isExpanded ( const QModelIndex & index ) const
$method=|bool|isExpanded|const QModelIndex &

$prototype=bool isFirstColumnSpanned ( int row, const QModelIndex & parent ) const
$method=|bool|isFirstColumnSpanned|int,const QModelIndex &

$prototypeV2=bool isHeaderHidden() const

$prototype=bool isRowHidden ( int row, const QModelIndex & parent ) const
$method=|bool|isRowHidden|int,const QModelIndex &

$prototypeV2=bool isSortingEnabled() const

$prototypeV2=bool itemsExpandable() const

$prototypeV2=bool rootIsDecorated() const

$prototype=void setAllColumnsShowFocus ( bool enable )
$method=|void|setAllColumnsShowFocus|bool

$prototype=void setAnimated ( bool enable )
$method=|void|setAnimated|bool

$prototype=void setAutoExpandDelay ( int delay )
$method=|void|setAutoExpandDelay|int

$prototype=void setColumnHidden ( int column, bool hide )
$method=|void|setColumnHidden|int,bool

$prototype=void setColumnWidth ( int column, int width )
$method=|void|setColumnWidth|int,int

$prototype=void setExpanded ( const QModelIndex & index, bool expanded )
$method=|void|setExpanded|const QModelIndex &,bool

$prototype=void setExpandsOnDoubleClick ( bool enable )
$method=|void|setExpandsOnDoubleClick|bool

$prototype=void setFirstColumnSpanned ( int row, const QModelIndex & parent, bool span )
$method=|void|setFirstColumnSpanned|int,const QModelIndex &,bool

$prototype=void setHeader ( QHeaderView * header )
$method=|void|setHeader|QHeaderView *

$prototype=void setHeaderHidden ( bool hide )
$method=|void|setHeaderHidden|bool

$prototype=void setIndentation ( int i )
$method=|void|setIndentation|int

$prototype=void setItemsExpandable ( bool enable )
$method=|void|setItemsExpandable|bool

$prototype=void setRootIsDecorated ( bool show )
$method=|void|setRootIsDecorated|bool

$prototype=void setRowHidden ( int row, const QModelIndex & parent, bool hide )
$method=|void|setRowHidden|int,const QModelIndex &,bool

$prototype=void setSortingEnabled ( bool enable )
$method=|void|setSortingEnabled|bool

$prototype=void setUniformRowHeights ( bool uniform )
$method=|void|setUniformRowHeights|bool

$prototype=void setWordWrap ( bool on )
$method=|void|setWordWrap|bool

$prototype=void sortByColumn ( int column, Qt::SortOrder order )
$method=|void|sortByColumn|int,Qt::SortOrder

$prototypeV2=bool uniformRowHeights() const

$prototypeV2=bool wordWrap() const

$prototype=virtual void dataChanged ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
$virtualMethod=|void|dataChanged|const QModelIndex &,const QModelIndex &

$prototype=virtual QModelIndex indexAt ( const QPoint & point ) const
$virtualMethod=|QModelIndex|indexAt|const QPoint &

$prototype=virtual void keyboardSearch ( const QString & search )
$virtualMethod=|void|keyboardSearch|const QString &

$prototypeV2=virtual void reset()

$prototype=virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
$virtualMethod=|void|scrollTo|const QModelIndex &,QTreeView::ScrollHint=QTreeView::EnsureVisible

$prototypeV2=virtual void selectAll()

$prototype=virtual void setModel ( QAbstractItemModel * model )
$virtualMethod=|void|setModel|QAbstractItemModel *

$prototype=virtual void setRootIndex ( const QModelIndex & index )
$virtualMethod=|void|setRootIndex|const QModelIndex &

$prototype=virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
$virtualMethod=|void|setSelectionModel|QItemSelectionModel *

$prototype=virtual QRect visualRect ( const QModelIndex & index ) const
$virtualMethod=|QRect|visualRect|const QModelIndex &

$prototype=void collapse ( const QModelIndex & index )
$method=|void|collapse|const QModelIndex &

$prototypeV2=void collapseAll()

$prototype=void expand ( const QModelIndex & index )
$method=|void|expand|const QModelIndex &

$prototypeV2=void expandAll()

$prototype=void expandToDepth ( int depth )
$method=|void|expandToDepth|int

$prototype=void hideColumn ( int column )
$method=|void|hideColumn|int

$prototype=void resizeColumnToContents ( int column )
$method=|void|resizeColumnToContents|int

$prototype=void showColumn ( int column )
$method=|void|showColumn|int

%%
%% SIGNALS
%%

$prototype=void collapsed( const QModelIndex & index )
$signalMethod=|void|collapsed|const QModelIndex &

$prototype=void expanded( const QModelIndex & index )
$signalMethod=|void|expanded|const QModelIndex &

#pragma ENDDUMP
