%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

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

$prototype=explicit QAspectEngine(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QAspectEngine()
$deleteMethod

$prototypeV2=void setRootEntity( QEntityPtr root )

$prototypeV2=QEntityPtr rootEntity() const

$prototypeV2=void registerAspect( QAbstractAspect * aspect )

$prototypeV2=void registerAspect( const QString & name )

$prototypeV2=void unregisterAspect( QAbstractAspect * aspect )

$prototypeV2=void unregisterAspect( const QString & name )

$prototypeV2=QVector<QAbstractAspect *> aspects() const

$prototypeV2=QVariant executeCommand( const QString & command )

#pragma ENDDUMP
