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

$prototype=void swap(QCollator &other)
$method=|void|swap|QCollator &

$prototype=void setLocale(const QLocale &locale)
$method=|void|setLocale|const QLocale &

$prototypeV2=QLocale locale() const

$prototypeV2=Qt::CaseSensitivity caseSensitivity() const

$prototype=void setCaseSensitivity(Qt::CaseSensitivity cs)
$method=|void|setCaseSensitivity|Qt::CaseSensitivity

$prototype=void setNumericMode(bool on)
$method=|void|setNumericMode|bool

$prototypeV2=bool numericMode() const

$prototype=void setIgnorePunctuation(bool on)
$method=|void|setIgnorePunctuation|bool

$prototypeV2=bool ignorePunctuation() const

$prototype=QCollatorSortKey sortKey(const QString &string) const
$method=|QCollatorSortKey|sortKey|const QString &

$extraMethods

#pragma ENDDUMP
