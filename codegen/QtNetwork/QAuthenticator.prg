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

$prototype=QAuthenticator ()
$internalConstructor=|new1|

$prototype=QAuthenticator ( const QAuthenticator & other )
$internalConstructor=|new2|const QAuthenticator &

/*
[1]QAuthenticator ()
[2]QAuthenticator ( const QAuthenticator & other )
*/

HB_FUNC_STATIC( QAUTHENTICATOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAuthenticator_new1();
  }
  else if( ISNUMPAR(1) && ISQAUTHENTICATOR(1) )
  {
    QAuthenticator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QAuthenticator()
$deleteMethod

$prototypeV2=QString user() const

$prototype=void setUser(const QString &user)
$method=|void|setUser|const QString &

$prototypeV2=QString password() const

$prototype=void setPassword(const QString &password)
$method=|void|setPassword|const QString &

$prototypeV2=QString realm() const

$prototype=void setRealm(const QString &realm)
%% TODO: check method and Qt version
$method=5,3,0|void|setRealm|const QString &

$prototype=QVariant option(const QString &opt) const
$method=|QVariant|option|const QString &

$prototype=QVariantHash options() const
%% TODO: implementar
%% $method=|QVariantHash|options|

$prototype=void setOption(const QString &opt, const QVariant &value)
$method=|void|setOption|const QString &,const QVariant &

$prototypeV2=bool isNull() const

$prototypeV2=void detach()

$extraMethods

#pragma ENDDUMP
