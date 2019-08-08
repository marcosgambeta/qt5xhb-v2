%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

//[1]QAndroidParcel()
//[2]explicit QAndroidParcel(const QAndroidJniObject& parcel)

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
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QAndroidParcel()
$deleteMethod

$prototype=void writeData(const QByteArray &data) const
$method=|void|writeData|const QByteArray &

$prototype=void writeVariant(const QVariant &value) const
$method=|void|writeVariant|const QVariant &

$prototype=void writeBinder(const QAndroidBinder &binder) const
$method=|void|writeBinder|const QAndroidBinder &

$prototype=void writeFileDescriptor(int fd) const
$method=|void|writeFileDescriptor|int

$prototype=QByteArray readData() const
$method=|QByteArray|readData|

$prototype=QVariant readVariant() const
$method=|QVariant|readVariant|

$prototype=QAndroidBinder readBinder() const
$method=|QAndroidBinder|readBinder|

$prototype=int readFileDescriptor() const
$method=|int|readFileDescriptor|

$prototype=QAndroidJniObject handle() const
$method=|QAndroidJniObject|handle|

$extraMethods

#pragma ENDDUMP
