%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkConfiguration ()
$internalConstructor=|new1|

$prototype=QNetworkConfiguration ( const QNetworkConfiguration & other )
$internalConstructor=|new2|const QNetworkConfiguration &

/*
[1]QNetworkConfiguration ()
[2]QNetworkConfiguration ( const QNetworkConfiguration & other )
*/

HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkConfiguration_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKCONFIGURATION(1) )
  {
    QNetworkConfiguration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QNetworkConfiguration()
$deleteMethod

$prototypeV2=QNetworkConfiguration::BearerType bearerType () const

$prototype=BearerType bearerTypeFamily() const
$method=5,2,0|QNetworkConfiguration::BearerType|bearerTypeFamily|

$prototypeV2=QString bearerTypeName () const

$prototype=QList<QNetworkConfiguration> children () const
$method=|QList<QNetworkConfiguration>|children|

$prototypeV2=QString identifier() const

$prototypeV2=bool isRoamingAvailable() const

$prototypeV2=bool isValid() const

$prototypeV2=QString name() const

$prototypeV2=QNetworkConfiguration::Purpose purpose() const

$prototypeV2=QNetworkConfiguration::StateFlags state() const

$prototypeV2=QNetworkConfiguration::Type type() const

$prototype=void swap(QNetworkConfiguration &other) Q_DECL_NOTHROW
$method=|void|swap|QNetworkConfiguration &

$prototype=int connectTimeout() const
$method=5,9,0|int|connectTimeout|

$prototype=bool setConnectTimeout(int timeout)
$method=5,9,0|bool|setConnectTimeout|int

$extraMethods

#pragma ENDDUMP
