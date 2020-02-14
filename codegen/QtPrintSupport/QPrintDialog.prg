%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPrintSupport

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractPrintDialog

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtPrintSupport/QPrinter>

$prototype=QPrintDialog ( QPrinter * printer, QWidget * parent = nullptr )
$internalConstructor=|new1|QPrinter *,QWidget *=nullptr

$prototype=QPrintDialog ( QWidget * parent = nullptr )
$internalConstructor=|new2|QWidget *=nullptr

//[1]QPrintDialog ( QPrinter * printer, QWidget * parent = nullptr )
//[2]QPrintDialog ( QWidget * parent = nullptr )

HB_FUNC_STATIC( QPRINTDIALOG_NEW )
{
  if( ISBETWEEN(1,2) && ISQPRINTER(1) && ISOPTQWIDGET(2) )
  {
    QPrintDialog_new1();
  }
  else if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QPrintDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototype=PrintDialogOptions options () const
$method=|QAbstractPrintDialog::PrintDialogOptions|options|

$prototype=QPrinter * printer ()
$method=|QPrinter *|printer|

$prototype=void setOption ( PrintDialogOption option, bool on = true )
$method=|void|setOption|QPrintDialog::PrintDialogOption,bool=true

$prototype=void setOptions ( PrintDialogOptions options )
$method=|void|setOptions|QPrintDialog::PrintDialogOptions

$prototype=bool testOption ( PrintDialogOption option ) const
$method=|bool|testOption|QPrintDialog::PrintDialogOption

$prototype=void done ( int result )
$method=|void|done|int

$prototype=int exec ()
$method=|int|exec|

$prototype=void setVisible ( bool visible )
$method=|void|setVisible|bool

%%
%% SIGNALS
%%

$prototype=void accepted( QPrinter * printer )
$signalMethod=|void|accepted,accepted,QOverload<QPrinter*>|QPrinter *

#pragma ENDDUMP
