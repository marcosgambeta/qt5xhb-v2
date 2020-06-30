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

$beginClassFrom=QObject,QAudioSystemFactoryInterface

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAudioSystemPlugin(QObject *parent = nullptr) (abstract)
%% $constructor=|new|QObject *=nullptr

$prototype=~QAudioSystemPlugin()
$deleteMethod

%% TODO: is virtual ?

$prototypeV2=virtual QList<QByteArray> availableDevices( QAudio::Mode ) const override = 0

$prototypeV2=virtual QAbstractAudioInput * createInput( const QByteArray & device ) override = 0

$prototypeV2=virtual QAbstractAudioOutput * createOutput( const QByteArray & device ) override = 0

$prototypeV2=virtual QAbstractAudioDeviceInfo * createDeviceInfo( const QByteArray & device, QAudio::Mode mode ) override = 0

#pragma ENDDUMP
