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

$beginClassFrom=QAbstractSpinBox

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSpinBox ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototypeV2=QString cleanText() const

$prototypeV2=int maximum() const

$prototype=void setMaximum ( int max )
$method=|void|setMaximum|int

$prototypeV2=int minimum() const

$prototype=void setMinimum ( int min )
$method=|void|setMinimum|int

$prototypeV2=QString prefix() const

$prototype=void setPrefix ( const QString & prefix )
$method=|void|setPrefix|const QString &

$prototype=void setRange ( int min, int max )
$method=|void|setRange|int,int

$prototypeV2=int singleStep() const

$prototype=void setSingleStep ( int val )
$method=|void|setSingleStep|int

$prototypeV2=QString suffix() const

$prototype=void setSuffix ( const QString & suffix )
$method=|void|setSuffix|const QString &

$prototypeV2=int value() const

$prototype=void setValue ( int val )
$method=|void|setValue|int

$prototypeV2=int displayIntegerBase() const

$prototype=void setDisplayIntegerBase(int base)
$method=|void|setDisplayIntegerBase|int

%%
%% SIGNALS
%%

$prototype=void valueChanged( int value )
$signalMethod=|void|valueChanged,valueChanged1,QOverload<int>|int

$prototype=void valueChanged( const QString & text )
$signalMethod=|void|valueChanged,valueChanged2,QOverload<const QString &>|const QString &

#pragma ENDDUMP
