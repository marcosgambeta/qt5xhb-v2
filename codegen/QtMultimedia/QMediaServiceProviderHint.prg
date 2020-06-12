%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMediaServiceProviderHint()
$constructor=|new1|

$prototype=QMediaServiceProviderHint(const QString &mimeType, const QStringList& codecs)
$constructor=|new2|const QString &,const QStringList &

$prototype=QMediaServiceProviderHint(const QByteArray &device)
$constructor=|new3|const QByteArray &

$prototype=QMediaServiceProviderHint(QCamera::Position position)
$constructor=|new4|QCamera::Position

$prototype=QMediaServiceProviderHint(Features features)
$constructor=|new5|QMediaServiceProviderHint::Features

$prototype=QMediaServiceProviderHint(const QMediaServiceProviderHint &other)
$constructor=|new6|const QMediaServiceProviderHint &

/*
[1]QMediaServiceProviderHint()
[2]QMediaServiceProviderHint(const QString &mimeType, const QStringList& codecs)
[3]QMediaServiceProviderHint(const QByteArray &device)
[4]QMediaServiceProviderHint(QCamera::Position position)
[5]QMediaServiceProviderHint(Features features)
[6]QMediaServiceProviderHint(const QMediaServiceProviderHint &other)
*/

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2)  )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQMEDIASERVICEPROVIDERHINT(1) )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$prototype=~QMediaServiceProviderHint()
$deleteMethod

$prototypeV2=bool isNull() const

$prototypeV2=QMediaServiceProviderHint::Type type() const

$prototypeV2=QString mimeType() const

$prototypeV2=QStringList codecs() const

$prototypeV2=QByteArray device() const

$prototypeV2=QMediaServiceProviderHint::Features features() const

$prototypeV2=QCamera::Position cameraPosition() const

$extraMethods

#pragma ENDDUMP
