%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QPlaceContactDetail()
$internalConstructor=|new1|

$prototype=QPlaceContactDetail(const QPlaceContactDetail &other)
$internalConstructor=|new2|const QPlaceContactDetail &

//[1]QPlaceContactDetail()
//[2]QPlaceContactDetail(const QPlaceContactDetail &other)

HB_FUNC_STATIC( QPLACECONTACTDETAIL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceContactDetail_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTACTDETAIL(1) )
  {
    QPlaceContactDetail_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString label() const
$method=|QString|label|

$prototype=void setLabel(const QString &label)
$method=|void|setLabel|const QString &

$prototype=QString value() const
$method=|QString|value|

$prototype=void setValue(const QString &value)
$method=|void|setValue|const QString &

$prototype=void clear()
$method=|void|clear|

$extraMethods

#pragma ENDDUMP
