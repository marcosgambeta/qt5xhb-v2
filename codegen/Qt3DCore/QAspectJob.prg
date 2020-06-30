%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAspectJob()
$constructor=|new|

$prototype=explicit QAspectJob(QAspectJobPrivate &dd) [protected]

$prototype=virtual ~QAspectJob()
$deleteMethod

$prototypeV2=void addDependency( QWeakPointer<QAspectJob> dependency )

$prototypeV2=void removeDependency( QWeakPointer<QAspectJob> dependency )

$prototypeV2=QVector<QWeakPointer<QAspectJob> > dependencies() const

$prototypeV2=virtual void run() = 0

#pragma ENDDUMP
