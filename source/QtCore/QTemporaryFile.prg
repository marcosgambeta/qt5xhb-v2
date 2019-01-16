/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QTemporaryFile INHERIT QFile

   METHOD new
   METHOD delete
   METHOD autoRemove
   METHOD fileTemplate
   METHOD open
   METHOD setAutoRemove
   METHOD setFileTemplate
   METHOD fileName
   METHOD createNativeFile

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTemporaryFile
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTemporaryFile>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QTemporaryFile>
#endif

/*
QTemporaryFile()
*/
void QTemporaryFile_new1 ()
{
  QTemporaryFile * o = new QTemporaryFile ();
  _qt5xhb_returnNewObject( o, false );
}

/*
QTemporaryFile(const QString & templateName)
*/
void QTemporaryFile_new2 ()
{
  QTemporaryFile * o = new QTemporaryFile ( PQSTRING(1) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QTemporaryFile(QObject * parent)
*/
void QTemporaryFile_new3 ()
{
  QTemporaryFile * o = new QTemporaryFile ( PQOBJECT(1) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QTemporaryFile(const QString & templateName, QObject * parent)
*/
void QTemporaryFile_new4 ()
{
  QTemporaryFile * o = new QTemporaryFile ( PQSTRING(1), PQOBJECT(2) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QTemporaryFile()
//[2]QTemporaryFile(const QString & templateName)
//[3]QTemporaryFile(QObject * parent)
//[4]QTemporaryFile(const QString & templateName, QObject * parent)

HB_FUNC_STATIC( QTEMPORARYFILE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTemporaryFile_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTemporaryFile_new2();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QTemporaryFile_new3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QTemporaryFile_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEMPORARYFILE_DELETE )
{
  QTemporaryFile * obj = (QTemporaryFile *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool autoRemove() const
*/
HB_FUNC_STATIC( QTEMPORARYFILE_AUTOREMOVE )
{
  QTemporaryFile * obj = (QTemporaryFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->autoRemove () );
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
QString fileTemplate() const
*/
HB_FUNC_STATIC( QTEMPORARYFILE_FILETEMPLATE )
{
  QTemporaryFile * obj = (QTemporaryFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->fileTemplate () );
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
bool open()
*/
HB_FUNC_STATIC( QTEMPORARYFILE_OPEN )
{
  QTemporaryFile * obj = (QTemporaryFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->open () );
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
void setAutoRemove(bool b)
*/
HB_FUNC_STATIC( QTEMPORARYFILE_SETAUTOREMOVE )
{
  QTemporaryFile * obj = (QTemporaryFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setAutoRemove ( PBOOL(1) );
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
void setFileTemplate(const QString & name)
*/
HB_FUNC_STATIC( QTEMPORARYFILE_SETFILETEMPLATE )
{
  QTemporaryFile * obj = (QTemporaryFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setFileTemplate ( PQSTRING(1) );
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
virtual QString fileName() const
*/
HB_FUNC_STATIC( QTEMPORARYFILE_FILENAME )
{
  QTemporaryFile * obj = (QTemporaryFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->fileName () );
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
static QTemporaryFile * createNativeFile(QFile & file)
*/
void QTemporaryFile_createNativeFile1 ()
{

      QTemporaryFile * ptr = QTemporaryFile::createNativeFile ( *PQFILE(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QTEMPORARYFILE" );
}

/*
static QTemporaryFile * createNativeFile(const QString & fileName)
*/
void QTemporaryFile_createNativeFile2 ()
{

      QTemporaryFile * ptr = QTemporaryFile::createNativeFile ( PQSTRING(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QTEMPORARYFILE" );
}

//[1]QTemporaryFile * createNativeFile(QFile & file)
//[2]QTemporaryFile * createNativeFile(const QString & fileName)

HB_FUNC_STATIC( QTEMPORARYFILE_CREATENATIVEFILE )
{
  if( ISNUMPAR(1) && ISQFILE(1) )
  {
    QTemporaryFile_createNativeFile1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTemporaryFile_createNativeFile2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
