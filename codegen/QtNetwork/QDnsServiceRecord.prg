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

$prototype=QDnsServiceRecord()
$internalConstructor=|new1|

$prototype=QDnsServiceRecord(const QDnsServiceRecord & other)
$internalConstructor=|new2|const QDnsServiceRecord &

/*
[1]QDnsServiceRecord()
[2]QDnsServiceRecord(const QDnsServiceRecord & other)
*/

HB_FUNC_STATIC( QDNSSERVICERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDnsServiceRecord_new1();
  }
  else if( ISNUMPAR(1) && ISQDNSSERVICERECORD(1) )
  {
    QDnsServiceRecord_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QDnsServiceRecord()
$deleteMethod

$prototypeV2=QString name() const

$prototypeV2=quint16 port() const

$prototypeV2=quint16 priority() const

$prototype=void swap(QDnsServiceRecord &other) Q_DECL_NOTHROW
$method=|void|swap|QDnsServiceRecord &

$prototypeV2=QString target() const

$prototypeV2=quint32 timeToLive() const

$prototypeV2=quint16 weight() const

$extraMethods

#pragma ENDDUMP
