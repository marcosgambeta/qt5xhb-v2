%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtHelp

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

$deleteMethod

$prototypeV2=QHelpContentItem * contentItemAt( const QModelIndex & index ) const

$prototypeV2=void createContents( const QString & customFilterName )

$prototypeV2=bool isCreatingContents() const

$prototypeV2=virtual int columnCount( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=virtual QVariant data( const QModelIndex & index, int role ) const

$prototypeV2=virtual QModelIndex index( int row, int column, const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=virtual QModelIndex parent( const QModelIndex & index ) const

$prototypeV2=virtual int rowCount( const QModelIndex & parent = QModelIndex() ) const

%%
%% SIGNALS
%%

$prototype=void contentsCreated()
$signalMethod=|void|contentsCreated|

$prototype=void contentsCreationStarted()
$signalMethod=|void|contentsCreationStarted|

#pragma ENDDUMP
