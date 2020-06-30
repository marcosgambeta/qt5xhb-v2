%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCollator(const QLocale &locale = QLocale())
$internalConstructor=|new1|const QLocale &=QLocale()

$prototype=QCollator(const QCollator &)
$internalConstructor=|new2|const QCollator &

/*
[1]QCollator(const QLocale &locale = QLocale())
[2]QCollator(const QCollator &)
*/

HB_FUNC_STATIC( QCOLLATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQLOCALE(1)||ISNIL(1)) )
  {
    QCollator_new1();
  }
  else if( ISNUMPAR(1) && ISQCOLLATOR(1) )
  {
    QCollator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void swap( QCollator & other )

$prototypeV2=void setLocale( const QLocale & locale )

$prototypeV2=QLocale locale() const

$prototypeV2=Qt::CaseSensitivity caseSensitivity() const

$prototypeV2=void setCaseSensitivity( Qt::CaseSensitivity cs )

$prototypeV2=void setNumericMode( bool on )

$prototypeV2=bool numericMode() const

$prototypeV2=void setIgnorePunctuation( bool on )

$prototypeV2=bool ignorePunctuation() const

$prototypeV2=QCollatorSortKey sortKey( const QString & string ) const

$extraMethods

#pragma ENDDUMP
