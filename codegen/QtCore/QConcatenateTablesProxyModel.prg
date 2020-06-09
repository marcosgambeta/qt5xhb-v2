%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore
$added=5,13,0

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
#include <QtCore/QSize>

$prototype=explicit QConcatenateTablesProxyModel(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QConcatenateTablesProxyModel()
$deleteMethod

$prototype=Q_SCRIPTABLE void addSourceModel(QAbstractItemModel *sourceModel)
$method=|void|addSourceModel|QAbstractItemModel *

$prototype=Q_SCRIPTABLE void removeSourceModel(QAbstractItemModel *sourceModel)
$method=|void|removeSourceModel|QAbstractItemModel *

$prototype=QModelIndex mapFromSource(const QModelIndex &sourceIndex) const
$method=|QModelIndex|mapFromSource|const QModelIndex &

$prototype=QModelIndex mapToSource(const QModelIndex &proxyIndex) const
$method=|QModelIndex|mapToSource|const QModelIndex &

$prototype=QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole) override
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=QMap<int, QVariant> itemData(const QModelIndex &proxyIndex) const override
%% TODO:

$prototype=bool setItemData(const QModelIndex &index, const QMap<int, QVariant> &roles) override
%% TODO:

$prototype=Qt::ItemFlags flags(const QModelIndex &index) const override
$method=|Qt::ItemFlags|flags|const QModelIndex &

$prototype=QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const override
$method=|QModelIndex|index|int,int,const QModelIndex &=QModelIndex()

$prototype=QModelIndex parent(const QModelIndex &index) const override
$method=|QModelIndex|parent|const QModelIndex &

$prototype=int rowCount(const QModelIndex &parent = QModelIndex()) const override
$method=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const override
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

$prototype=int columnCount(const QModelIndex &parent = QModelIndex()) const override
$method=|int|columnCount|const QModelIndex &=QModelIndex()

$prototypeV2=QStringList mimeTypes() const override

$prototype=QMimeData *mimeData(const QModelIndexList &indexes) const override
$method=|QMimeData *|mimeData|const QModelIndexList &

$prototype=bool canDropMimeData(const QMimeData *data, Qt::DropAction action, int row, int column, const QModelIndex &parent) const override
$method=|bool|canDropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

$prototype=bool dropMimeData(const QMimeData *data, Qt::DropAction action, int row, int column, const QModelIndex &parent) override
$method=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

$prototype=QList<QAbstractItemModel *> sourceModels() const
$method=5,15,0|QList<QAbstractItemModel *>|sourceModels|

$prototype=QSize span(const QModelIndex &index) const override
$method=|QSize|span|const QModelIndex &

#pragma ENDDUMP
