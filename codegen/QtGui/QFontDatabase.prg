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

#include <QtCore/QStringList>

$prototype=QFontDatabase ()
$constructor=|new|

$deleteMethod

$prototypeV2=bool bold( const QString & family, const QString & style ) const

$prototypeV2=QStringList families( QFontDatabase::WritingSystem writingSystem = QFontDatabase::Any ) const

$prototypeV2=QFont font( const QString & family, const QString & style, int pointSize ) const

$prototypeV2=bool isBitmapScalable( const QString & family, const QString & style = QString() ) const

$prototypeV2=bool isFixedPitch( const QString & family, const QString & style = QString() ) const

$prototypeV2=bool isScalable( const QString & family, const QString & style = QString() ) const

$prototypeV2=bool isSmoothlyScalable( const QString & family, const QString & style = QString() ) const

$prototypeV2=bool italic( const QString & family, const QString & style ) const

$prototypeV2=QList<int> pointSizes( const QString & family, const QString & style = QString() )

$prototypeV2=QList<int> smoothSizes( const QString & family, const QString & style )

$prototype=QString styleString ( const QFont & font )
$internalMethod=|QString|styleString,styleString1|const QFont &

$prototype=QString styleString ( const QFontInfo & fontInfo )
$internalMethod=|QString|styleString,styleString2|const QFontInfo &

/*
[1]QString styleString ( const QFont & font )
[2]QString styleString ( const QFontInfo & fontInfo )
*/

HB_FUNC_STATIC( QFONTDATABASE_STYLESTRING )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    QFontDatabase_styleString1();
  }
  else if( ISNUMPAR(1) && ISQFONTINFO(1) )
  {
    QFontDatabase_styleString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=styleString

$prototypeV2=QStringList styles( const QString & family ) const

$prototypeV2=int weight( const QString & family, const QString & style ) const

$prototypeV2=static int addApplicationFont( const QString & fileName )

$prototypeV2=static int addApplicationFontFromData( const QByteArray & fontData )

$prototypeV2=static QStringList applicationFontFamilies( int id )

$prototypeV2=static bool removeAllApplicationFonts()

$prototypeV2=static bool removeApplicationFont( int id )

$prototypeV2=static QList<int> standardSizes()

$prototypeV2=static bool supportsThreadedFontRendering()

$prototypeV2=static QString writingSystemName( QFontDatabase::WritingSystem writingSystem )

$prototypeV2=static QString writingSystemSample( QFontDatabase::WritingSystem writingSystem )

$extraMethods

#pragma ENDDUMP
