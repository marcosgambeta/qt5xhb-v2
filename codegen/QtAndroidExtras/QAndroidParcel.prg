%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtAndroidExtras
$added=5,10,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAndroidParcel()
$internalConstructor=|new1|

$prototype=explicit QAndroidParcel(const QAndroidJniObject& parcel)
$internalConstructor=|new2|const QAndroidJniObject &

/*
[1]QAndroidParcel()
[2]explicit QAndroidParcel(const QAndroidJniObject& parcel)
*/

HB_FUNC_STATIC( QANDROIDPARCEL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAndroidParcel_new1();
  }
  else if( ISNUMPAR(1) && ISQANDROIDJNIOBJECT(1) )
  {
    QAndroidParcel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QAndroidParcel()
$deleteMethod

$prototypeV2=void writeData( const QByteArray & data ) const

$prototypeV2=void writeVariant( const QVariant & value ) const

$prototypeV2=void writeBinder( const QAndroidBinder & binder ) const

$prototypeV2=void writeFileDescriptor( int fd ) const

$prototypeV2=QByteArray readData() const

$prototypeV2=QVariant readVariant() const

$prototypeV2=QAndroidBinder readBinder() const

$prototypeV2=int readFileDescriptor() const

$prototypeV2=QAndroidJniObject handle() const

$extraMethods

#pragma ENDDUMP
