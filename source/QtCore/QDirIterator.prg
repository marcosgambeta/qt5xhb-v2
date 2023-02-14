/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFILEINFO
#endif

CLASS QDirIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD fileInfo
   METHOD fileName
   METHOD filePath
   METHOD hasNext
   METHOD next
   METHOD path

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDirIterator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QDirIterator>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QDirIterator>
#endif

HB_FUNC_STATIC( QDIRITERATOR_NEW )
{
  if( ISBETWEEN(1, 2) && ISQDIR(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
    /*
    QDirIterator( const QDir & dir, QDirIterator::IteratorFlags flags = QDirIterator::NoIteratorFlags )
    */
    auto obj = new QDirIterator( *PQDIR(1), HB_ISNIL(2) ? static_cast<QDirIterator::IteratorFlags >( QDirIterator::NoIteratorFlags ) : static_cast<QDirIterator::IteratorFlags >( hb_parni(2) ) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
    /*
    QDirIterator( const QString & path, QDirIterator::IteratorFlags flags = QDirIterator::NoIteratorFlags )
    */
    auto obj = new QDirIterator( PQSTRING(1), HB_ISNIL(2) ? static_cast<QDirIterator::IteratorFlags >( QDirIterator::NoIteratorFlags ) : static_cast<QDirIterator::IteratorFlags >( hb_parni(2) ) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISBETWEEN(1, 3) && HB_ISCHAR(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) && ( HB_ISNUM(3) || HB_ISNIL(3) ) )
  {
    /*
    QDirIterator( const QString & path, QDir::Filters filters, QDirIterator::IteratorFlags flags = QDirIterator::NoIteratorFlags )
    */
    auto obj = new QDirIterator( PQSTRING(1), static_cast<QDir::Filters>( hb_parni(2) ), HB_ISNIL(3) ? static_cast<QDirIterator::IteratorFlags >( QDirIterator::NoIteratorFlags ) : static_cast<QDirIterator::IteratorFlags >( hb_parni(3) ) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else if( ISBETWEEN(2, 4) && HB_ISCHAR(1) && HB_ISARRAY(2) && ( HB_ISNUM(3) || HB_ISNIL(3) ) && ( HB_ISNUM(4) || HB_ISNIL(4) ) )
  {
    /*
    QDirIterator( const QString & path, const QStringList & nameFilters, QDir::Filters filters = QDir::NoFilter, QDirIterator::IteratorFlags flags = QDirIterator::NoIteratorFlags )
    */
    auto obj = new QDirIterator( PQSTRING(1), PQSTRINGLIST(2), HB_ISNIL(3) ? static_cast<QDir::Filters >( QDir::NoFilter ) : static_cast<QDir::Filters >( hb_parni(3) ), HB_ISNIL(4) ? static_cast<QDirIterator::IteratorFlags >( QDirIterator::NoIteratorFlags ) : static_cast<QDirIterator::IteratorFlags >( hb_parni(4) ) );
    Qt5xHb::returnNewObject( obj, true );

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDIRITERATOR_DELETE )
{
  auto obj = static_cast<QDirIterator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QFileInfo fileInfo() const
*/
HB_FUNC_STATIC( QDIRITERATOR_FILEINFO )
{
  auto obj = static_cast<QDirIterator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QFileInfo( obj->fileInfo() );
      Qt5xHb::createReturnClass(ptr, "QFILEINFO", true);
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
QString fileName() const
*/
HB_FUNC_STATIC( QDIRITERATOR_FILENAME )
{
  auto obj = static_cast<QDirIterator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->fileName() );
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
QString filePath() const
*/
HB_FUNC_STATIC( QDIRITERATOR_FILEPATH )
{
  auto obj = static_cast<QDirIterator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->filePath() );
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
bool hasNext() const
*/
HB_FUNC_STATIC( QDIRITERATOR_HASNEXT )
{
  auto obj = static_cast<QDirIterator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasNext() );
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
QString next()
*/
HB_FUNC_STATIC( QDIRITERATOR_NEXT )
{
  auto obj = static_cast<QDirIterator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->next() );
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
QString path() const
*/
HB_FUNC_STATIC( QDIRITERATOR_PATH )
{
  auto obj = static_cast<QDirIterator*>(Qt5xHb::itemGetPtrStackSelfItem());

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->path() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QDIRITERATOR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QDIRITERATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDIRITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QDIRITERATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDIRITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QDIRITERATOR_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QDIRITERATOR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(nullptr, hb_parl(1));
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
