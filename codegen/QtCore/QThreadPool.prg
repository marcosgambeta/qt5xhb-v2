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

$prototype=void start(QRunnable *runnable, int priority = 0)
$method=|void|start|QRunnable *,int=0

$prototype=void QThreadPool::start(std::function<void ()> functionToRun, int priority = 0)
%% TODO: Qt 5.15

$prototype=bool tryStart(QRunnable *runnable)
$method=|bool|tryStart|QRunnable *

$prototype=bool QThreadPool::tryStart(std::function<void ()> functionToRun)
%% TODO: Qt 5.15

$prototypeV2=int expiryTimeout() const

$prototype=void setExpiryTimeout(int expiryTimeout)
$method=|void|setExpiryTimeout|int

$prototypeV2=int maxThreadCount() const

$prototype=void setMaxThreadCount(int maxThreadCount)
$method=|void|setMaxThreadCount|int

$prototypeV2=int activeThreadCount() const

$prototypeV2=void reserveThread()

$prototypeV2=void releaseThread()

$prototype=bool waitForDone(int msecs = -1)
$method=|bool|waitForDone|int=-1

$prototype=void clear()
$method=5,2,0|void|clear|

$prototypeV2=static QThreadPool * globalInstance()

$prototype=bool tryTake(QRunnable *runnable)
$method=5,9,0|bool|tryTake|QRunnable *

$prototype=uint stackSize() const
$method=5,10,0|uint|stackSize|

$prototype=void setStackSize(uint stackSize)
$method=5,10,0|void|setStackSize|uint

#pragma ENDDUMP
