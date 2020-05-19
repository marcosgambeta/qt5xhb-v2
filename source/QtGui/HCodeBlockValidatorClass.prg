/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS HCodeBlockValidator INHERIT QValidator

   METHOD new
   METHOD delete
   METHOD validate
   METHOD fixup

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS HCodeBlockValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include "HCodeBlockValidator.h"

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

/*
explicit HCodeBlockValidator( QObject *parent = nullptr )
*/
void HCodeBlockValidator_new1()
{
  auto obj = new HCodeBlockValidator( OPQOBJECT(1,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
HCodeBlockValidator( PHB_ITEM codeblock, QObject *parent = nullptr )
*/
void HCodeBlockValidator_new2()
{
  auto obj = new HCodeBlockValidator( PBLOCKORSYMBOL(1), OPQOBJECT(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
[1]explicit HCodeBlockValidator( QObject *parent = nullptr )
[2]HCodeBlockValidator( PHB_ITEM codeblock, QObject *parent = nullptr )
*/

HB_FUNC_STATIC( HCODEBLOCKVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HCodeBlockValidator_new1();
  }
  else if( ISBETWEEN(1,2) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HCodeBlockValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( HCODEBLOCKVALIDATOR_DELETE )
{
  auto obj = (HCodeBlockValidator *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
QValidator::State validate( QString & input, int & pos ) const
*/
HB_FUNC_STATIC( HCODEBLOCKVALIDATOR_VALIDATE )
{
}

/*
void fixup( QString & input ) const
*/
HB_FUNC_STATIC( HCODEBLOCKVALIDATOR_FIXUP )
{
}

#pragma ENDDUMP
