%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore
$added=5,1,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QLockFile(const QString &fileName)
$constructor=|new|const QString &

$deleteMethod

$prototype=bool lock()
$method=|bool|lock|

$prototype=bool tryLock(int timeout = 0)
$method=|bool|tryLock|int=0

$prototype=void unlock()
$method=|void|unlock|

$prototype=void setStaleLockTime(int)
$method=|void|setStaleLockTime|int

$prototype=int staleLockTime() const
$method=|int|staleLockTime|

$prototype=bool isLocked() const
$method=|bool|isLocked|

$prototype=bool getLockInfo(qint64 *pid, QString *hostname, QString *appname) const
%% TODO: revisar implementacao do metodo e corrigir(?)
%% $method=|bool|getLockInfo|qint64 *,QString *,QString *

$prototype=bool removeStaleLockFile()
$method=|bool|removeStaleLockFile|

$extraMethods

#pragma ENDDUMP
