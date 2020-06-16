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

$beginClassFrom=QDialog

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QFontDialog ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=explicit QFontDialog ( const QFont & initial, QWidget * parent = nullptr )
$internalConstructor=|new2|const QFont &,QWidget *=nullptr

/*
[1]explicit QFontDialog ( QWidget * parent = nullptr )
[2]explicit QFontDialog ( const QFont & initial, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QFONTDIALOG_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QFontDialog_new1();
  }
  else if( ISBETWEEN(1,2) && ISQFONT(1) && ISOPTQWIDGET(2) )
  {
    QFontDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QFont currentFont() const

$prototype=void setCurrentFont ( const QFont & font )
$method=|void|setCurrentFont|const QFont &

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototypeV2=QFontDialog::FontDialogOptions options() const

$prototype=void setOptions ( FontDialogOptions options )
$method=|void|setOptions|QFontDialog::FontDialogOptions

$prototypeV2=QFont selectedFont() const

$prototype=void setOption ( FontDialogOption option, bool on = true )
$method=|void|setOption|QFontDialog::FontDialogOption,bool=true

$prototype=bool testOption ( FontDialogOption option ) const
$method=|bool|testOption|QFontDialog::FontDialogOption

$prototype=void setVisible ( bool visible )
$method=|void|setVisible|bool

$prototype=static QFont getFont(bool *ok, QWidget *parent = nullptr)
$internalStaticMethod=|QFont|getFont,getFont1|bool *,QWidget *=nullptr

$prototype=static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = nullptr, const QString &title = QString(), FontDialogOptions options = 0)
$internalStaticMethod=|QFont|getFont,getFont2|bool *,const QFont &,QWidget *=nullptr,const QString &=QString(),QFontDialog::FontDialogOptions=0

/*
[1]static QFont getFont(bool *ok, QWidget *parent = nullptr)
[2]static QFont getFont(bool *ok, const QFont &initial, QWidget *parent = nullptr, const QString &title = QString(), FontDialogOptions options = 0)
*/

HB_FUNC_STATIC( QFONTDIALOG_GETFONT )
{
  if( ISBETWEEN(1,2) && ISLOG(1) && ISOPTQWIDGET(2) )
  {
    QFontDialog_getFont1();
  }
  else if( ISBETWEEN(2,5) && ISLOG(1) && ISQFONT(2) && ISOPTQWIDGET(3) && ISOPTCHAR(4) && ISOPTNUM(5) )
  {
    QFontDialog_getFont2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=getFont

%%
%% SIGNALS
%%

$prototype=void currentFontChanged( const QFont & font )
$signalMethod=|void|currentFontChanged|const QFont &

$prototype=void fontSelected( const QFont & font )
$signalMethod=|void|fontSelected|const QFont &

#pragma ENDDUMP
