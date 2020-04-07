%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation
$added=5,4,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPlaceContent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPlaceEditorial()
$internalConstructor=|new1|

$prototype=QPlaceEditorial::QPlaceEditorial(const QPlaceContent &other)
$internalConstructor=|new2|const QPlaceContent &

/*
[1]QPlaceEditorial()
[2]QPlaceEditorial::QPlaceEditorial(const QPlaceContent &other)
*/

HB_FUNC_STATIC( QPLACEEDITORIAL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceEditorial_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENT(1) )
  {
    QPlaceEditorial_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString text() const
$method=|QString|text|

$prototype=void setText(const QString &text)
$method=|void|setText|const QString &

$prototype=QString title() const
$method=|QString|title|

$prototype=void setTitle(const QString &data)
$method=|void|setTitle|const QString &

$prototype=QString language() const
$method=|QString|language|

$prototype=void setLanguage(const QString &data)
$method=|void|setLanguage|const QString &

#pragma ENDDUMP
