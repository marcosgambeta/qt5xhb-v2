//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
REQUEST QURL
#endif

CLASS QNetworkProxyQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD localPort
   METHOD peerHostName
   METHOD peerPort
   METHOD protocolTag
   METHOD queryType
   METHOD setLocalPort
   METHOD setPeerHostName
   METHOD setPeerPort
   METHOD setProtocolTag
   METHOD setQueryType
   METHOD setUrl
   METHOD url
   METHOD swap
   METHOD networkConfiguration
   METHOD setNetworkConfiguration

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QNetworkProxyQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QNetworkProxyQuery>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtNetwork/QNetworkProxyQuery>
#endif

#include <QtCore/QUrl>
#include <QtNetwork/QNetworkConfiguration>

HB_FUNC_STATIC(QNETWORKPROXYQUERY_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QNetworkProxyQuery()
    */
    auto obj = new QNetworkProxyQuery();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(1, 2) && ISQURL(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QNetworkProxyQuery(const QUrl &requestUrl, QNetworkProxyQuery::QueryType queryType =
    QNetworkProxyQuery::UrlRequest)
    */
    auto obj = new QNetworkProxyQuery(
        *PQURL(1), HB_ISNIL(2) ? static_cast<QNetworkProxyQuery::QueryType>(QNetworkProxyQuery::UrlRequest)
                               : static_cast<QNetworkProxyQuery::QueryType>(hb_parni(2)));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(2, 4) && HB_ISCHAR(1) && HB_ISNUM(2) && (HB_ISCHAR(3) || HB_ISNIL(3)) &&
           (HB_ISNUM(4) || HB_ISNIL(4)))
  {
    /*
    QNetworkProxyQuery(const QString &hostname, int port, const QString &protocolTag = QString(),
    QNetworkProxyQuery::QueryType queryType = QNetworkProxyQuery::TcpSocket)
    */
    auto obj =
        new QNetworkProxyQuery(PQSTRING(1), PINT(2), OPQSTRING(3, QString()),
                               HB_ISNIL(4) ? static_cast<QNetworkProxyQuery::QueryType>(QNetworkProxyQuery::TcpSocket)
                                           : static_cast<QNetworkProxyQuery::QueryType>(hb_parni(4)));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (HB_ISCHAR(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    /*
    QNetworkProxyQuery(quint16 bindPort, const QString &protocolTag = QString(), QNetworkProxyQuery::QueryType
    queryType = QNetworkProxyQuery::TcpServer)
    */
    auto obj =
        new QNetworkProxyQuery(PQUINT16(1), OPQSTRING(2, QString()),
                               HB_ISNIL(3) ? static_cast<QNetworkProxyQuery::QueryType>(QNetworkProxyQuery::TcpServer)
                                           : static_cast<QNetworkProxyQuery::QueryType>(hb_parni(3)));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(2, 3) && ISQNETWORKCONFIGURATION(1) && ISQURL(2) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    /*
    QNetworkProxyQuery(const QNetworkConfiguration &networkConfiguration, const QUrl &requestUrl,
    QNetworkProxyQuery::QueryType queryType = QNetworkProxyQuery::UrlRequest)
    */
    auto obj =
        new QNetworkProxyQuery(*PQNETWORKCONFIGURATION(1), *PQURL(2),
                               HB_ISNIL(3) ? static_cast<QNetworkProxyQuery::QueryType>(QNetworkProxyQuery::UrlRequest)
                                           : static_cast<QNetworkProxyQuery::QueryType>(hb_parni(3)));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(3, 5) && ISQNETWORKCONFIGURATION(1) && HB_ISCHAR(2) && HB_ISNUM(3) &&
           (HB_ISCHAR(4) || HB_ISNIL(4)) && (HB_ISNUM(5) || HB_ISNIL(5)))
  {
    /*
    QNetworkProxyQuery(const QNetworkConfiguration &networkConfiguration, const QString &hostname, int port, const
    QString &protocolTag = QString(), QNetworkProxyQuery::QueryType queryType = QNetworkProxyQuery::TcpSocket)
    */
    auto obj =
        new QNetworkProxyQuery(*PQNETWORKCONFIGURATION(1), PQSTRING(2), PINT(3), OPQSTRING(4, QString()),
                               HB_ISNIL(5) ? static_cast<QNetworkProxyQuery::QueryType>(QNetworkProxyQuery::TcpSocket)
                                           : static_cast<QNetworkProxyQuery::QueryType>(hb_parni(5)));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(2, 4) && ISQNETWORKCONFIGURATION(1) && HB_ISNUM(2) && (HB_ISCHAR(3) || HB_ISNIL(3)) &&
           (HB_ISNUM(4) || HB_ISNIL(4)))
  {
    /*
    QNetworkProxyQuery(const QNetworkConfiguration &networkConfiguration, quint16 bindPort, const QString &protocolTag
    = QString(), QNetworkProxyQuery::QueryType queryType = QNetworkProxyQuery::TcpServer)
    */
    auto obj =
        new QNetworkProxyQuery(*PQNETWORKCONFIGURATION(1), PQUINT16(2), OPQSTRING(3, QString()),
                               HB_ISNIL(4) ? static_cast<QNetworkProxyQuery::QueryType>(QNetworkProxyQuery::TcpServer)
                                           : static_cast<QNetworkProxyQuery::QueryType>(hb_parni(4)));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQNETWORKPROXYQUERY(1))
  {
    /*
    QNetworkProxyQuery(const QNetworkProxyQuery &other)
    */
    auto obj = new QNetworkProxyQuery(*PQNETWORKPROXYQUERY(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QNetworkProxyQuery()
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_DELETE)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int localPort() const
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_LOCALPORT)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->localPort());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString peerHostName() const
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_PEERHOSTNAME)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->peerHostName());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int peerPort() const
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_PEERPORT)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->peerPort());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString protocolTag() const
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_PROTOCOLTAG)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->protocolTag());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QNetworkProxyQuery::QueryType queryType() const
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_QUERYTYPE)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->queryType());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setLocalPort(int port)
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_SETLOCALPORT)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setLocalPort(PINT(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setPeerHostName(const QString &hostname)
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_SETPEERHOSTNAME)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setPeerHostName(PQSTRING(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setPeerPort(int port)
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_SETPEERPORT)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPeerPort(PINT(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setProtocolTag(const QString &protocolTag)
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_SETPROTOCOLTAG)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setProtocolTag(PQSTRING(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setQueryType(QNetworkProxyQuery::QueryType type)
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_SETQUERYTYPE)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setQueryType(static_cast<QNetworkProxyQuery::QueryType>(hb_parni(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setUrl(const QUrl &url)
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_SETURL)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      obj->setUrl(*PQURL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QUrl url() const
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_URL)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QUrl(obj->url());
      Qt5xHb::createReturnClass(ptr, "QURL", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void swap(QNetworkProxyQuery &other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_SWAP)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQNETWORKPROXYQUERY(1))
    {
#endif
      obj->swap(*PQNETWORKPROXYQUERY(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QNetworkConfiguration networkConfiguration() const
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_NETWORKCONFIGURATION)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QNetworkConfiguration(obj->networkConfiguration());
      Qt5xHb::createReturnClass(ptr, "QNETWORKCONFIGURATION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setNetworkConfiguration(const QNetworkConfiguration &networkConfiguration)
*/
HB_FUNC_STATIC(QNETWORKPROXYQUERY_SETNETWORKCONFIGURATION)
{
  auto obj = static_cast<QNetworkProxyQuery *>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQNETWORKCONFIGURATION(1))
    {
#endif
      obj->setNetworkConfiguration(*PQNETWORKCONFIGURATION(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC(QNETWORKPROXYQUERY_NEWFROM)
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QNETWORKPROXYQUERY_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QNETWORKPROXYQUERY_NEWFROM);
}

HB_FUNC_STATIC(QNETWORKPROXYQUERY_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QNETWORKPROXYQUERY_NEWFROM);
}

HB_FUNC_STATIC(QNETWORKPROXYQUERY_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QNETWORKPROXYQUERY_SETSELFDESTRUCTION)
{
  auto self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    auto des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
