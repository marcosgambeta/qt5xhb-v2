%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

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

#include <QtCore/QAbstractState>
#include <QtCore/QState>
#include <QtCore/QStateMachine>

$deleteMethod

$prototype=void addAnimation ( QAbstractAnimation * animation )
$method=|void|addAnimation|QAbstractAnimation *

$prototype=QList<QAbstractAnimation *> animations () const
$method=|QList<QAbstractAnimation *>|animations|

$prototypeV2=QStateMachine * machine() const

$prototype=void removeAnimation ( QAbstractAnimation * animation )
$method=|void|removeAnimation|QAbstractAnimation *

$prototype=void setTargetState ( QAbstractState * target )
$method=|void|setTargetState|QAbstractState *

$prototype=void setTargetStates ( const QList<QAbstractState *> & targets )
$method=|void|setTargetStates|const QList<QAbstractState *> &

$prototypeV2=QState * sourceState() const

$prototypeV2=QAbstractState * targetState() const

$prototype=QList<QAbstractState *> targetStates () const
$method=|QList<QAbstractState *>|targetStates|

%%
%% SIGNALS
%%

$prototype=void triggered()
$signalMethod=|void|triggered|

#pragma ENDDUMP
