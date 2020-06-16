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

$beginClassFrom=QPushButton

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCommandLinkButton ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QCommandLinkButton ( const QString & text, QWidget * parent = nullptr )
$internalConstructor=|new2|const QString &,QWidget *=nullptr

$prototype=QCommandLinkButton ( const QString & text, const QString & description, QWidget * parent = nullptr )
$internalConstructor=|new3|const QString &,const QString &,QWidget *=nullptr

/*
[1]QCommandLinkButton ( QWidget * parent = nullptr )
[2]QCommandLinkButton ( const QString & text, QWidget * parent = nullptr )
[3]QCommandLinkButton ( const QString & text, const QString & description, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QCOMMANDLINKBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QCommandLinkButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QCommandLinkButton_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTQWIDGET(3) )
  {
    QCommandLinkButton_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QString description() const

$prototype=void setDescription ( const QString & description )
$method=|void|setDescription|const QString &

$prototypeV2=bool isFlat() const

$prototype=void setFlat ( bool )
$method=|void|setFlat|bool

#pragma ENDDUMP
