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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QThreadPool(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=void start( QRunnable * runnable, int priority = 0 )

$prototype=void QThreadPool::start(std::function<void ()> functionToRun, int priority = 0)
%% TODO: Qt 5.15

$prototypeV2=bool tryStart( QRunnable * runnable )

$prototype=bool QThreadPool::tryStart(std::function<void ()> functionToRun)
%% TODO: Qt 5.15

$prototypeV2=int expiryTimeout() const

$prototypeV2=void setExpiryTimeout( int expiryTimeout )

$prototypeV2=int maxThreadCount() const

$prototypeV2=void setMaxThreadCount( int maxThreadCount )

$prototypeV2=int activeThreadCount() const

$prototypeV2=void reserveThread()

$prototypeV2=void releaseThread()

$prototypeV2=bool waitForDone( int msecs = -1 )

$prototypeV2=5,2,0|void clear()

$prototypeV2=static QThreadPool * globalInstance()

$prototypeV2=5,9,0|bool tryTake( QRunnable * runnable )

$prototypeV2=5,10,0|uint stackSize() const

$prototypeV2=5,10,0|void setStackSize( uint stackSize )

#pragma ENDDUMP
