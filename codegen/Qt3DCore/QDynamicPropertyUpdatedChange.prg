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

$beginClassFrom=QPropertyUpdatedChangeBase

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QDynamicPropertyUpdatedChange(QNodeId subjectId)
$constructor=|new|QNodeId

$prototype=QDynamicPropertyUpdatedChange(QDynamicPropertyUpdatedChangePrivate &dd, QNodeId subjectId) [protected]

$prototype=~QDynamicPropertyUpdatedChange()
$deleteMethod

$prototypeV2=QByteArray propertyName() const

$prototypeV2=void setPropertyName( const QByteArray & name )

$prototypeV2=QVariant value() const

$prototypeV2=void setValue( const QVariant & value )

#pragma ENDDUMP
