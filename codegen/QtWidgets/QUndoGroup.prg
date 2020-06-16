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
#include <QtWidgets/QUndoStack>

$prototype=QUndoGroup(QObject * parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=QUndoStack * activeStack() const

$prototype=void addStack(QUndoStack * stack)
$method=|void|addStack|QUndoStack *

$prototypeV2=bool canRedo() const

$prototypeV2=bool canUndo() const

$prototype=QAction * createRedoAction(QObject * parent, const QString & prefix = QString()) const
$method=|QAction *|createRedoAction|QObject *,const QString &=QString()

$prototype=QAction * createUndoAction(QObject * parent, const QString & prefix = QString()) const
$method=|QAction *|createUndoAction|QObject *,const QString &=QString()

$prototypeV2=bool isClean() const

$prototypeV2=QString redoText() const

$prototype=void removeStack(QUndoStack * stack)
$method=|void|removeStack|QUndoStack *

$prototype=QList<QUndoStack *> stacks() const
$method=|QList<QUndoStack *>|stacks|

$prototypeV2=QString undoText() const

$prototypeV2=void redo()

$prototype=void setActiveStack(QUndoStack * stack)
$method=|void|setActiveStack|QUndoStack *

$prototypeV2=void undo()

%%
%% SIGNALS
%%

$prototype=void activeStackChanged( QUndoStack * stack )
$signalMethod=|void|activeStackChanged|QUndoStack *

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
