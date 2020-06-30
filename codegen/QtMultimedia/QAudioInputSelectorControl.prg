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

$prototype=explicit QAudioInputSelectorControl(QObject *parent = nullptr) [protected]

$prototype=virtual ~QAudioInputSelectorControl()
$deleteMethod

$prototypeV2=virtual QString activeInput() const = 0

$prototypeV2=virtual QList<QString> availableInputs() const = 0

$prototypeV2=virtual QString defaultInput() const = 0

$prototypeV2=virtual QString inputDescription( const QString & name ) const = 0

$prototypeV2=virtual void setActiveInput( const QString & name ) = 0

%%
%% SIGNALS
%%

$prototype=void activeInputChanged( const QString & name )
$signalMethod=|void|activeInputChanged|const QString &

$prototype=void availableInputsChanged()
$signalMethod=|void|availableInputsChanged|

#pragma ENDDUMP
