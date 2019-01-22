%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebChannel

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QJsonObject>

$prototype=explicit QWebChannelAbstractTransport(QObject *parent = nullptr) (abstract)
%% $constructor=5,4,0|new|QObject *=nullptr

$deleteMethod=5,4,0

$prototype=virtual void sendMessage(const QJsonObject &message) = 0
$virtualMethod=5,4,0|void|sendMessage|const QJsonObject &

%%
%% SIGNALS
%%

$prototype=void messageReceived( const QJsonObject & message, QWebChannelAbstractTransport * transport )
$signalMethod=5,4,0|void|messageReceived|const QJsonObject &,QWebChannelAbstractTransport *

#pragma ENDDUMP
