%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore
$added=5,6,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QVersionNumber( int maj, int min, int mic)
$internalConstructor=|new1|int,int,int

$prototype=QVersionNumber(int maj, int min)
$internalConstructor=|new2|int,int

$prototype=QVersionNumber(int maj)
$internalConstructor=|new3|int

$prototype=QVersionNumber(std::initializer_list<int> args)

$prototype=QVersionNumber(QVector<int> &&seg)

$prototype=QVersionNumber(const QVector<int> &seg)
%% $internalConstructor=|new6|const QVector<int> &

$prototype=QVersionNumber()
$internalConstructor=|new7|

//[1]QVersionNumber(int maj, int min, int mic)
//[2]QVersionNumber(int maj, int min)
//[3]QVersionNumber(int maj)
//[4]QVersionNumber(std::initializer_list<int> args)
//[5]QVersionNumber(QVector<int> &&seg)
//[6]QVersionNumber(const QVector<int> &seg)
//[7]QVersionNumber()

HB_FUNC( QVERSIONNUMBER_NEW )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QVersionNumber_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QVersionNumber_new2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QVersionNumber_new3();
  }
  else if( ISNUMPAR(0) )
  {
    QVersionNumber_new7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isNormalized() const

$prototypeV2=bool isNull() const

$prototypeV2=bool isPrefixOf( const QVersionNumber & other ) const

$prototypeV2=int majorVersion() const

$prototypeV2=int microVersion() const

$prototypeV2=int minorVersion() const

$prototypeV2=QVersionNumber normalized() const

$prototypeV2=int segmentAt( int index ) const

$prototypeV2=int segmentCount() const

$prototypeV2=QVector<int> segments() const

$prototypeV2=QString toString() const

$prototypeV2=static QVersionNumber commonPrefix( const QVersionNumber & v1, const QVersionNumber & v2 )

$prototypeV2=static int compare( const QVersionNumber & v1, const QVersionNumber & v2 )

$prototypeV2=static QVersionNumber fromString( const QString & string, int * suffixIndex = nullptr )
%% TODO: implementar

$prototypeV2=static QVersionNumber fromString( QLatin1String string, int * suffixIndex = nullptr )
%% TODO: implementar

$prototypeV2=static QVersionNumber fromString( QStringView string, int * suffixIndex = nullptr )
%% TODO: implementar

$extraMethods

#pragma ENDDUMP
