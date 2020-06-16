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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>
#include <QtWidgets/QAbstractItemView>

$prototype=QCompleter ( QObject * parent = nullptr )
$internalConstructor=|new1|QObject *=nullptr

$prototype=QCompleter ( QAbstractItemModel * model, QObject * parent = nullptr )
$internalConstructor=|new2|QAbstractItemModel *,QObject *=nullptr

$prototype=QCompleter ( const QStringList & list, QObject * parent = nullptr )
$internalConstructor=|new3|const QStringList &,QObject *=nullptr|#ifndef QT_NO_STRINGLISTMODEL

/*
[1]QCompleter ( QObject * parent = nullptr )
[2]QCompleter ( QAbstractItemModel * model, QObject * parent = nullptr )
[3]QCompleter ( const QStringList & list, QObject * parent = nullptr )
*/

HB_FUNC_STATIC( QCOMPLETER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QCompleter_new1();
  }
  else if( ISBETWEEN(1,2) && ISQABSTRACTITEMMODEL(1) && ISOPTQOBJECT(2) )
  {
    QCompleter_new2();
  }
#ifndef QT_NO_STRINGLISTMODEL
  else if( ISBETWEEN(1,2) && ISARRAY(1) && ISOPTQOBJECT(2) )
  {
    QCompleter_new3();
  }
#endif
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QCompleter()
$deleteMethod

$prototypeV2=Qt::CaseSensitivity caseSensitivity() const

$prototypeV2=int completionColumn() const

$prototypeV2=int completionCount() const

$prototypeV2=QCompleter::CompletionMode completionMode() const

$prototypeV2=QAbstractItemModel * completionModel() const

$prototypeV2=QString completionPrefix() const

$prototypeV2=int completionRole() const

$prototypeV2=QString currentCompletion() const

$prototypeV2=QModelIndex currentIndex() const

$prototypeV2=int currentRow() const

$prototypeV2=int maxVisibleItems() const

$prototypeV2=QAbstractItemModel * model() const

$prototypeV2=QCompleter::ModelSorting modelSorting() const

$prototype=virtual QString pathFromIndex ( const QModelIndex & index ) const
$virtualMethod=|QString|pathFromIndex|const QModelIndex &

$prototypeV2=QAbstractItemView * popup() const

$prototype=void setCaseSensitivity ( Qt::CaseSensitivity caseSensitivity )
$method=|void|setCaseSensitivity|Qt::CaseSensitivity

$prototype=void setCompletionColumn ( int column )
$method=|void|setCompletionColumn|int

$prototype=void setCompletionMode ( CompletionMode mode )
$method=|void|setCompletionMode|QCompleter::CompletionMode

$prototype=void setCompletionRole ( int role )
$method=|void|setCompletionRole|int

$prototype=bool setCurrentRow ( int row )
$method=|bool|setCurrentRow|int

$prototype=void setMaxVisibleItems ( int maxItems )
$method=|void|setMaxVisibleItems|int

$prototype=void setModel ( QAbstractItemModel * model )
$method=|void|setModel|QAbstractItemModel *

$prototype=void setModelSorting ( ModelSorting sorting )
$method=|void|setModelSorting|QCompleter::ModelSorting

$prototype=void setPopup ( QAbstractItemView * popup )
$method=|void|setPopup|QAbstractItemView *

$prototype=void setWidget ( QWidget * widget )
$method=|void|setWidget|QWidget *

$prototype=virtual QStringList splitPath ( const QString & path ) const
$virtualMethod=|QStringList|splitPath|const QString &

$prototypeV2=QWidget * widget() const

$prototypeV2=bool wrapAround() const

$prototype=void complete ( const QRect & rect = QRect() )
$method=|void|complete|const QRect &=QRect()

$prototype=void setCompletionPrefix ( const QString & prefix )
$method=|void|setCompletionPrefix|const QString &

$prototype=void setWrapAround ( bool wrap )
$method=|void|setWrapAround|bool

$prototype=void setFilterMode(Qt::MatchFlags filterMode)
$method=5,2,0|void|setFilterMode|Qt::MatchFlags

$prototype=Qt::MatchFlags filterMode() const
$method=5,2,0|Qt::MatchFlags|filterMode|

%%
%% SIGNALS
%%

$prototype=void activated( const QString & text )
$signalMethod=|void|activated,activated1,QOverload<const QString &>|const QString &

$prototype=void activated( const QModelIndex & index )
$signalMethod=|void|activated,activated2,QOverload<const QModelIndex &>|const QModelIndex &

$prototype=void highlighted( const QString & text )
$signalMethod=|void|highlighted,highlighted1,QOverload<const QString &>|const QString &

$prototype=void highlighted( const QModelIndex & index )
$signalMethod=|void|highlighted,highlighted2,QOverload<const QModelIndex &>|const QModelIndex &

#pragma ENDDUMP
