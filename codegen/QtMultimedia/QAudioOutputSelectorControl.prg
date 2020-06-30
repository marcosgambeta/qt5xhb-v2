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

$prototype=explicit QAudioOutputSelectorControl(QObject *parent = nullptr) [protected]

$prototype=virtual ~QAudioOutputSelectorControl()
$deleteMethod

$prototypeV2=virtual QString activeOutput() const = 0

$prototypeV2=virtual QList<QString> availableOutputs() const = 0

$prototypeV2=virtual QString defaultOutput() const = 0

$prototypeV2=virtual QString outputDescription( const QString & name ) const = 0

$prototypeV2=virtual void setActiveOutput( const QString & name ) = 0

%%
%% SIGNALS
%%

$prototype=void activeOutputChanged( const QString & name )
$signalMethod=|void|activeOutputChanged|const QString &

$prototype=void availableOutputsChanged()
$signalMethod=|void|availableOutputsChanged|

#pragma ENDDUMP
