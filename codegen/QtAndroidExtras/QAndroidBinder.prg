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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAndroidBinder()
$internalConstructor=|new1|

$prototype=QAndroidBinder(const QAndroidJniObject &binder)
$internalConstructor=|new2|const QAndroidJniObject &

/*
[1]explicit QAndroidBinder()
[2]QAndroidBinder(const QAndroidJniObject &binder)
*/

HB_FUNC_STATIC( QANDROIDBINDER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAndroidBinder_new1();
  }
  else if( ISNUMPAR(1) && ISQANDROIDJNIOBJECT(1) )
  {
    QAndroidBinder_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QAndroidBinder()
$deleteMethod

$prototypeV2=virtual bool onTransact( int code, const QAndroidParcel & data, const QAndroidParcel & reply, QAndroidBinder::CallType flags )

$prototypeV2=bool transact( int code, const QAndroidParcel & data, QAndroidParcel * reply = nullptr, QAndroidBinder::CallType flags = CallType::Normal ) const

$prototypeV2=QAndroidJniObject handle() const

#pragma ENDDUMP
