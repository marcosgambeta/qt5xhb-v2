%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork
$added=5,8,0

$header

%% TODO:
%% #ifndef QT_NO_UDPSOCKET
%% #endif // QT_NO_UDPSOCKET

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkDatagram()
$internalConstructor=|new1|

$prototype=QNetworkDatagram(const QByteArray &data, const QHostAddress &destinationAddress = QHostAddress(), quint16 port = 0) (implicit)
$internalConstructor=|new2|const QByteArray &,const QHostAddress &=QHostAddress(),quint16=0

$prototype=QNetworkDatagram(const QNetworkDatagram &other)
$internalConstructor=|new3|const QNetworkDatagram &

$prototype=explicit QNetworkDatagram(QNetworkDatagramPrivate &dd) [private]

/*
[1]QNetworkDatagram()
[2]QNetworkDatagram(const QByteArray &data, const QHostAddress &destinationAddress = QHostAddress(), quint16 port = 0) (implicit)
[3]QNetworkDatagram(const QNetworkDatagram &other)
*/

HB_FUNC_STATIC( QNETWORKDATAGRAM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkDatagram_new1();
  }
  else if( ISBETWEEN(1,3) && ISQBYTEARRAY(1) && (ISQHOSTADDRESS(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QNetworkDatagram_new2();
  }
  else if( ISNUMPAR(1) && ISQNETWORKDATAGRAM(1) )
  {
    QNetworkDatagram_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QNetworkDatagram()
$deleteMethod

$prototype=void swap(QNetworkDatagram &other) Q_DECL_NOTHROW
$method=|void|swap|QNetworkDatagram &

$prototypeV2=void clear()

$prototypeV2=bool isValid() const

$prototypeV2=bool isNull() const

$prototypeV2=uint interfaceIndex() const

$prototype=void setInterfaceIndex(uint index)
$method=|void|setInterfaceIndex|uint

$prototypeV2=QHostAddress senderAddress() const

$prototypeV2=QHostAddress destinationAddress() const

$prototypeV2=int senderPort() const

$prototypeV2=int destinationPort() const

$prototype=void setSender(const QHostAddress &address, quint16 port = 0)
$method=|void|setSender|const QHostAddress &,quint16=0

$prototype=void setDestination(const QHostAddress &address, quint16 port)
$method=|void|setDestination|const QHostAddress &,quint16

$prototypeV2=int hopLimit() const

$prototype=void setHopLimit(int count)
$method=|void|setHopLimit|int

$prototypeV2=QByteArray data() const

$prototype=void setData(const QByteArray &data)
$method=|void|setData|const QByteArray &

$prototype=QNetworkDatagram makeReply(const QByteArray &paylaod) const
$method=|QNetworkDatagram|makeReply|const QByteArray &

$prototype=QNetworkDatagram makeReply_helper(const QByteArray &data) const [private]

$prototype=void makeReply_helper_inplace(const QByteArray &data) [private]

$prototype=static void destroy(QNetworkDatagramPrivate *d) [private]

$extraMethods

#pragma ENDDUMP
