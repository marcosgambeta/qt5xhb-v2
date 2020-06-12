%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtTextToSpeech
$added=5,10,0

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

#include <QtCore/QLocale>
#include <QtCore/QVector>
#include <QtTextToSpeech/QVoice>

$prototype=explicit QTextToSpeechEngine(QObject *parent = nullptr) (abstract)
%% $constructor=|new|QObject *=nullptr

$prototype=~QTextToSpeechEngine()
$deleteMethod

$prototype=virtual QVector<QLocale> availableLocales() const = 0
$virtualMethod=|QVector<QLocale>|availableLocales|

$prototype=virtual QVector<QVoice> availableVoices() const = 0
$virtualMethod=|QVector<QVoice>|availableVoices|

$prototype=virtual void say(const QString &text) = 0
$virtualMethod=|void|say|const QString &

$prototypeV2=virtual void stop() = 0

$prototypeV2=virtual void pause() = 0

$prototypeV2=virtual void resume() = 0

$prototypeV2=virtual double rate() const = 0

$prototype=virtual bool setRate(double rate) = 0
$virtualMethod=|bool|setRate|double

$prototypeV2=virtual double pitch() const = 0

$prototype=virtual bool setPitch(double pitch) = 0
$virtualMethod=|bool|setPitch|double

$prototypeV2=virtual QLocale locale() const = 0

$prototype=virtual bool setLocale(const QLocale &locale) = 0
$virtualMethod=|bool|setLocale|const QLocale &

$prototypeV2=virtual double volume() const = 0

$prototype=virtual bool setVolume(double volume) = 0
$virtualMethod=|bool|setVolume|double

$prototypeV2=virtual QVoice voice() const = 0

$prototype=virtual bool setVoice(const QVoice &voice) = 0
$virtualMethod=|bool|setVoice|const QVoice &

$prototypeV2=virtual QTextToSpeech::State state() const = 0

$prototype=static QVoice createVoice(const QString &name, QVoice::Gender gender, QVoice::Age age, const QVariant &data) [protected]

$prototype=static QVariant voiceData(const QVoice &voice) [protected]

%%
%% SIGNALS
%%

$prototype=void stateChanged( QTextToSpeech::State state )
$signalMethod=|void|stateChanged|QTextToSpeech::State

#pragma ENDDUMP
