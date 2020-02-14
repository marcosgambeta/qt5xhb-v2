%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEventTransition

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QPainterPath>

$prototype=QMouseEventTransition ( QState * sourceState = nullptr )
$internalConstructor=|new1|QState *=nullptr

$prototype=QMouseEventTransition ( QObject * object, QEvent::Type type, Qt::MouseButton button, QState * sourceState = nullptr )
$internalConstructor=|new2|QObject *,QEvent::Type,Qt::MouseButton,QState *=nullptr

//[1]QMouseEventTransition ( QState * sourceState = nullptr )
//[2]QMouseEventTransition ( QObject * object, QEvent::Type type, Qt::MouseButton button, QState * sourceState = nullptr )

HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QMouseEventTransition_new1();
  }
  else if( ISBETWEEN(3,4) && ISQOBJECT(1) && ISNUM(2) && ISNUM(3) && (ISQSTATE(4)||ISNIL(4)) )
  {
    QMouseEventTransition_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=Qt::MouseButton button () const
$method=|Qt::MouseButton|button|

$prototype=QPainterPath hitTestPath () const
$method=|QPainterPath|hitTestPath|

$prototype=Qt::KeyboardModifiers modifierMask () const
$method=|Qt::KeyboardModifiers|modifierMask|

$prototype=void setButton ( Qt::MouseButton button )
$method=|void|setButton|Qt::MouseButton

$prototype=void setHitTestPath ( const QPainterPath & path )
$method=|void|setHitTestPath|const QPainterPath &

$prototype=void setModifierMask ( Qt::KeyboardModifiers modifierMask )
$method=|void|setModifierMask|Qt::KeyboardModifiers

#pragma ENDDUMP
