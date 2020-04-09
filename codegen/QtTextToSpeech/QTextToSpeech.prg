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

$prototype=explicit QTextToSpeech(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QTextToSpeech(const QString &engine, QObject *parent = nullptr)
$internalConstructor=|new2|const QString &,QObject *=nullptr

/*
[1]explicit QTextToSpeech(QObject *parent = nullptr)
[2]explicit QTextToSpeech(const QString &engine, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QTEXTTOSPEECH_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QTextToSpeech_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QTextToSpeech_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

%%
%% Q_PROPERTY(State state READ state NOTIFY stateChanged)
%%

$prototype=State state() const
$method=|QTextToSpeech::State|state|

%%
%% Q_PROPERTY(QLocale locale READ locale WRITE setLocale NOTIFY localeChanged)
%%

$prototype=QLocale locale() const
$method=|QLocale|locale|

$prototype=void setLocale(const QLocale &locale)
$slotMethod=|void|setLocale|const QLocale &

%%
%% Q_PROPERTY(QVoice voice READ voice WRITE setVoice NOTIFY voiceChanged)
%%

$prototype=QVoice voice() const
$method=|QVoice|voice|

$prototype=void setVoice(const QVoice &voice)
$slotMethod=|void|setVoice|const QVoice &

%%
%% Q_PROPERTY(double rate READ rate WRITE setRate NOTIFY rateChanged)
%%

$prototype=double rate() const
$method=|double|rate|

$prototype=void setRate(double rate)
$slotMethod=|void|setRate|double

%%
%% Q_PROPERTY(double pitch READ pitch WRITE setPitch NOTIFY pitchChanged)
%%

$prototype=double pitch() const
$method=|double|pitch|

$prototype=void setPitch(double pitch)
$slotMethod=|void|setPitch|double

%%
%% Q_PROPERTY(int volume READ volume WRITE setVolume NOTIFY volumeChanged)
%%

$prototype=double volume() const
$method=|double|volume|

$prototype=void setVolume(double volume)
$slotMethod=|void|setVolume|double

%%
%%
%%

$prototype=QVector<QLocale> availableLocales() const
$method=|QVector<QLocale>|availableLocales|

$prototype=QVector<QVoice> availableVoices() const
$method=|QVector<QVoice>|availableVoices|

$prototype=static QStringList availableEngines()
$staticMethod=|QStringList|availableEngines|

$prototype=void say(const QString &text)
$slotMethod=|void|say|const QString &

$prototype=void stop()
$slotMethod=|void|stop|

$prototype=void pause()
$slotMethod=|void|pause|

$prototype=void resume()
$slotMethod=|void|resume|

%%
%% SIGNALS
%%

$prototype=void localeChanged( const QLocale & locale )
$signalMethod=|void|localeChanged|const QLocale &

$prototype=void pitchChanged( double pitch )
$signalMethod=|void|pitchChanged|double

$prototype=void rateChanged( double rate )
$signalMethod=|void|rateChanged|double

$prototype=void stateChanged( QTextToSpeech::State state )
$signalMethod=|void|stateChanged|QTextToSpeech::State

$prototype=void voiceChanged( const QVoice & voice )
$signalMethod=|void|voiceChanged|const QVoice &

$prototype=void volumeChanged( int volume )
$signalMethod=|void|volumeChanged,volumeChanged1,QOverload<int>|int

$prototype=void volumeChanged( double volume )
$signalMethod=|void|volumeChanged,volumeChanged2,QOverload<double>|double

#pragma ENDDUMP
