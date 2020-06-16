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

$prototype=QColumnView ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototype=QList<int> columnWidths () const
$method=|QList<int>|columnWidths|

$prototypeV2=QWidget * previewWidget() const

$prototypeV2=bool resizeGripsVisible() const

$prototype=void setColumnWidths ( const QList<int> & list )
$method=|void|setColumnWidths|const QList<int> &

$prototype=void setPreviewWidget ( QWidget * widget )
$method=|void|setPreviewWidget|QWidget *

$prototype=void setResizeGripsVisible ( bool visible )
$method=|void|setResizeGripsVisible|bool

$prototype=virtual QModelIndex indexAt ( const QPoint & point ) const
$virtualMethod=|QModelIndex|indexAt|const QPoint &

$prototype=virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
$virtualMethod=|void|scrollTo|const QModelIndex &,QColumnView::ScrollHint=QColumnView::EnsureVisible

$prototypeV2=virtual void selectAll()

$prototype=virtual void setModel ( QAbstractItemModel * model )
$virtualMethod=|void|setModel|QAbstractItemModel *

$prototype=virtual void setRootIndex ( const QModelIndex & index )
$virtualMethod=|void|setRootIndex|const QModelIndex &

$prototype=virtual void setSelectionModel ( QItemSelectionModel * newSelectionModel )
$virtualMethod=|void|setSelectionModel|QItemSelectionModel *

$prototypeV2=virtual QSize sizeHint() const

$prototype=virtual QRect visualRect ( const QModelIndex & index ) const
$virtualMethod=|QRect|visualRect|const QModelIndex &

%%
%% SIGNALS
%%

$prototype=void updatePreviewWidget( const QModelIndex & index )
$signalMethod=|void|updatePreviewWidget|const QModelIndex &

#pragma ENDDUMP
