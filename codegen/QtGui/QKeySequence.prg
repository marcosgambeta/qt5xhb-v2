%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QList>

$prototype=QKeySequence ()
$internalConstructor=|new1|

$prototype=QKeySequence ( const QString & key )
$internalConstructor=|new2|const QString &

$prototype=QKeySequence ( const QString & key, SequenceFormat format )
$internalConstructor=|new3|const QString &,QKeySequence::SequenceFormat

$prototype=QKeySequence ( int k1, int k2 = 0, int k3 = 0, int k4 = 0 )
$internalConstructor=|new4|int,int=0,int=0,int=0

$prototype=QKeySequence ( const QKeySequence & keysequence )
$internalConstructor=|new5|const QKeySequence &

$prototype=QKeySequence ( StandardKey key )
$internalConstructor=|new6|QKeySequence::StandardKey

%% TODO: [6] QKeySequence ( StandardKey key ) conflita com [4]

/*
[1]QKeySequence ()
[2]QKeySequence ( const QString & key )
[3]QKeySequence ( const QString & key, SequenceFormat format )
[4]QKeySequence ( int k1, int k2 = 0, int k3 = 0, int k4 = 0 )
[5]QKeySequence ( const QKeySequence & keysequence )
[6]QKeySequence ( StandardKey key )
*/

HB_FUNC_STATIC( QKEYSEQUENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QKeySequence_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QKeySequence_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QKeySequence_new3();
  }
  else if( ISBETWEEN(1,4) && ISNUM(1) && ISOPTNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QKeySequence_new4();
  }
  else if( ISNUMPAR(1) && ISQKEYSEQUENCE(1) )
  {
    QKeySequence_new5();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QKeySequence_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=uint count() const

$prototypeV2=bool isEmpty() const

$prototypeV2=QKeySequence::SequenceMatch matches( const QKeySequence & seq ) const

$prototypeV2=QString toString( QKeySequence::SequenceFormat format = QKeySequence::PortableText ) const

$prototypeV2=static QKeySequence fromString( const QString & str, QKeySequence::SequenceFormat format = QKeySequence::PortableText )

$prototypeV2=static QList<QKeySequence> keyBindings( QKeySequence::StandardKey key )

$prototypeV2=static QKeySequence mnemonic( const QString & text )

$extraMethods

#pragma ENDDUMP
