%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QInputEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QKeyEvent ( Type type, int key, Qt::KeyboardModifiers modifiers, const QString & text = QString(), bool autorep = false, ushort count = 1 )
$constructor=|new|QEvent::Type,int,Qt::KeyboardModifiers,const QString &=QString(),bool=false,ushort=1

$deleteMethod

$prototypeV2=int count() const

$prototypeV2=bool isAutoRepeat() const

$prototypeV2=int key() const

$prototypeV2=bool matches( QKeySequence::StandardKey key ) const

$prototypeV2=Qt::KeyboardModifiers modifiers() const

$prototypeV2=quint32 nativeModifiers() const

$prototypeV2=quint32 nativeScanCode() const

$prototypeV2=quint32 nativeVirtualKey() const

$prototypeV2=QString text() const

#pragma ENDDUMP
