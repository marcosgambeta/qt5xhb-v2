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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtLocation/QPlaceSupplier>
#include <QtLocation/QPlaceUser>

$prototype=QPlaceContent()
$internalConstructor=|new1|

$prototype=QPlaceContent(const QPlaceContent &other)
$internalConstructor=|new2|const QPlaceContent &

/*
[1]QPlaceContent()
[2]QPlaceContent(const QPlaceContent &other)
*/

HB_FUNC_STATIC( QPLACECONTENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceContent_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENT(1) )
  {
    QPlaceContent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QPlaceContent::Type type() const
$method=|QPlaceContent::Type|type|

$prototype=QPlaceSupplier supplier() const
$method=|QPlaceSupplier|supplier|

$prototype=void setSupplier(const QPlaceSupplier &supplier)
$method=|void|setSupplier|const QPlaceSupplier &

$prototype=QPlaceUser user() const
$method=|QPlaceUser|user|

$prototype=void setUser(const QPlaceUser &user)
$method=|void|setUser|const QPlaceUser &

$prototype=QString attribution() const
$method=|QString|attribution|

$prototype=void setAttribution(const QString &attribution)
$method=|void|setAttribution|const QString &

$extraMethods

#pragma ENDDUMP
