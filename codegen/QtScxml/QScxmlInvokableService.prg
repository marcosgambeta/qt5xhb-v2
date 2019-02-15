%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScxml

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

$prototype=QScxmlInvokableService(QScxmlStateMachine *parentStateMachine, QScxmlInvokableServiceFactory *parent)

$deleteMethod

%%
%% Q_PROPERTY(QScxmlStateMachine *parentStateMachine READ parentStateMachine CONSTANT)
%%

$prototype=QScxmlStateMachine *parentStateMachine() const

%%
%% Q_PROPERTY(QString id READ id CONSTANT)
%%

$prototype=virtual QString id() const = 0

%%
%% Q_PROPERTY(QString name READ name CONSTANT)
%%

$prototype=virtual QString name() const = 0

%%
%%
%%

$prototype=virtual bool start() = 0

$prototype=virtual void postEvent(QScxmlEvent *event) = 0

#pragma ENDDUMP
