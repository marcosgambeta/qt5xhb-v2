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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QUndoCommand(QUndoCommand * parent = nullptr)
$internalConstructor=|new1|QUndoCommand *=nullptr

$prototype=QUndoCommand(const QString & text, QUndoCommand * parent = nullptr)
$internalConstructor=|new2|const QString &,QUndoCommand *=nullptr

/*
[1]QUndoCommand(QUndoCommand * parent = nullptr)
[2]QUndoCommand(const QString & text, QUndoCommand * parent = nullptr)
*/

HB_FUNC_STATIC( QUNDOCOMMAND_NEW )
{
  if( ISBETWEEN(0,1) && (ISQUNDOCOMMAND(1)||ISNIL(1)) )
  {
    QUndoCommand_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQUNDOCOMMAND(2)||ISNIL(2)) )
  {
    QUndoCommand_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QString actionText() const

$prototype=const QUndoCommand * child(int index) const
$method=|const QUndoCommand *|child|int

$prototypeV2=int childCount() const

$prototypeV2=virtual int id() const

$prototype=virtual bool mergeWith(const QUndoCommand * command)
$virtualMethod=|bool|mergeWith|const QUndoCommand *

$prototypeV2=virtual void redo()

$prototype=void setText(const QString & text)
$method=|void|setText|const QString &

$prototypeV2=QString text() const

$prototypeV2=virtual void undo()

$extraMethods

#pragma ENDDUMP
