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

$beginClassFrom=QWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QUndoGroup>
#include <QtWidgets/QUndoStack>

$prototype=QUndoView ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QUndoView ( QUndoStack * stack, QWidget * parent = nullptr )
$internalConstructor=|new2|QUndoStack *,QWidget *=nullptr

$prototype=QUndoView ( QUndoGroup * group, QWidget * parent = nullptr )
$internalConstructor=|new3|QUndoGroup *,QWidget *=nullptr

/*
[1]QUndoView ( QWidget * parent = nullptr )
[2]QUndoView ( QUndoStack * stack, QWidget * parent = nullptr )
[3]QUndoView ( QUndoGroup * group, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QUNDOVIEW_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QUndoView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQUNDOSTACK(1) && ISOPTQWIDGET(2) )
  {
    QUndoView_new2();
  }
  else if( ISBETWEEN(1,2) && ISQUNDOGROUP(1) && ISOPTQWIDGET(2) )
  {
    QUndoView_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QIcon cleanIcon() const

$prototypeV2=QString emptyLabel() const

$prototypeV2=QUndoGroup * group() const

$prototype=void setCleanIcon ( const QIcon & icon )
$method=|void|setCleanIcon|const QIcon &

$prototype=void setEmptyLabel ( const QString & label )
$method=|void|setEmptyLabel|const QString &

$prototypeV2=QUndoStack * stack() const

$prototype=void setGroup ( QUndoGroup * group )
$method=|void|setGroup|QUndoGroup *

$prototype=void setStack ( QUndoStack * stack )
$method=|void|setStack|QUndoStack *

#pragma ENDDUMP
