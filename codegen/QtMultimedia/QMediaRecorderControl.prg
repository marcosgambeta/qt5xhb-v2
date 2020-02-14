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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QUrl>

$prototype=explicit QMediaRecorderControl(QObject *parent = nullptr) [protected]

$prototype=virtual ~QMediaRecorderControl()
$deleteMethod

$prototype=virtual void applySettings() = 0
$virtualMethod=|void|applySettings|

$prototype=virtual qint64 duration() const = 0
$virtualMethod=|qint64|duration|

$prototype=virtual bool isMuted() const = 0
$virtualMethod=|bool|isMuted|

$prototype=virtual QUrl outputLocation() const = 0
$virtualMethod=|QUrl|outputLocation|

$prototype=virtual bool setOutputLocation(const QUrl & location) = 0
$virtualMethod=|bool|setOutputLocation|const QUrl &

$prototype=virtual QMediaRecorder::State state() const = 0
$virtualMethod=|QMediaRecorder::State|state|

$prototype=virtual QMediaRecorder::Status status() const = 0
$virtualMethod=|QMediaRecorder::Status|status|

$prototype=virtual qreal volume() const = 0
$virtualMethod=|qreal|volume|

$prototype=virtual void setMuted(bool muted) = 0
$virtualSlotMethod=|void|setMuted|bool

$prototype=virtual void setState(QMediaRecorder::State state) = 0
$virtualSlotMethod=|void|setState|QMediaRecorder::State

$prototype=virtual void setVolume(qreal gain) = 0
$virtualSlotMethod=|void|setVolume|qreal

%%
%% SIGNALS
%%

$prototype=void actualLocationChanged( const QUrl & location )
$signalMethod=|void|actualLocationChanged|const QUrl &

$prototype=void durationChanged( qint64 duration )
$signalMethod=|void|durationChanged|qint64

$prototype=void error( int error, const QString & errorString )
$signalMethod=|void|error|int,const QString &

$prototype=void mutedChanged( bool muted )
$signalMethod=|void|mutedChanged|bool

$prototype=void stateChanged( QMediaRecorder::State state )
$signalMethod=|void|stateChanged|QMediaRecorder::State

$prototype=void statusChanged( QMediaRecorder::Status status )
$signalMethod=|void|statusChanged|QMediaRecorder::Status

$prototype=void volumeChanged( qreal gain )
$signalMethod=|void|volumeChanged|qreal

#pragma ENDDUMP
