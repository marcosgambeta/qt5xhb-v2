%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototypeV2=bool lock()

$prototypeV2=bool tryLock( int timeout = 0 )

$prototypeV2=void unlock()

$prototypeV2=void setStaleLockTime( int )

$prototypeV2=int staleLockTime() const

$prototypeV2=bool isLocked() const

$prototypeV2=bool getLockInfo( qint64 * pid, QString * hostname, QString * appname ) const
%% TODO: revisar implementacao do metodo e corrigir(?)

$prototypeV2=bool removeStaleLockFile()

$extraMethods

#pragma ENDDUMP
