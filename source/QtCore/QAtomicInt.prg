/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QAtomicInt

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD deref
   METHOD fetchAndAddAcquire
   METHOD fetchAndAddOrdered
   METHOD fetchAndAddRelaxed
   METHOD fetchAndAddRelease
   METHOD fetchAndStoreAcquire
   METHOD fetchAndStoreOrdered
   METHOD fetchAndStoreRelaxed
   METHOD fetchAndStoreRelease
   METHOD ref
   METHOD testAndSetAcquire
   METHOD testAndSetOrdered
   METHOD testAndSetRelaxed
   METHOD testAndSetRelease
   METHOD isFetchAndAddNative
   METHOD isFetchAndAddWaitFree
   METHOD isFetchAndStoreNative
   METHOD isFetchAndStoreWaitFree
   METHOD isReferenceCountingNative
   METHOD isReferenceCountingWaitFree
   METHOD isTestAndSetNative
   METHOD isTestAndSetWaitFree

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAtomicInt
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QAtomicInt>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QAtomicInt>
#endif

HB_FUNC_STATIC( QATOMICINT_NEW )
{
  if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
  {
    /*
    QAtomicInt( int value = 0 )
    */
    auto obj = new QAtomicInt( OPINT( 1, 0 ) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISNUMPAR(1) && ISQATOMICINT(1) )
  {
    /*
    QAtomicInt( const QAtomicInt & other )
    */
    auto obj = new QAtomicInt( *PQATOMICINT(1) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QATOMICINT_DELETE )
{
  auto obj = static_cast<QAtomicInt*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool deref()
*/
HB_FUNC_STATIC( QATOMICINT_DEREF )
{
  auto obj = static_cast<QAtomicInt*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->deref() );
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
int fetchAndAddAcquire( int valueToAdd )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDADDACQUIRE )
{
  auto obj = static_cast<QAtomicInt*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->fetchAndAddAcquire( PINT(1) ) );
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
int fetchAndAddOrdered( int valueToAdd )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDADDORDERED )
{
  auto obj = static_cast<QAtomicInt*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->fetchAndAddOrdered( PINT(1) ) );
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
int fetchAndAddRelaxed( int valueToAdd )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDADDRELAXED )
{
  auto obj = static_cast<QAtomicInt*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->fetchAndAddRelaxed( PINT(1) ) );
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
int fetchAndAddRelease( int valueToAdd )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDADDRELEASE )
{
  auto obj = static_cast<QAtomicInt*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->fetchAndAddRelease( PINT(1) ) );
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
int fetchAndStoreAcquire( int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDSTOREACQUIRE )
{
  auto obj = static_cast<QAtomicInt*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->fetchAndStoreAcquire( PINT(1) ) );
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
int fetchAndStoreOrdered( int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDSTOREORDERED )
{
  auto obj = static_cast<QAtomicInt*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->fetchAndStoreOrdered( PINT(1) ) );
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
int fetchAndStoreRelaxed( int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDSTORERELAXED )
{
  auto obj = static_cast<QAtomicInt*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->fetchAndStoreRelaxed( PINT(1) ) );
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
int fetchAndStoreRelease( int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_FETCHANDSTORERELEASE )
{
  auto obj = static_cast<QAtomicInt*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->fetchAndStoreRelease( PINT(1) ) );
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
bool ref()
*/
HB_FUNC_STATIC( QATOMICINT_REF )
{
  auto obj = static_cast<QAtomicInt*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->ref() );
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
bool testAndSetAcquire( int expectedValue, int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_TESTANDSETACQUIRE )
{
  auto obj = static_cast<QAtomicInt*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      RBOOL( obj->testAndSetAcquire( PINT(1), PINT(2) ) );
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
bool testAndSetOrdered( int expectedValue, int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_TESTANDSETORDERED )
{
  auto obj = static_cast<QAtomicInt*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      RBOOL( obj->testAndSetOrdered( PINT(1), PINT(2) ) );
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
bool testAndSetRelaxed( int expectedValue, int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_TESTANDSETRELAXED )
{
  auto obj = static_cast<QAtomicInt*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      RBOOL( obj->testAndSetRelaxed( PINT(1), PINT(2) ) );
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
bool testAndSetRelease( int expectedValue, int newValue )
*/
HB_FUNC_STATIC( QATOMICINT_TESTANDSETRELEASE )
{
  auto obj = static_cast<QAtomicInt*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      RBOOL( obj->testAndSetRelease( PINT(1), PINT(2) ) );
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
static bool isFetchAndAddNative()
*/
HB_FUNC_STATIC( QATOMICINT_ISFETCHANDADDNATIVE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QAtomicInt::isFetchAndAddNative() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool isFetchAndAddWaitFree()
*/
HB_FUNC_STATIC( QATOMICINT_ISFETCHANDADDWAITFREE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QAtomicInt::isFetchAndAddWaitFree() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool isFetchAndStoreNative()
*/
HB_FUNC_STATIC( QATOMICINT_ISFETCHANDSTORENATIVE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QAtomicInt::isFetchAndStoreNative() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool isFetchAndStoreWaitFree()
*/
HB_FUNC_STATIC( QATOMICINT_ISFETCHANDSTOREWAITFREE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QAtomicInt::isFetchAndStoreWaitFree() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool isReferenceCountingNative()
*/
HB_FUNC_STATIC( QATOMICINT_ISREFERENCECOUNTINGNATIVE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QAtomicInt::isReferenceCountingNative() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool isReferenceCountingWaitFree()
*/
HB_FUNC_STATIC( QATOMICINT_ISREFERENCECOUNTINGWAITFREE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QAtomicInt::isReferenceCountingWaitFree() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool isTestAndSetNative()
*/
HB_FUNC_STATIC( QATOMICINT_ISTESTANDSETNATIVE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QAtomicInt::isTestAndSetNative() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool isTestAndSetWaitFree()
*/
HB_FUNC_STATIC( QATOMICINT_ISTESTANDSETWAITFREE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QAtomicInt::isTestAndSetWaitFree() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QATOMICINT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, static_cast<void*>(hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0))));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, static_cast<void*>(hb_itemGetPtr(hb_param(1, HB_IT_POINTER))));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QATOMICINT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QATOMICINT_NEWFROM );
}

HB_FUNC_STATIC( QATOMICINT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QATOMICINT_NEWFROM );
}

HB_FUNC_STATIC( QATOMICINT_SELFDESTRUCTION )
{
  hb_retl(static_cast<bool>(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0))));
}

HB_FUNC_STATIC( QATOMICINT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
