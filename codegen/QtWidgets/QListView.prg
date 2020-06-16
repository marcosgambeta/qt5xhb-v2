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

$prototype=QListView ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototypeV2=int batchSize() const

$prototypeV2=void clearPropertyFlags()

$prototypeV2=QListView::Flow flow() const

$prototypeV2=QSize gridSize() const

$prototype=bool isRowHidden ( int row ) const
$method=|bool|isRowHidden|int

$prototypeV2=bool isSelectionRectVisible() const

$prototypeV2=bool isWrapping() const

$prototypeV2=QListView::LayoutMode layoutMode() const

$prototypeV2=int modelColumn() const

$prototypeV2=QListView::Movement movement() const

$prototypeV2=QListView::ResizeMode resizeMode() const

$prototype=void setBatchSize ( int batchSize )
$method=|void|setBatchSize|int

$prototype=void setFlow ( Flow flow )
$method=|void|setFlow|QListView::Flow

$prototype=void setGridSize ( const QSize & size )
$method=|void|setGridSize|const QSize &

$prototype=void setLayoutMode ( LayoutMode mode )
$method=|void|setLayoutMode|QListView::LayoutMode

$prototype=void setModelColumn ( int column )
$method=|void|setModelColumn|int

$prototype=void setMovement ( Movement movement )
$method=|void|setMovement|QListView::Movement

$prototype=void setResizeMode ( ResizeMode mode )
$method=|void|setResizeMode|QListView::ResizeMode

$prototype=void setRowHidden ( int row, bool hide )
$method=|void|setRowHidden|int,bool

$prototype=void setSelectionRectVisible ( bool show )
$method=|void|setSelectionRectVisible|bool

$prototype=void setSpacing ( int space )
$method=|void|setSpacing|int

$prototype=void setUniformItemSizes ( bool enable )
$method=|void|setUniformItemSizes|bool

$prototype=void setViewMode ( ViewMode mode )
$method=|void|setViewMode|QListView::ViewMode

$prototype=void setWordWrap ( bool on )
$method=|void|setWordWrap|bool

$prototype=void setWrapping ( bool enable )
$method=|void|setWrapping|bool

$prototypeV2=int spacing() const

$prototypeV2=bool uniformItemSizes() const

$prototypeV2=QListView::ViewMode viewMode() const

$prototypeV2=bool wordWrap() const

$prototype=virtual QModelIndex indexAt ( const QPoint & p ) const
$virtualMethod=|QModelIndex|indexAt|const QPoint &

$prototype=virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
$virtualMethod=|void|scrollTo|const QModelIndex &,QListView::ScrollHint=QListView::EnsureVisible

$prototype=virtual QRect visualRect ( const QModelIndex & index ) const
$virtualMethod=|QRect|visualRect|const QModelIndex &

%%
%% SIGNALS
%%

$prototype=void indexesMoved( const QModelIndexList & indexes )
$signalMethod=|void|indexesMoved|const QModelIndexList &

#pragma ENDDUMP
