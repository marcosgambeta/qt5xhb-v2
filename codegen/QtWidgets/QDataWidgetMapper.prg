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

#include <QtCore/QModelIndex>
#include <QtWidgets/QAbstractItemDelegate>

$prototype=QDataWidgetMapper ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=void addMapping ( QWidget * widget, int section )
$internalMethod=|void|addMapping,addMapping1|QWidget *,int

$prototype=void addMapping ( QWidget * widget, int section, const QByteArray & propertyName )
$internalMethod=|void|addMapping,addMapping2|QWidget *,int,const QByteArray &

/*
[1]void addMapping ( QWidget * widget, int section )
[2]void addMapping ( QWidget * widget, int section, const QByteArray & propertyName )
*/

HB_FUNC_STATIC( QDATAWIDGETMAPPER_ADDMAPPING )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QDataWidgetMapper_addMapping1();
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && ISNUM(2) && ISQBYTEARRAY(3) )
  {
    QDataWidgetMapper_addMapping2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addMapping

$prototypeV2=void clearMapping()

$prototypeV2=int currentIndex() const

$prototypeV2=QAbstractItemDelegate * itemDelegate() const

$prototype=QByteArray mappedPropertyName ( QWidget * widget ) const
$method=|QByteArray|mappedPropertyName|QWidget *

$prototype=int mappedSection ( QWidget * widget ) const
$method=|int|mappedSection|QWidget *

$prototype=QWidget * mappedWidgetAt ( int section ) const
$method=|QWidget *|mappedWidgetAt|int

$prototypeV2=QAbstractItemModel * model() const

$prototypeV2=Qt::Orientation orientation() const

$prototype=void removeMapping ( QWidget * widget )
$method=|void|removeMapping|QWidget *

$prototypeV2=QModelIndex rootIndex() const

$prototype=void setItemDelegate ( QAbstractItemDelegate * delegate )
$method=|void|setItemDelegate|QAbstractItemDelegate *

$prototype=void setModel ( QAbstractItemModel * model )
$method=|void|setModel|QAbstractItemModel *

$prototype=void setOrientation ( Qt::Orientation aOrientation )
$method=|void|setOrientation|Qt::Orientation

$prototype=void setRootIndex ( const QModelIndex & index )
$method=|void|setRootIndex|const QModelIndex &

$prototype=void setSubmitPolicy ( SubmitPolicy policy )
$method=|void|setSubmitPolicy|QDataWidgetMapper::SubmitPolicy

$prototypeV2=QDataWidgetMapper::SubmitPolicy submitPolicy() const

$prototypeV2=void revert()

$prototype=virtual void setCurrentIndex ( int index )
$virtualMethod=|void|setCurrentIndex|int

$prototype=void setCurrentModelIndex ( const QModelIndex & index )
$method=|void|setCurrentModelIndex|const QModelIndex &

$prototypeV2=bool submit()

$prototypeV2=void toFirst()

$prototypeV2=void toLast()

$prototypeV2=void toNext()

$prototypeV2=void toPrevious()

%%
%% SIGNALS
%%

$prototype=void currentIndexChanged( int index )
$signalMethod=|void|currentIndexChanged|int

#pragma ENDDUMP
