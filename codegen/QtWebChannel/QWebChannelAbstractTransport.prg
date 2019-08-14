%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebChannel
$added=5,4,0

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

#include <QtCore/QJsonObject>

$prototype=explicit QWebChannelAbstractTransport(QObject *parent = nullptr) (abstract)
%% $constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=virtual void sendMessage(const QJsonObject &message) = 0
$virtualMethod=|void|sendMessage|const QJsonObject &

%%
%% SIGNALS
%%

$prototype=void messageReceived( const QJsonObject & message, QWebChannelAbstractTransport * transport )
$signalMethod=|void|messageReceived|const QJsonObject &,QWebChannelAbstractTransport *

#pragma ENDDUMP
