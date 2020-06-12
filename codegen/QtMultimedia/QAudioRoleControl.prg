%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia
$added=5,6,0

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

$prototype=explicit QAudioRoleControl(QObject *parent = nullptr) [protected]

$prototype=virtual ~QAudioRoleControl()
$deleteMethod

$prototypeV2=virtual QAudio::Role audioRole() const = 0

$prototype=virtual void setAudioRole(QAudio::Role role) = 0
$virtualMethod=|void|setAudioRole|QAudio::Role

$prototype=virtual QList<QAudio::Role> supportedAudioRoles() const = 0
$virtualMethod=|QList<QAudio::Role>|supportedAudioRoles|

%%
%% SIGNALS
%%

$prototype=void audioRoleChanged(QAudio::Role role)
$signalMethod=|void|audioRoleChanged|QAudio::Role

#pragma ENDDUMP
