%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractProxyModel

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QItemSelection>
#include <QtCore/QMimeData>
#include <QtCore/QSize>

$prototype=explicit QSortFilterProxyModel(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QSortFilterProxyModel()
$deleteMethod

%%
%% Q_PROPERTY(QRegExp filterRegExp READ filterRegExp WRITE setFilterRegExp)
%%

$prototypeV2=QRegExp filterRegExp() const

$prototype=void setFilterRegExp(const QRegExp &regExp) [slot]
$internalMethod=|void|setFilterRegExp,setFilterRegExp1|const QRegExp &

$prototype=void setFilterRegExp(const QString &pattern) [slot]
$internalMethod=|void|setFilterRegExp,setFilterRegExp2|const QString &

/*
[1]void setFilterRegExp(const QRegExp &regExp)
[2]void setFilterRegExp(const QString &pattern)
*/

HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETFILTERREGEXP )
{
  if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    QSortFilterProxyModel_setFilterRegExp1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSortFilterProxyModel_setFilterRegExp2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setFilterRegExp

%%
%% #if QT_CONFIG(regularexpression)
%% Q_PROPERTY(QRegularExpression filterRegularExpression READ filterRegularExpression WRITE setFilterRegularExpression)
%% #endif

$prototype=QRegularExpression filterRegularExpression() const
$method=5,12,0|QRegularExpression|filterRegularExpression||#if QT_CONFIG(regularexpression)

$prototype=void setFilterRegularExpression(const QString &pattern) [slot]
$internalMethod=5,12,0|void|setFilterRegularExpression,setFilterRegularExpression1|const QString &|#if QT_CONFIG(regularexpression)

$prototype=void setFilterRegularExpression(const QRegularExpression &regularExpression) [slot]
$internalMethod=5,12,0|void|setFilterRegularExpression,setFilterRegularExpression2|const QRegularExpression &|#if QT_CONFIG(regularexpression)

/*
[1]void setFilterRegularExpression(const QString &pattern);
[2]void setFilterRegularExpression(const QRegularExpression &regularExpression);
*/

HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_SETFILTERREGULAREXPRESSION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSortFilterProxyModel_setFilterRegularExpression1();
  }
  else if( ISNUMPAR(1) && ISQREGULAREXPRESSION(1) )
  {
    QSortFilterProxyModel_setFilterRegularExpression2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setFilterRegularExpression

%%
%% Q_PROPERTY(int filterKeyColumn READ filterKeyColumn WRITE setFilterKeyColumn)
%%

$prototypeV2=int filterKeyColumn() const

$prototypeV2=void setFilterKeyColumn( int column )

%%
%% Q_PROPERTY(bool dynamicSortFilter READ dynamicSortFilter WRITE setDynamicSortFilter)
%%

$prototypeV2=bool dynamicSortFilter() const

$prototypeV2=void setDynamicSortFilter( bool enable )

%%
%% Q_PROPERTY(Qt::CaseSensitivity filterCaseSensitivity READ filterCaseSensitivity WRITE setFilterCaseSensitivity)
%%

$prototypeV2=Qt::CaseSensitivity filterCaseSensitivity() const

$prototypeV2=void setFilterCaseSensitivity( Qt::CaseSensitivity cs )

%%
%% Q_PROPERTY(Qt::CaseSensitivity sortCaseSensitivity READ sortCaseSensitivity WRITE setSortCaseSensitivity)
%%

$prototypeV2=Qt::CaseSensitivity sortCaseSensitivity() const

$prototypeV2=void setSortCaseSensitivity( Qt::CaseSensitivity cs )

%%
%% Q_PROPERTY(bool isSortLocaleAware READ isSortLocaleAware WRITE setSortLocaleAware)
%%

$prototypeV2=bool isSortLocaleAware() const

$prototypeV2=void setSortLocaleAware( bool on )

%%
%% Q_PROPERTY(int sortRole READ sortRole WRITE setSortRole)
%%

$prototypeV2=int sortRole() const

$prototypeV2=void setSortRole( int role )

%%
%% Q_PROPERTY(int filterRole READ filterRole WRITE setFilterRole)
%%

$prototypeV2=int filterRole() const

$prototypeV2=void setFilterRole( int role )

%%
%% Q_PROPERTY(bool recursiveFilteringEnabled READ isRecursiveFilteringEnabled WRITE setRecursiveFilteringEnabled)
%%

$prototypeV2=5,10,0|bool isRecursiveFilteringEnabled() const

$prototypeV2=5,10,0|void setRecursiveFilteringEnabled( bool recursive )

%%
%%
%%

$prototypeV2=void setSourceModel( QAbstractItemModel * sourceModel )

$prototypeV2=QModelIndex mapToSource( const QModelIndex & proxyIndex ) const

$prototypeV2=QModelIndex mapFromSource( const QModelIndex & sourceIndex ) const

$prototypeV2=QItemSelection mapSelectionToSource( const QItemSelection & proxySelection ) const

$prototypeV2=QItemSelection mapSelectionFromSource( const QItemSelection & sourceSelection ) const

$prototypeV2=int sortColumn() const

$prototypeV2=Qt::SortOrder sortOrder() const

$prototypeV2=void setFilterWildcard( const QString & pattern ) [slot]

$prototypeV2=void setFilterFixedString( const QString & pattern ) [slot]

$prototypeV2=void clear() [slot]

$prototypeV2=void invalidate() [slot]

$prototype=QObject *parent() const
$internalMethod=|QObject *|parent,parent1|

$prototype=QModelIndex parent(const QModelIndex &child) const
$internalMethod=|QModelIndex|parent,parent2|const QModelIndex &

/*
[1]QObject *parent() const
[2]QModelIndex parent(const QModelIndex &child) const
*/

HB_FUNC_STATIC( QSORTFILTERPROXYMODEL_PARENT )
{
  if( ISNUMPAR(0) )
  {
    QSortFilterProxyModel_parent1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QSortFilterProxyModel_parent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=parent

$prototypeV2=QModelIndex index( int row, int column, const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=QModelIndex sibling( int row, int column, const QModelIndex & idx ) const

$prototypeV2=int rowCount( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=int columnCount( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=bool hasChildren( const QModelIndex & parent = QModelIndex() ) const

$prototypeV2=QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const

$prototypeV2=bool setData( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )

$prototypeV2=QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const

$prototypeV2=bool setHeaderData( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )

$prototypeV2=QMimeData * mimeData( const QModelIndexList & indexes ) const

$prototypeV2=bool dropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )

$prototypeV2=bool insertRows( int row, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=bool insertColumns( int column, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=bool removeRows( int row, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=bool removeColumns( int column, int count, const QModelIndex & parent = QModelIndex() )

$prototypeV2=void fetchMore( const QModelIndex & parent )

$prototypeV2=bool canFetchMore( const QModelIndex & parent ) const

$prototypeV2=Qt::ItemFlags flags( const QModelIndex & index ) const

$prototypeV2=QModelIndex buddy( const QModelIndex & index ) const

$prototypeV2=QModelIndexList match( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const

$prototypeV2=QSize span( const QModelIndex & index ) const

$prototypeV2=void sort( int column, Qt::SortOrder order = Qt::AscendingOrder )

$prototypeV2=QStringList mimeTypes() const

$prototypeV2=Qt::DropActions supportedDropActions() const

$prototype=virtual bool filterAcceptsRow(int source_row, const QModelIndex &source_parent) const [protected]

$prototype=virtual bool filterAcceptsColumn(int source_column, const QModelIndex &source_parent) const [protected]

$prototype=virtual bool lessThan(const QModelIndex &source_left, const QModelIndex &source_right) const [protected]

%% #if QT_DEPRECATED_SINCE(5, 11)
$prototype=QT_DEPRECATED_X("Use QSortFilterProxyModel::invalidateFilter") void filterChanged() [protected]
%% #endif

$prototype=void invalidateFilter() [protected]

#pragma ENDDUMP
