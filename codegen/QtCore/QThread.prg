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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QAbstractEventDispatcher>

$prototype=QThread(QObject * parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=QAbstractEventDispatcher * eventDispatcher() const

$prototype=void exit(int returnCode = 0)
$method=|void|exit|int=0

$prototypeV2=bool isFinished() const

$prototypeV2=bool isRunning() const

$prototypeV2=QThread::Priority priority() const

$prototype=void setEventDispatcher(QAbstractEventDispatcher * eventDispatcher)
$method=|void|setEventDispatcher|QAbstractEventDispatcher *

$prototype=void setPriority(Priority priority)
$method=|void|setPriority|QThread::Priority

$prototype=void setStackSize(uint stackSize)
$method=|void|setStackSize|uint

$prototypeV2=uint stackSize() const

$prototype=virtual bool event(QEvent * event)
$virtualMethod=|bool|event|QEvent *

$prototypeV2=void quit()

$prototype=void start(Priority priority = InheritPriority)
$method=|void|start|QThread::Priority=QThread::InheritPriority

$prototypeV2=void terminate()

$prototypeV2=static QThread * currentThread()

$prototypeV2=static int idealThreadCount()

$prototype=static void msleep(unsigned long msecs)
$staticMethod=|void|msleep|unsigned long

$prototype=static void sleep(unsigned long secs)
$staticMethod=|void|sleep|unsigned long

$prototype=static void usleep(unsigned long usecs)
$staticMethod=|void|usleep|unsigned long

$prototypeV2=static void yieldCurrentThread()

%%
%% SIGNALS
%%

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void started()
$signalMethod=|void|started|

#pragma ENDDUMP
