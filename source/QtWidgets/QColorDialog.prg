/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QColorDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD currentColor
   METHOD setCurrentColor
   METHOD open
   METHOD options
   METHOD setOptions
   METHOD selectedColor
   METHOD setOption
   METHOD testOption
   METHOD setVisible
   METHOD customColor
   METHOD setCustomColor
   METHOD customCount
   METHOD getColor
   METHOD standardColor
   METHOD setStandardColor

   METHOD onColorSelected
   METHOD onCurrentColorChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QColorDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QColorDialog>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QColorDialog>
#endif

/*
explicit QColorDialog ( QWidget * parent = nullptr )
*/
void QColorDialog_new1 ()
{
  QColorDialog * o = new QColorDialog ( OPQWIDGET(1,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QColorDialog ( const QColor & initial, QWidget * parent = nullptr )
*/
void QColorDialog_new2 ()
{
  QColorDialog * o = new QColorDialog ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)), OPQWIDGET(2,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]explicit QColorDialog ( QWidget * parent = nullptr )
//[2]explicit QColorDialog ( const QColor & initial, QWidget * parent = nullptr )

HB_FUNC_STATIC( QCOLORDIALOG_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QColorDialog_new1();
  }
  else if( ISBETWEEN(1,2) && (ISQCOLOR(1)||ISCHAR(1)) && ISOPTQWIDGET(2) )
  {
    QColorDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOLORDIALOG_DELETE )
{
  QColorDialog * obj = (QColorDialog *) _qt5xhb_itemGetPtrStackSelfItem();

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
QColor currentColor () const
*/
HB_FUNC_STATIC( QCOLORDIALOG_CURRENTCOLOR )
{
  QColorDialog * obj = (QColorDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->currentColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
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
void setCurrentColor ( const QColor & color )
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETCURRENTCOLOR )
{
  QColorDialog * obj = (QColorDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setCurrentColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
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
void open ()
*/
void QColorDialog_open1 ()
{
#ifdef Q_NO_USING_KEYWORD
  QColorDialog * obj = (QColorDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->open ();
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void open ( QObject * receiver, const char * member )
*/
void QColorDialog_open2 ()
{
  QColorDialog * obj = (QColorDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->open ( PQOBJECT(1), PCONSTCHAR(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void open ()
//[2]void open ( QObject * receiver, const char * member )

HB_FUNC_STATIC( QCOLORDIALOG_OPEN )
{
  if( ISNUMPAR(0) )
  {
    QColorDialog_open1(); // TODO: verificar existencia do metodo no Qt 5
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QColorDialog_open2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
ColorDialogOptions options () const
*/
HB_FUNC_STATIC( QCOLORDIALOG_OPTIONS )
{
  QColorDialog * obj = (QColorDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->options () );
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
void setOptions ( ColorDialogOptions options )
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETOPTIONS )
{
  QColorDialog * obj = (QColorDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOptions ( (QColorDialog::ColorDialogOptions) hb_parni(1) );
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
QColor selectedColor () const
*/
HB_FUNC_STATIC( QCOLORDIALOG_SELECTEDCOLOR )
{
  QColorDialog * obj = (QColorDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->selectedColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
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
void setOption ( ColorDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETOPTION )
{
  QColorDialog * obj = (QColorDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
    {
#endif
      obj->setOption ( (QColorDialog::ColorDialogOption) hb_parni(1), OPBOOL(2,true) );
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
bool testOption ( ColorDialogOption option ) const
*/
HB_FUNC_STATIC( QCOLORDIALOG_TESTOPTION )
{
  QColorDialog * obj = (QColorDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->testOption ( (QColorDialog::ColorDialogOption) hb_parni(1) ) );
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
void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETVISIBLE )
{
  QColorDialog * obj = (QColorDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setVisible ( PBOOL(1) );
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
static QColor customColor(int index)
*/
HB_FUNC_STATIC( QCOLORDIALOG_CUSTOMCOLOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
  {
#endif
      QColor * ptr = new QColor( QColorDialog::customColor ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void setCustomColor(int index, QColor color)
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETCUSTOMCOLOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQCOLOR(2) )
  {
#endif
      QColorDialog::setCustomColor ( PINT(1), *PQCOLOR(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static int customCount ()
*/
HB_FUNC_STATIC( QCOLORDIALOG_CUSTOMCOUNT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      RINT( QColorDialog::customCount () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QColor getColor(const QColor &initial = Qt::white, QWidget *parent = nullptr, const QString &title = QString(), ColorDialogOptions options = 0)
*/
HB_FUNC_STATIC( QCOLORDIALOG_GETCOLOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,4) && (ISQCOLOR(1)||ISNIL(1)) && (ISQWIDGET(2)||ISNIL(2)) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
#endif
      QColor * ptr = new QColor( QColorDialog::getColor ( ISNIL(1)? Qt::white : *(QColor *) _qt5xhb_itemGetPtr(1), OPQWIDGET(2,nullptr), OPQSTRING(3,QString()), ISNIL(4)? (QColorDialog::ColorDialogOptions) 0 : (QColorDialog::ColorDialogOptions) hb_parni(4) ) );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

//
////[1]QColor getColor ( const QColor & initial, QWidget * parent, const QString & title, ColorDialogOptions options = 0 )
////[2]QColor getColor ( const QColor & initial = Qt::white, QWidget * parent = nullptr )
//
//HB_FUNC_STATIC( QCOLORDIALOG_GETCOLOR )
//{
//  if( ISBETWEEN(3,4) && (ISQCOLOR(1)||ISCHAR(1)) && ISQWIDGET(2) && ISCHAR(3) && ISOPTNUM(4) )
//  {
//    HB_FUNC_EXEC( QCOLORDIALOG_GETCOLOR1 );
//  }
//  else if( ISBETWEEN(0,2) && (ISQCOLOR(1)||ISCHAR(1)) && ISOPTQWIDGET(2) )
//  {
//    HB_FUNC_EXEC( QCOLORDIALOG_GETCOLOR2 );
//  }
//  else
//  {
//    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
//  }
//}
//?>

/*
static QColor standardColor(int index)
*/
HB_FUNC_STATIC( QCOLORDIALOG_STANDARDCOLOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
  {
#endif
      QColor * ptr = new QColor( QColorDialog::standardColor ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void setStandardColor(int index, QColor color)
*/
HB_FUNC_STATIC( QCOLORDIALOG_SETSTANDARDCOLOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQCOLOR(2) )
  {
#endif
      QColorDialog::setStandardColor ( PINT(1), *PQCOLOR(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void colorSelected( const QColor & color )
*/
HB_FUNC_STATIC( QCOLORDIALOG_ONCOLORSELECTED )
{
  if( hb_pcount() == 1 )
  {
    QColorDialog * sender = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "colorSelected(QColor)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QColorDialog::colorSelected, 
                                                              [sender]
                                                              (const QColor & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "colorSelected(QColor)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCOLORDIALOG" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QCOLOR" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "colorSelected(QColor)", connection );

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
  else if( hb_pcount() == 0 )
  {
    QColorDialog * sender = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "colorSelected(QColor)" );

      QObject::disconnect( Signals2_get_connection( sender, "colorSelected(QColor)" ) );

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
|currentColorChanged( const QColor & color )
*/
HB_FUNC_STATIC( QCOLORDIALOG_ONCURRENTCOLORCHANGED )
{
  if( hb_pcount() == 1 )
  {
    QColorDialog * sender = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "currentColorChanged(QColor)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QColorDialog::currentColorChanged, 
                                                              [sender]
                                                              (const QColor & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "currentColorChanged(QColor)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QCOLORDIALOG" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QCOLOR" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "currentColorChanged(QColor)", connection );

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
  else if( hb_pcount() == 0 )
  {
    QColorDialog * sender = (QColorDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "currentColorChanged(QColor)" );

      QObject::disconnect( Signals2_get_connection( sender, "currentColorChanged(QColor)" ) );

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
