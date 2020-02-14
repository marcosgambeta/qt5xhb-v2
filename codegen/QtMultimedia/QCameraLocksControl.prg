%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraLocksControl(QObject *parent = nullptr) [protected]

$prototype=~QCameraLocksControl()
$deleteMethod

$prototype=virtual QCamera::LockStatus lockStatus(QCamera::LockType lock) const = 0
$virtualMethod=|QCamera::LockStatus|lockStatus|QCamera::LockType

$prototype=virtual void searchAndLock(QCamera::LockTypes locks) = 0
$virtualMethod=|void|searchAndLock|QCamera::LockTypes

$prototype=virtual QCamera::LockTypes supportedLocks() const = 0
$virtualMethod=|QCamera::LockTypes|supportedLocks|

$prototype=virtual void unlock(QCamera::LockTypes locks) = 0
$virtualMethod=|void|unlock|QCamera::LockTypes

%%
%% SIGNALS
%%

$prototype=void lockStatusChanged( QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason )
$signalMethod=|void|lockStatusChanged|QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason

#pragma ENDDUMP
