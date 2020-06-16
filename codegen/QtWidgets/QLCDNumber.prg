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

$beginClassFrom=QFrame

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QLCDNumber ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=QLCDNumber ( uint numDigits, QWidget * parent = nullptr )
$internalConstructor=|new2|uint,QWidget *=nullptr

/*
[1]QLCDNumber ( QWidget * parent = nullptr )
[2]QLCDNumber ( uint numDigits, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QLCDNUMBER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QLCDNumber_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQWIDGET(2) )
  {
    QLCDNumber_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool checkOverflow ( double num ) const
$internalMethod=|bool|checkOverflow,checkOverflow1|double

$prototype=bool checkOverflow ( int num ) const
$internalMethod=|bool|checkOverflow,checkOverflow2|int

/*
[1]bool checkOverflow ( double num ) const
[2]bool checkOverflow ( int num ) const
*/

HB_FUNC_STATIC( QLCDNUMBER_CHECKOVERFLOW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    PHB_ITEM pNum = hb_param(1, HB_IT_NUMERIC);
    if( pNum )
    {
      if( HB_IS_DOUBLE(pNum) )
      {
        QLCDNumber_checkOverflow1();
      }
      else if( HB_IS_INTEGER(pNum) )
      {
        QLCDNumber_checkOverflow2();
      }
      else
      {
        hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      }
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=checkOverflow

$prototypeV2=int digitCount() const

$prototypeV2=int intValue() const

$prototypeV2=QLCDNumber::Mode mode() const

$prototypeV2=QLCDNumber::SegmentStyle segmentStyle() const

$prototype=void setDigitCount ( int numDigits )
$method=|void|setDigitCount|int

$prototype=void setMode ( Mode )
$method=|void|setMode|QLCDNumber::Mode

$prototype=void setSegmentStyle ( SegmentStyle )
$method=|void|setSegmentStyle|QLCDNumber::SegmentStyle

$prototypeV2=bool smallDecimalPoint() const

$prototypeV2=double value() const

$prototypeV2=virtual QSize sizeHint() const

$prototype=void display ( const QString & s )
$internalMethod=|void|display,display1|const QString &

$prototype=void display ( double num )
$internalMethod=|void|display,display2|double

$prototype=void display ( int num )
$internalMethod=|void|display,display3|int

/*
[1]void display ( const QString & s )
[2]void display ( double num )
[3]void display ( int num )
*/

HB_FUNC_STATIC( QLCDNUMBER_DISPLAY )
{
  if( ISNUMPAR(1) )
  {
    if( ISCHAR(1) )
    {
      QLCDNumber_display1();
    }
    else if( ISNUM(1) )
    {
      PHB_ITEM pNum = hb_param(1, HB_IT_NUMERIC);
      if( pNum )
      {
        if( HB_IS_DOUBLE(pNum) )
        {
          QLCDNumber_display2();
        }
        else if( HB_IS_INTEGER(pNum) )
        {
          QLCDNumber_display3();
        }
        else
        {
          hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
        }
      }
      else
      {
        hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
      }
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=display

$prototypeV2=void setBinMode()

$prototypeV2=void setDecMode()

$prototypeV2=void setHexMode()

$prototypeV2=void setOctMode()

$prototype=void setSmallDecimalPoint ( bool )
$method=|void|setSmallDecimalPoint|bool

%%
%% SIGNALS
%%

$prototype=void overflow()
$signalMethod=|void|overflow|

#pragma ENDDUMP
