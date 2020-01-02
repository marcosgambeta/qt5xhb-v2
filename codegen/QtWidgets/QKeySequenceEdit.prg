%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QKeySequenceEdit(QWidget *parent = nullptr)
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QKeySequenceEdit(const QKeySequence &keySequence, QWidget *parent = nullptr)
$internalConstructor=|new2|const QKeySequence &,QWidget *=nullptr

//[1]QKeySequenceEdit(QWidget *parent = nullptr)
//[2]QKeySequenceEdit(const QKeySequence &keySequence, QWidget *parent = nullptr)

HB_FUNC_STATIC( QKEYSEQUENCEEDIT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QKeySequenceEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQKEYSEQUENCE(1) && ISOPTQWIDGET(2) )
  {
    QKeySequenceEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod

$prototype=QKeySequence keySequence() const
$method=|QKeySequence|keySequence|

$prototype=void setKeySequence(const QKeySequence &keySequence)
$method=|void|setKeySequence|const QKeySequence &

$prototype=void clear()
$method=|void|clear|

%%
%% SIGNALS
%%

$prototype=void editingFinished()
$signalMethod=|void|editingFinished|

$prototype=void keySequenceChanged( const QKeySequence & keySequence )
$signalMethod=|void|keySequenceChanged|const QKeySequence &

#pragma ENDDUMP
