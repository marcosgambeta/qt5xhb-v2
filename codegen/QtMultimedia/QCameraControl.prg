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

$beginClassFrom=QMediaObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraControl(QObject *parent = nullptr) [protected]

$prototype=~QCameraControl()
$deleteMethod

$prototypeV2=virtual bool canChangeProperty( QCameraControl::PropertyChangeType changeType, QCamera::Status status ) const = 0

$prototypeV2=virtual QCamera::CaptureModes captureMode() const = 0

$prototypeV2=virtual bool isCaptureModeSupported( QCamera::CaptureModes mode ) const = 0

$prototypeV2=virtual void setCaptureMode( QCamera::CaptureModes mode ) = 0

$prototypeV2=virtual void setState( QCamera::State state ) = 0

$prototypeV2=virtual QCamera::State state() const = 0

$prototypeV2=virtual QCamera::Status status() const = 0

%%
%% SIGNALS
%%

$prototype=void captureModeChanged( QCamera::CaptureModes mode )
$signalMethod=|void|captureModeChanged|QCamera::CaptureModes

$prototype=void error( int error, const QString & errorString )
$signalMethod=|void|error|int,const QString &

$prototype=void stateChanged( QCamera::State state )
$signalMethod=|void|stateChanged|QCamera::State

$prototype=void statusChanged( QCamera::Status status )
$signalMethod=|void|statusChanged|QCamera::Status

#pragma ENDDUMP
