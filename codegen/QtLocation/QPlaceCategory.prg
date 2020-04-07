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

#include <QtLocation/QPlaceIcon>

$prototype=QPlaceCategory()
$internalConstructor=|new1|

$prototype=QPlaceCategory(const QPlaceCategory &other)
$internalConstructor=|new2|const QPlaceCategory &

/*
[1]QPlaceCategory()
[2]QPlaceCategory(const QPlaceCategory &other)
*/

HB_FUNC_STATIC( QPLACECATEGORY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceCategory_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECATEGORY(1) )
  {
    QPlaceCategory_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString categoryId() const
$method=|QString|categoryId|

$prototype=void setCategoryId(const QString &identifier)
$method=|void|setCategoryId|const QString &

$prototype=QString name() const
$method=|QString|name|

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

$prototype=QLocation::Visibility visibility() const
$method=|QLocation::Visibility|visibility|

$prototype=void setVisibility(QLocation::Visibility visibility)
$method=|void|setVisibility|QLocation::Visibility

$prototype=QPlaceIcon icon() const
$method=|QPlaceIcon|icon|

$prototype=void setIcon(const QPlaceIcon &icon)
$method=|void|setIcon|const QPlaceIcon &

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$extraMethods

#pragma ENDDUMP
