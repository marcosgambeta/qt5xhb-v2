%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

$prototype=QPlaceSupplier()
$internalConstructor=|new1|

$prototype=QPlaceSupplier(const QPlaceSupplier &other)
$internalConstructor=|new2|const QPlaceSupplier &

//[1]QPlaceSupplier()
//[2]QPlaceSupplier(const QPlaceSupplier &other)

HB_FUNC_STATIC( QPLACESUPPLIER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceSupplier_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACESUPPLIER(1) )
  {
    QPlaceSupplier_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString name() const
$method=|QString|name|

$prototype=void setName(const QString &data)
$method=|void|setName|const QString &

$prototype=QString supplierId() const
$method=|QString|supplierId|

$prototype=void setSupplierId(const QString &identifier)
$method=|void|setSupplierId|const QString &

$prototype=QUrl url() const
$method=|QUrl|url|

$prototype=void setUrl(const QUrl &data)
$method=|void|setUrl|const QUrl &

$prototype=QPlaceIcon icon() const
$method=|QPlaceIcon|icon|

$prototype=void setIcon(const QPlaceIcon &icon)
$method=|void|setIcon|const QPlaceIcon &

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$extraMethods

#pragma ENDDUMP
