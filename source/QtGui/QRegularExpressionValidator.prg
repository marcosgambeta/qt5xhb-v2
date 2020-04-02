/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGULAREXPRESSION
#endif

CLASS QRegularExpressionValidator INHERIT QValidator

   METHOD new
   METHOD delete
   METHOD regularExpression
   METHOD setRegularExpression

   METHOD onRegularExpressionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRegularExpressionValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QRegularExpressionValidator>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtGui/QRegularExpressionValidator>
#endif

/*
QRegularExpressionValidator(QObject *parent = nullptr)
*/
void QRegularExpressionValidator_new1 ()
{
  auto obj = new QRegularExpressionValidator ( OPQOBJECT(1,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QRegularExpressionValidator(const QRegularExpression &re, QObject *parent = nullptr)
*/
void QRegularExpressionValidator_new2 ()
{
  auto obj = new QRegularExpressionValidator ( *PQREGULAREXPRESSION(1), OPQOBJECT(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

//[1]QRegularExpressionValidator(QObject *parent = nullptr)
//[2]QRegularExpressionValidator(const QRegularExpression &re, QObject *parent = nullptr)

HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QRegularExpressionValidator_new1();
  }
  else if( ISBETWEEN(1,2) && ISQREGULAREXPRESSION(1) && ISOPTQOBJECT(2) )
  {
    QRegularExpressionValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_DELETE )
{
  auto obj = (QRegularExpressionValidator *) Qt5xHb::itemGetPtrStackSelfItem();

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
QRegularExpression regularExpression() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_REGULAREXPRESSION )
{
  auto obj = (QRegularExpressionValidator *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QRegularExpression( obj->regularExpression () );
      Qt5xHb::createReturnClass ( ptr, "QREGULAREXPRESSION", true );
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
void setRegularExpression(const QRegularExpression &re)
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_SETREGULAREXPRESSION )
{
  auto obj = (QRegularExpressionValidator *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGULAREXPRESSION(1) )
    {
#endif
      obj->setRegularExpression ( *PQREGULAREXPRESSION(1) );
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
void regularExpressionChanged( const QRegularExpression & re )
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_ONREGULAREXPRESSIONCHANGED )
{
  auto sender = (QRegularExpressionValidator *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("regularExpressionChanged(QRegularExpression)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QRegularExpressionValidator::regularExpressionChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QRegularExpression & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QREGULAREXPRESSIONVALIDATOR" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) &arg1, "QREGULAREXPRESSION" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

#pragma ENDDUMP
