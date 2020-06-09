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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSystemSemaphore(const QString &key, int initialValue = 0, AccessMode mode = Open)
$constructor=|new|const QString &,int=0,QSystemSemaphore::AccessMode=QSystemSemaphore::Open

$deleteMethod

$prototype=void setKey(const QString &key, int initialValue = 0, AccessMode mode = Open)
$method=|void|setKey|const QString &,int=0,QSystemSemaphore::AccessMode=QSystemSemaphore::Open

$prototypeV2=QString key() const

$prototypeV2=bool acquire()

$prototype=bool release(int n = 1)
$method=|bool|release|int=1

$prototypeV2=QSystemSemaphore::SystemSemaphoreError error() const

$prototypeV2=QString errorString() const

$extraMethods

#pragma ENDDUMP
