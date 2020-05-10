/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QHostAddress

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new7
   METHOD new8
   METHOD new9
   METHOD new
   METHOD delete
   METHOD swap
   METHOD setAddress
   METHOD protocol
   METHOD toIPv4Address
   METHOD toString
   METHOD scopeId
   METHOD setScopeId
   METHOD isEqual
   METHOD isNull
   METHOD clear
   METHOD isInSubnet
   METHOD isLoopback
   METHOD isMulticast

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHostAddress
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QHostAddress>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals5.h"

#ifdef __XHARBOUR__
#include <QtNetwork/QHostAddress>
#endif

/*
QHostAddress()
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW1 )
{
  auto obj = new QHostAddress();
  Qt5xHb::returnNewObject( obj, true );
}

/*
explicit QHostAddress(quint32 ip4Addr)
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW2 )
{
  auto obj = new QHostAddress( PQUINT32(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
explicit QHostAddress(quint8 *ip6Addr)
*/

/*
explicit QHostAddress(const quint8 *ip6Addr)
*/

/*
explicit QHostAddress(const Q_IPV6ADDR &ip6Addr)
*/

/*
explicit QHostAddress(const sockaddr *address)
*/

/*
explicit QHostAddress(const QString &address)
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW7 )
{
  auto obj = new QHostAddress( PQSTRING(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QHostAddress(const QHostAddress &copy)
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW8 )
{
  auto obj = new QHostAddress( *PQHOSTADDRESS(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QHostAddress(SpecialAddress address)
*/
HB_FUNC_STATIC( QHOSTADDRESS_NEW9 )
{
  auto obj = new QHostAddress( (QHostAddress::SpecialAddress) hb_parni(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
[1]QHostAddress()
[2]explicit QHostAddress(quint32 ip4Addr)
[3]explicit QHostAddress(quint8 *ip6Addr)
[4]explicit QHostAddress(const quint8 *ip6Addr)
[5]explicit QHostAddress(const Q_IPV6ADDR &ip6Addr)
[6]explicit QHostAddress(const sockaddr *address)
[7]explicit QHostAddress(const QString &address)
[8]QHostAddress(const QHostAddress &copy)
[9]QHostAddress(SpecialAddress address)
*/

HB_FUNC_STATIC( QHOSTADDRESS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW7 );
  }
  else if( ISNUMPAR(1) && ISQHOSTADDRESS(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW8 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QHOSTADDRESS_NEW9 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QHostAddress()
*/
HB_FUNC_STATIC( QHOSTADDRESS_DELETE )
{
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void swap(QHostAddress &other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QHOSTADDRESS_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQHOSTADDRESS(1) )
    {
#endif
      obj->swap( *PQHOSTADDRESS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setAddress(quint32 ip4Addr)
*/
void QHostAddress_setAddress1()
{
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setAddress( PQUINT32(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAddress(quint8 *ip6Addr)
*/

/*
void setAddress(const quint8 *ip6Addr)
*/

/*
void setAddress(const Q_IPV6ADDR &ip6Addr)
*/

/*
void setAddress(const sockaddr *address)
*/

/*
bool setAddress(const QString &address)
*/
void QHostAddress_setAddress6()
{
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->setAddress( PQSTRING(1) ) );
  }
}

/*
void setAddress(SpecialAddress address)
*/
void QHostAddress_setAddress7()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setAddress( (QHostAddress::SpecialAddress) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
[1]void setAddress(quint32 ip4Addr)
[2]void setAddress(quint8 *ip6Addr)
[3]void setAddress(const quint8 *ip6Addr)
[4]void setAddress(const Q_IPV6ADDR &ip6Addr)
[5]void setAddress(const sockaddr *address)
[6]bool setAddress(const QString &address)
[7]void setAddress(SpecialAddress address)
*/

HB_FUNC_STATIC( QHOSTADDRESS_SETADDRESS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QHostAddress_setAddress1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QHostAddress_setAddress6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractSocket::NetworkLayerProtocol protocol() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_PROTOCOL )
{
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->protocol() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
quint32 toIPv4Address() const
*/
void QHostAddress_toIPv4Address1()
{
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RQUINT32( obj->toIPv4Address() );
  }
}

/*
quint32 toIPv4Address(bool *ok) const
*/
void QHostAddress_toIPv4Address2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    bool par1;
    RQUINT32( obj->toIPv4Address( &par1 ) );
    hb_storl( par1, 1 );
  }
#endif
}

/*
[1]quint32 toIPv4Address() const
[2]quint32 toIPv4Address(bool *ok) const
*/

HB_FUNC_STATIC( QHOSTADDRESS_TOIPV4ADDRESS )
{
  if( ISNUMPAR(0) )
  {
    QHostAddress_toIPv4Address1();
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    QHostAddress_toIPv4Address2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Q_IPV6ADDR toIPv6Address() const
*/

/*
QString toString() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_TOSTRING )
{
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toString() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString scopeId() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_SCOPEID )
{
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->scopeId() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setScopeId(const QString &id)
*/
HB_FUNC_STATIC( QHOSTADDRESS_SETSCOPEID )
{
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setScopeId( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isEqual(const QHostAddress &address, ConversionMode mode = TolerantConversion) const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISEQUAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQHOSTADDRESS(1) && ISOPTNUM(2) )
    {
#endif
      RBOOL( obj->isEqual( *PQHOSTADDRESS(1), ISNIL(2)? (QHostAddress::ConversionMode) QHostAddress::TolerantConversion : (QHostAddress::ConversionMode) hb_parni(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISNULL )
{
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QHOSTADDRESS_CLEAR )
{
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isInSubnet(const QHostAddress &subnet, int netmask) const
*/
void QHostAddress_isInSubnet1()
{
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RBOOL( obj->isInSubnet( *PQHOSTADDRESS(1), PINT(2) ) );
  }
}

/*
bool isInSubnet(const QPair<QHostAddress, int> &subnet) const
*/

/*
[1]bool isInSubnet(const QHostAddress &subnet, int netmask) const
[2]bool isInSubnet(const QPair<QHostAddress, int> &subnet) const
*/

HB_FUNC_STATIC( QHOSTADDRESS_ISINSUBNET )
{
  if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISNUM(2) )
  {
    QHostAddress_isInSubnet1();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isLoopback() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISLOOPBACK )
{
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isLoopback() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isMulticast() const
*/
HB_FUNC_STATIC( QHOSTADDRESS_ISMULTICAST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  auto obj = (QHostAddress *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMulticast() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
static QPair<QHostAddress, int> parseSubnet(const QString &subnet)
*/

HB_FUNC_STATIC( QHOSTADDRESS_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QHOSTADDRESS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QHOSTADDRESS_NEWFROM );
}

HB_FUNC_STATIC( QHOSTADDRESS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QHOSTADDRESS_NEWFROM );
}

HB_FUNC_STATIC( QHOSTADDRESS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QHOSTADDRESS_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
