%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAtomicInt ( int value = 0 )
$internalConstructor=|new1|int=0

$prototype=QAtomicInt ( const QAtomicInt & other )
$internalConstructor=|new2|const QAtomicInt &

//[1]QAtomicInt(int value = 0)
//[2]QAtomicInt(const QAtomicInt & other)

HB_FUNC_STATIC( QATOMICINT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QAtomicInt_new1();
  }
  else if( ISNUMPAR(1) && ISQATOMICINT(1) )
  {
    QAtomicInt_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool deref()

$prototype=int fetchAndAddAcquire ( int valueToAdd )
$method=|int|fetchAndAddAcquire|int

$prototype=int fetchAndAddOrdered ( int valueToAdd )
$method=|int|fetchAndAddOrdered|int

$prototype=int fetchAndAddRelaxed ( int valueToAdd )
$method=|int|fetchAndAddRelaxed|int

$prototype=int fetchAndAddRelease ( int valueToAdd )
$method=|int|fetchAndAddRelease|int

$prototype=int fetchAndStoreAcquire ( int newValue )
$method=|int|fetchAndStoreAcquire|int

$prototype=int fetchAndStoreOrdered ( int newValue )
$method=|int|fetchAndStoreOrdered|int

$prototype=int fetchAndStoreRelaxed ( int newValue )
$method=|int|fetchAndStoreRelaxed|int

$prototype=int fetchAndStoreRelease ( int newValue )
$method=|int|fetchAndStoreRelease|int

$prototypeV2=bool ref()

$prototype=bool testAndSetAcquire ( int expectedValue, int newValue )
$method=|bool|testAndSetAcquire|int,int

$prototype=bool testAndSetOrdered ( int expectedValue, int newValue )
$method=|bool|testAndSetOrdered|int,int

$prototype=bool testAndSetRelaxed ( int expectedValue, int newValue )
$method=|bool|testAndSetRelaxed|int,int

$prototype=bool testAndSetRelease ( int expectedValue, int newValue )
$method=|bool|testAndSetRelease|int,int

$prototypeV2=static bool isFetchAndAddNative()

$prototypeV2=static bool isFetchAndAddWaitFree()

$prototypeV2=static bool isFetchAndStoreNative()

$prototypeV2=static bool isFetchAndStoreWaitFree()

$prototypeV2=static bool isReferenceCountingNative()

$prototypeV2=static bool isReferenceCountingWaitFree()

$prototypeV2=static bool isTestAndSetNative()

$prototypeV2=static bool isTestAndSetWaitFree()

$extraMethods

#pragma ENDDUMP
