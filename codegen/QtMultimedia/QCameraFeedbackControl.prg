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

$beginClassFrom=QMediaControl

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraFeedbackControl(QObject *parent = nullptr) [protected]

$prototype=~QCameraFeedbackControl()
$deleteMethod

$prototypeV2=virtual bool isEventFeedbackEnabled( QCameraFeedbackControl::EventType event ) const = 0

$prototypeV2=virtual bool isEventFeedbackLocked( QCameraFeedbackControl::EventType event ) const = 0

$prototypeV2=virtual void resetEventFeedback( QCameraFeedbackControl::EventType event ) = 0

$prototypeV2=virtual bool setEventFeedbackEnabled( QCameraFeedbackControl::EventType event, bool enabled ) = 0

$prototypeV2=virtual bool setEventFeedbackSound( QCameraFeedbackControl::EventType event, const QString & filePath ) = 0

#pragma ENDDUMP
