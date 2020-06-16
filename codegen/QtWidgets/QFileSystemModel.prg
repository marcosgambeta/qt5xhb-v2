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

$beginClassFrom=QAbstractItemModel

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDateTime>
#include <QtCore/QMimeData>

$prototype=explicit QFileSystemModel(QObject * parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=QIcon fileIcon ( const QModelIndex & index ) const
$method=|QIcon|fileIcon|const QModelIndex &

$prototype=QFileInfo fileInfo ( const QModelIndex & index ) const
$method=|QFileInfo|fileInfo|const QModelIndex &

$prototype=QString fileName ( const QModelIndex & index ) const
$method=|QString|fileName|const QModelIndex &

$prototype=QString filePath ( const QModelIndex & index ) const
$method=|QString|filePath|const QModelIndex &

$prototypeV2=QDir::Filters filter() const

$prototype=void setFilter ( QDir::Filters filters )
$method=|void|setFilter|QDir::Filters

$prototypeV2=QFileIconProvider * iconProvider() const

$prototype=void setIconProvider ( QFileIconProvider * provider )
$method=|void|setIconProvider|QFileIconProvider *

$prototype=QModelIndex index ( const QString & path, int column = 0 ) const
$internalMethod=|QModelIndex|index,index1|const QString &,int=0

$prototype=QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
$internalMethod=|QModelIndex|index,index2|int,int,const QModelIndex &=QModelIndex()

/*
[1]QModelIndex index ( const QString & path, int column = 0 ) const
[2]QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/

HB_FUNC_STATIC( QFILESYSTEMMODEL_INDEX )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QFileSystemModel_index1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
  {
    QFileSystemModel_index2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=index

$prototype=bool isDir ( const QModelIndex & index ) const
$method=|bool|isDir|const QModelIndex &

$prototypeV2=bool isReadOnly() const

$prototype=void setReadOnly ( bool enable )
$method=|void|setReadOnly|bool

$prototype=QDateTime lastModified ( const QModelIndex & index ) const
$method=|QDateTime|lastModified|const QModelIndex &

$prototype=QModelIndex mkdir ( const QModelIndex & parent, const QString & name )
$method=|QModelIndex|mkdir|const QModelIndex &,const QString &

$prototype=QVariant myComputer ( int role = Qt::DisplayRole ) const
$method=|QVariant|myComputer|int=Qt::DisplayRole

$prototypeV2=bool nameFilterDisables() const

$prototype=void setNameFilterDisables ( bool enable )
$method=|void|setNameFilterDisables|bool

$prototypeV2=QStringList nameFilters() const

$prototype=void setNameFilters ( const QStringList & filters )
$method=|void|setNameFilters|const QStringList &

$prototype=QFile::Permissions permissions ( const QModelIndex & index ) const
$method=|QFile::Permissions|permissions|const QModelIndex &

$prototype=bool remove ( const QModelIndex & index ) const
$method=|bool|remove|const QModelIndex &

$prototypeV2=bool resolveSymlinks() const

$prototype=void setResolveSymlinks ( bool enable )
$method=|void|setResolveSymlinks|bool

$prototype=bool rmdir ( const QModelIndex & index ) const
$method=|bool|rmdir|const QModelIndex &

$prototypeV2=QDir rootDirectory() const

$prototypeV2=QString rootPath() const

$prototype=QModelIndex setRootPath ( const QString & newPath )
$method=|QModelIndex|setRootPath|const QString &

$prototype=qint64 size ( const QModelIndex & index ) const
$method=|qint64|size|const QModelIndex &

$prototype=QString type ( const QModelIndex & index ) const
$method=|QString|type|const QModelIndex &

$prototype=bool canFetchMore ( const QModelIndex & parent ) const
$method=|bool|canFetchMore|const QModelIndex &

$prototype=int columnCount ( const QModelIndex & parent = QModelIndex() ) const
$method=|int|columnCount|const QModelIndex &=QModelIndex()

$prototype=QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
$method=|QVariant|data|const QModelIndex &,int=Qt::DisplayRole

$prototype=bool setData ( const QModelIndex & idx, const QVariant & value, int role = Qt::EditRole )
$method=|bool|setData|const QModelIndex &,const QVariant &,int=Qt::EditRole

$prototype=bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
$method=|bool|dropMimeData|const QMimeData *,Qt::DropAction,int,int,const QModelIndex &

$prototype=void fetchMore ( const QModelIndex & parent )
$method=|void|fetchMore|const QModelIndex &

$prototype=Qt::ItemFlags flags ( const QModelIndex & index ) const
$method=|Qt::ItemFlags|flags|const QModelIndex &

$prototype=bool hasChildren ( const QModelIndex & parent = QModelIndex() ) const
$method=|bool|hasChildren|const QModelIndex &=QModelIndex()

$prototype=QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
$method=|QVariant|headerData|int,Qt::Orientation,int=Qt::DisplayRole

$prototype=QMimeData * mimeData ( const QModelIndexList & indexes ) const
$method=|QMimeData *|mimeData|const QModelIndexList &

$prototypeV2=QStringList mimeTypes() const

$prototype=QModelIndex parent ( const QModelIndex & index ) const
$method=|QModelIndex|parent|const QModelIndex &

$prototype=int rowCount ( const QModelIndex & parent = QModelIndex() ) const
$method=|int|rowCount|const QModelIndex &=QModelIndex()

$prototype=void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
$method=|void|sort|int,Qt::SortOrder=Qt::AscendingOrder

$prototypeV2=Qt::DropActions supportedDropActions() const

%%
%% SIGNALS
%%

$prototype=void directoryLoaded( const QString & path )
$signalMethod=|void|directoryLoaded|const QString &

$prototype=void fileRenamed( const QString & path, const QString & oldName, const QString & newName )
$signalMethod=|void|fileRenamed|const QString &,const QString &,const QString &

$prototype=void rootPathChanged( const QString & newPath )
$signalMethod=|void|rootPathChanged|const QString &

#pragma ENDDUMP
