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

$beginClassFrom=QIODevice

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDateTime>

$deleteMethod

$prototypeV2=QFileDevice::FileError error() const

$prototypeV2=virtual QString fileName() const

$prototypeV2=bool flush()

$prototypeV2=int handle() const

$prototypeV2=virtual QFileDevice::Permissions permissions() const

$prototypeV2=virtual bool resize( qint64 sz )

$prototypeV2=virtual bool setPermissions( QFileDevice::Permissions permissions )

$prototypeV2=void unsetError()

$prototypeV2=virtual bool atEnd() const

$prototypeV2=virtual void close()

$prototypeV2=virtual bool isSequential() const

$prototypeV2=virtual qint64 pos() const

$prototypeV2=virtual bool seek( qint64 pos )

$prototypeV2=virtual qint64 size() const

$prototypeV2=5,10,0|QDateTime fileTime( QFileDevice::FileTime time ) const

$prototypeV2=5,10,0|bool setFileTime( const QDateTime & newDate, QFileDevice::FileTime fileTime )

#pragma ENDDUMP
