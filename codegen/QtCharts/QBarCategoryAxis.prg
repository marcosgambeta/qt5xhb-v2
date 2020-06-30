%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractAxis

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QBarCategoryAxis(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=QBarCategoryAxis(QBarCategoryAxisPrivate &d, QObject *parent = nullptr) [protected]

$prototype=~QBarCategoryAxis()
$deleteMethod

%%
%% Q_PROPERTY(QStringList categories READ categories WRITE setCategories NOTIFY categoriesChanged)
%%

$prototypeV2=QStringList categories()

$prototypeV2=void setCategories( const QStringList & categories )

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototypeV2=int count() const

%%
%% Q_PROPERTY(QString min READ min WRITE setMin NOTIFY minChanged)
%%

$prototypeV2=QString min() const

$prototypeV2=void setMin( const QString & minCategory )

%%
%% Q_PROPERTY(QString max READ max WRITE setMax NOTIFY maxChanged)
%%

$prototypeV2=QString max() const

$prototypeV2=void setMax( const QString & maxCategory )

%%
%%
%%

$prototypeV2=QAbstractAxis::AxisType type() const

$prototype=void append(const QStringList &categories)
$internalMethod=|void|append,append1|const QStringList &

$prototype=void append(const QString &category)
$internalMethod=|void|append,append2|const QString &

/*
[1]void append(const QStringList &categories)
[2]void append(const QString &category)
*/

HB_FUNC_STATIC( QBARCATEGORYAXIS_APPEND )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBarCategoryAxis_append1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QBarCategoryAxis_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototypeV2=void remove( const QString & category )

$prototypeV2=void insert( int index, const QString & category )

$prototypeV2=void replace( const QString & oldCategory, const QString & newCategory )

$prototypeV2=Q_INVOKABLE void clear()

$prototypeV2=QString at( int index ) const

$prototypeV2=void setRange( const QString & minCategory, const QString & maxCategory )

%%
%% SIGNALS
%%

$prototype=void categoriesChanged()
$signalMethod=|void|categoriesChanged|

$prototype=void countChanged()
$signalMethod=|void|countChanged|

$prototype=void maxChanged( const QString & max )
$signalMethod=|void|maxChanged|const QString &

$prototype=void minChanged( const QString & min )
$signalMethod=|void|minChanged|const QString &

$prototype=void rangeChanged( const QString & min, const QString & max )
$signalMethod=|void|rangeChanged|const QString &,const QString &

#pragma ENDDUMP
