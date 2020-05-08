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

$prototype=virtual void run() = 0
$virtualMethod=|void|run|

$prototype=bool autoDelete() const
$method=|bool|autoDelete|

$prototype=void setAutoDelete(bool _autoDelete)
$method=|void|setAutoDelete|bool

$prototype=static QRunnable *create(std::function<void()> functionToRun)
%% TODO: $staticMethod=5,15,0|QRunnable *|create|std::function<void()>

$extraMethods

#pragma ENDDUMP
