%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScriptTools

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

#include <QtWidgets/QAction>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QToolBar>

$prototype=QScriptEngineDebugger(QObject * parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=QAction * action(DebuggerAction action) const
$method=|QAction *|action|QScriptEngineDebugger::DebuggerAction

$prototype=void attachTo(QScriptEngine * engine)
$method=|void|attachTo|QScriptEngine *

$prototype=bool autoShowStandardWindow() const
$method=|bool|autoShowStandardWindow|

$prototype=QMenu * createStandardMenu(QWidget * parent = nullptr)
$method=|QMenu *|createStandardMenu|QWidget *=nullptr

$prototype=QToolBar * createStandardToolBar(QWidget * parent = nullptr)
$method=|QToolBar *|createStandardToolBar|QWidget *=nullptr

$prototype=void detach()
$method=|void|detach|

$prototype=void setAutoShowStandardWindow(bool autoShow)
$method=|void|setAutoShowStandardWindow|bool

$prototype=QMainWindow * standardWindow() const
$method=|QMainWindow *|standardWindow|

$prototype=DebuggerState state() const
$method=|QScriptEngineDebugger::DebuggerState|state|

$prototype=QWidget * widget(DebuggerWidget widget) const
$method=|QWidget *|widget|QScriptEngineDebugger::DebuggerWidget

%%
%% SIGNALS
%%

$prototype=void evaluationResumed()
$signalMethod=|void|evaluationResumed|

$prototype=void evaluationSuspended()
$signalMethod=|void|evaluationSuspended|

#pragma ENDDUMP
