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

$prototype=QDnsDomainNameRecord()
$internalConstructor=|new1|

$prototype=QDnsDomainNameRecord(const QDnsDomainNameRecord & other)
$internalConstructor=|new2|const QDnsDomainNameRecord &

/*
[1]QDnsDomainNameRecord()
[2]QDnsDomainNameRecord(const QDnsDomainNameRecord & other)
*/

HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDnsDomainNameRecord_new1();
  }
  else if( ISNUMPAR(1) && ISQDNSDOMAINNAMERECORD(1) )
  {
    QDnsDomainNameRecord_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QDnsDomainNameRecord()
$deleteMethod

$prototypeV2=QString name() const

$prototype=void swap(QDnsDomainNameRecord &other) Q_DECL_NOTHROW
$method=|void|swap|QDnsDomainNameRecord &

$prototypeV2=quint32 timeToLive() const

$prototypeV2=QString value() const

$extraMethods

#pragma ENDDUMP
