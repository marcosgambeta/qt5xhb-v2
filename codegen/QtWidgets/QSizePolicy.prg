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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSizePolicy()
$internalConstructor=|new1|

$prototype=QSizePolicy(Policy horizontal, Policy vertical, ControlType type = DefaultType)
$internalConstructor=|new2|QSizePolicy::Policy,QSizePolicy::Policy,QSizePolicy::ControlType=QSizePolicy::DefaultType

/*
[1]QSizePolicy()
[2]QSizePolicy(Policy horizontal, Policy vertical, ControlType type = DefaultType)
*/

HB_FUNC_STATIC( QSIZEPOLICY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSizePolicy_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QSizePolicy_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QSizePolicy::ControlType controlType() const

$prototypeV2=Qt::Orientations expandingDirections() const

$prototypeV2=bool hasHeightForWidth() const

$prototypeV2=bool hasWidthForHeight() const

$prototypeV2=QSizePolicy::Policy horizontalPolicy() const

$prototypeV2=int horizontalStretch() const

$prototype=void setControlType(ControlType type)
$method=|void|setControlType|QSizePolicy::ControlType

$prototype=void setHeightForWidth(bool dependent)
$method=|void|setHeightForWidth|bool

$prototype=void setHorizontalPolicy(Policy policy)
$method=|void|setHorizontalPolicy|QSizePolicy::Policy

$prototype=void setHorizontalStretch(int stretchFactor)
$method=|void|setHorizontalStretch|int

$prototype=void setVerticalPolicy(Policy policy)
$method=|void|setVerticalPolicy|QSizePolicy::Policy

$prototype=void setVerticalStretch(int stretchFactor)
$method=|void|setVerticalStretch|int

$prototype=void setWidthForHeight(bool dependent)
$method=|void|setWidthForHeight|bool

$prototypeV2=void transpose()

$prototypeV2=QSizePolicy::Policy verticalPolicy() const

$prototypeV2=int verticalStretch() const

$extraMethods

#pragma ENDDUMP
