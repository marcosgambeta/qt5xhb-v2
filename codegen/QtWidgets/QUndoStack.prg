%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

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

$prototype=QUndoStack(QObject * parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=void beginMacro(const QString & text)
$method=|void|beginMacro|const QString &

$prototypeV2=bool canRedo() const

$prototypeV2=bool canUndo() const

$prototypeV2=int cleanIndex() const

$prototypeV2=void clear()

$prototype=const QUndoCommand * command(int index) const
$method=|const QUndoCommand *|command|int

$prototypeV2=int count() const

$prototype=QAction * createRedoAction(QObject * parent, const QString & prefix = QString()) const
$method=|QAction *|createRedoAction|QObject *,const QString &=QString()

$prototype=QAction * createUndoAction(QObject * parent, const QString & prefix = QString()) const
$method=|QAction *|createUndoAction|QObject *,const QString &=QString()

$prototypeV2=void endMacro()

$prototypeV2=int index() const

$prototypeV2=bool isActive() const

$prototypeV2=bool isClean() const

$prototype=void push(QUndoCommand * cmd)
$method=|void|push|QUndoCommand *

$prototypeV2=QString redoText() const

$prototype=void setUndoLimit(int limit)
$method=|void|setUndoLimit|int

$prototype=QString text(int idx) const
$method=|QString|text|int

$prototypeV2=int undoLimit() const

$prototypeV2=QString undoText() const

$prototypeV2=void redo()

$prototype=void setActive(bool active = true)
$method=|void|setActive|bool=true

$prototypeV2=void setClean()

$prototype=void setIndex(int idx)
$method=|void|setIndex|int

$prototypeV2=void undo()

%%
%% SIGNALS
%%

$prototype=void canRedoChanged( bool canRedo )
$signalMethod=|void|canRedoChanged|bool

$prototype=void canUndoChanged( bool canUndo )
$signalMethod=|void|canUndoChanged|bool

$prototype=void cleanChanged( bool clean )
$signalMethod=|void|cleanChanged|bool

$prototype=void indexChanged( int idx )
$signalMethod=|void|indexChanged|int

$prototype=void redoTextChanged( const QString & redoText )
$signalMethod=|void|redoTextChanged|const QString &

$prototype=void undoTextChanged( const QString & undoText )
$signalMethod=|void|undoTextChanged|const QString &

#pragma ENDDUMP
