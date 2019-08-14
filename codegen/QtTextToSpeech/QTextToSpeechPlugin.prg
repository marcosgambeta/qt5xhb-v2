%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtTextToSpeech
$added=5,10,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QTextToSpeechPlugin()
$deleteMethod

$prototype=virtual QTextToSpeechEngine *createTextToSpeechEngine(const QVariantMap &parameters, QObject *parent, QString *errorString) const
%% TODO: QVariantMap
%% $virtualMethod=|QTextToSpeechEngine *|createTextToSpeechEngine|const QVariantMap &,QObject *,QString *

$extraMethods

#pragma ENDDUMP
