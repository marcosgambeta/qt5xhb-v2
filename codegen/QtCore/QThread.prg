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

$prototypeV2=void exit( int returnCode = 0 )

$prototypeV2=bool isFinished() const

$prototypeV2=bool isRunning() const

$prototypeV2=QThread::Priority priority() const

$prototypeV2=void setEventDispatcher( QAbstractEventDispatcher * eventDispatcher )

$prototypeV2=void setPriority( QThread::Priority priority )

$prototypeV2=void setStackSize( uint stackSize )

$prototypeV2=uint stackSize() const

$prototypeV2=virtual bool event( QEvent * event )

$prototypeV2=void quit()

$prototypeV2=void start( QThread::Priority priority = QThread::InheritPriority )

$prototypeV2=void terminate()

$prototypeV2=static QThread * currentThread()

$prototypeV2=static int idealThreadCount()

$prototypeV2=static void msleep( unsigned long msecs )

$prototypeV2=static void sleep( unsigned long secs )

$prototypeV2=static void usleep( unsigned long usecs )

$prototypeV2=static void yieldCurrentThread()

%%
%% SIGNALS
%%

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void started()
$signalMethod=|void|started|

#pragma ENDDUMP
