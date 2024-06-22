/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QMediaServiceProviderHint

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD type
   METHOD mimeType
   METHOD codecs
   METHOD device
   METHOD features
   METHOD cameraPosition

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMediaServiceProviderHint
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaServiceProviderHint>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaServiceProviderHint>
#endif

/*
QMediaServiceProviderHint( QCamera::Position position )
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW4 )
{
  auto obj = new QMediaServiceProviderHint( static_cast<QCamera::Position>( hb_parni(1) ) );
  Qt5xHb::returnNewObject(obj, true);
}

/*
QMediaServiceProviderHint( QMediaServiceProviderHint::Features features )
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW5 )
{
  auto obj = new QMediaServiceProviderHint( static_cast<QMediaServiceProviderHint::Features>( hb_parni(1) ) );
  Qt5xHb::returnNewObject(obj, true);
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QMediaServiceProviderHint()
    */
    auto obj = new QMediaServiceProviderHint();
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2)  )
  {
    /*
    QMediaServiceProviderHint( const QString & mimeType, const QStringList & codecs )
    */
    auto obj = new QMediaServiceProviderHint( PQSTRING(1), PQSTRINGLIST(2) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    /*
    QMediaServiceProviderHint( const QByteArray & device )
    */
    auto obj = new QMediaServiceProviderHint( *PQBYTEARRAY(1) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQMEDIASERVICEPROVIDERHINT(1) )
  {
    /*
    QMediaServiceProviderHint( const QMediaServiceProviderHint & other )
    */
    auto obj = new QMediaServiceProviderHint( *PQMEDIASERVICEPROVIDERHINT(1) );
    Qt5xHb::returnNewObject(obj, true);

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QMediaServiceProviderHint()
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_DELETE )
{
  auto obj = static_cast<QMediaServiceProviderHint*>(Qt5xHb::itemGetPtrStackSelfItem());

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
bool isNull() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_ISNULL )
{
  auto obj = static_cast<QMediaServiceProviderHint*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
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
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QMediaServiceProviderHint::Type type() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_TYPE )
{
  auto obj = static_cast<QMediaServiceProviderHint*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
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
QString mimeType() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_MIMETYPE )
{
  auto obj = static_cast<QMediaServiceProviderHint*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->mimeType() );
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
QStringList codecs() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_CODECS )
{
  auto obj = static_cast<QMediaServiceProviderHint*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->codecs() );
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
QByteArray device() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_DEVICE )
{
  auto obj = static_cast<QMediaServiceProviderHint*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QByteArray( obj->device() );
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QMediaServiceProviderHint::Features features() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_FEATURES )
{
  auto obj = static_cast<QMediaServiceProviderHint*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->features() );
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
QCamera::Position cameraPosition() const
*/
HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_CAMERAPOSITION )
{
  auto obj = static_cast<QMediaServiceProviderHint*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->cameraPosition() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEWFROM )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
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

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEWFROM );
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMEDIASERVICEPROVIDERHINT_NEWFROM );
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QMEDIASERVICEPROVIDERHINT_SETSELFDESTRUCTION )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
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
