/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPUSHBUTTON
#endif

CLASS QDialogButtonBox INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD addButton
   METHOD button
   METHOD buttonRole
   METHOD centerButtons
   METHOD clear
   METHOD orientation
   METHOD removeButton
   METHOD setCenterButtons
   METHOD setOrientation
   METHOD setStandardButtons
   METHOD standardButton
   METHOD standardButtons

   METHOD onAccepted
   METHOD onClicked
   METHOD onHelpRequested
   METHOD onRejected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDialogButtonBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QDialogButtonBox>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QDialogButtonBox>
#endif

#include <QtWidgets/QPushButton>

/*
QDialogButtonBox( QWidget * parent = nullptr )
*/
void QDialogButtonBox_new1()
{
  auto obj = new QDialogButtonBox( OPQWIDGET(1,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QDialogButtonBox( Qt::Orientation orientation, QWidget * parent = nullptr )
*/
void QDialogButtonBox_new2()
{
  auto obj = new QDialogButtonBox( (Qt::Orientation) hb_parni(1), OPQWIDGET(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QDialogButtonBox( QDialogButtonBox::StandardButtons buttons, Qt::Orientation orientation = Qt::Horizontal, QWidget * parent = nullptr )
*/
void QDialogButtonBox_new3()
{
  auto obj = new QDialogButtonBox( (QDialogButtonBox::StandardButtons) hb_parni(1), ISNIL(2)? (Qt::Orientation) Qt::Horizontal : (Qt::Orientation) hb_parni(2), OPQWIDGET(3,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QDIALOGBUTTONBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QDialogButtonBox_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QDialogButtonBox_new2();
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    QDialogButtonBox_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDIALOGBUTTONBOX_DELETE )
{
  auto obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addButton( QAbstractButton * button, QDialogButtonBox::ButtonRole role )
*/
void QDialogButtonBox_addButton1()
{
  auto obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->addButton( PQABSTRACTBUTTON(1), (QDialogButtonBox::ButtonRole) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPushButton * addButton( const QString & text, QDialogButtonBox::ButtonRole role )
*/
void QDialogButtonBox_addButton2()
{
  auto obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QPushButton * ptr = obj->addButton( PQSTRING(1), (QDialogButtonBox::ButtonRole) hb_parni(2) );
    Qt5xHb::createReturnQWidgetClass( ptr, "QPUSHBUTTON" );
  }
}

/*
QPushButton * addButton( QDialogButtonBox::StandardButton button )
*/
void QDialogButtonBox_addButton3()
{
  auto obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QPushButton * ptr = obj->addButton( (QDialogButtonBox::StandardButton) hb_parni(1) );
    Qt5xHb::createReturnQWidgetClass( ptr, "QPUSHBUTTON" );
  }
}

HB_FUNC_STATIC( QDIALOGBUTTONBOX_ADDBUTTON )
{
  if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    QDialogButtonBox_addButton1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QDialogButtonBox_addButton2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDialogButtonBox_addButton3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPushButton * button( QDialogButtonBox::StandardButton which ) const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_BUTTON )
{
  auto obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QPushButton * ptr = obj->button( (QDialogButtonBox::StandardButton) hb_parni(1) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QPUSHBUTTON" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDialogButtonBox::ButtonRole buttonRole( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_BUTTONROLE )
{
  auto obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
    {
#endif
      RENUM( obj->buttonRole( PQABSTRACTBUTTON(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool centerButtons() const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_CENTERBUTTONS )
{
  auto obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->centerButtons() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_CLEAR )
{
  auto obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

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
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_ORIENTATION )
{
  auto obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->orientation() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void removeButton( QAbstractButton * button )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_REMOVEBUTTON )
{
  auto obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
    {
#endif
      obj->removeButton( PQABSTRACTBUTTON(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCenterButtons( bool center )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_SETCENTERBUTTONS )
{
  auto obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setCenterButtons( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOrientation( Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_SETORIENTATION )
{
  auto obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOrientation( (Qt::Orientation) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStandardButtons( QDialogButtonBox::StandardButtons buttons )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_SETSTANDARDBUTTONS )
{
  auto obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setStandardButtons( (QDialogButtonBox::StandardButtons) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDialogButtonBox::StandardButton standardButton( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_STANDARDBUTTON )
{
  auto obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
    {
#endif
      RENUM( obj->standardButton( PQABSTRACTBUTTON(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDialogButtonBox::StandardButtons standardButtons() const
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_STANDARDBUTTONS )
{
  auto obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->standardButtons() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void accepted()
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_ONACCEPTED )
{
  auto sender = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("accepted()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDialogButtonBox::accepted, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QDIALOGBUTTONBOX" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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

/*
void clicked( QAbstractButton * button )
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_ONCLICKED )
{
  auto sender = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("clicked(QAbstractButton*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDialogButtonBox::clicked, 
                                                              [sender, indexOfCodeBlock]
                                                              (QAbstractButton * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QDIALOGBUTTONBOX" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject( (QObject *) arg1, "QABSTRACTBUTTON" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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

/*
void helpRequested()
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_ONHELPREQUESTED )
{
  auto sender = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("helpRequested()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDialogButtonBox::helpRequested, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QDIALOGBUTTONBOX" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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

/*
void rejected()
*/
HB_FUNC_STATIC( QDIALOGBUTTONBOX_ONREJECTED )
{
  auto sender = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("rejected()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDialogButtonBox::rejected, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QDIALOGBUTTONBOX" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
