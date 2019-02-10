%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtVirtualKeyboard

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractListModel

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtVirtualKeyboard/QVirtualKeyboardAbstractInputMethod>

$prototype=explicit QVirtualKeyboardSelectionListModel(QObject *parent = nullptr) [private]
%% $constructor=|new|QObject *=nullptr

$prototype=~QVirtualKeyboardSelectionListModel()
$deleteMethod

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototype=int count() const
$method=|int|count|

%%
%%
%%

$prototype=void setDataSource(QVirtualKeyboardAbstractInputMethod *dataSource, Type type)
$method=|void|setDataSource|QVirtualKeyboardAbstractInputMethod *,QVirtualKeyboardSelectionListModel::Type

$prototype=QVirtualKeyboardAbstractInputMethod *dataSource() const
$method=|QVirtualKeyboardAbstractInputMethod *|dataSource|

$prototype=int rowCount(const QModelIndex &parent = QModelIndex()) const
$method=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=QHash<int,QByteArray> roleNames() const
%% TODO: $method=|QHash<int,QByteArray>|roleNames|

$prototype=Q_INVOKABLE void selectItem(int index)
$method=|void|selectItem|int

$prototype=Q_INVOKABLE void removeItem(int index)
$method=|void|removeItem|int

$prototype=Q_INVOKABLE QVariant dataAt(int index, Role role = Role::Display) const
%% TODO: $method=|QVariant|dataAt|int,Role=Role::Display

$prototype=void selectionListChanged(Type type) [protected] [slot]

$prototype=void selectionListActiveItemChanged(Type type, int index) [protected] [slot]

%%
%% SIGNALS
%%

$prototype=void countChanged()
$signalMethod=|void|countChanged|

$prototype=void activeItemChanged( int index )
$signalMethod=|void|activeItemChanged|int

$prototype=void itemSelected( int index )
$signalMethod=|void|itemSelected|int

#pragma ENDDUMP
