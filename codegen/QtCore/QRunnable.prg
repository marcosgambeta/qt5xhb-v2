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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QRunnable()
%% TODO: $constructor=|new|

$prototype=virtual ~QRunnable()
$deleteMethod

$prototypeV2=virtual void run() = 0

$prototypeV2=bool autoDelete() const

$prototypeV2=void setAutoDelete( bool _autoDelete )

%% TODO: $prototypeV2=5,15,0|static QRunnable * create( std::function<void()> functionToRun )

$extraMethods

#pragma ENDDUMP
