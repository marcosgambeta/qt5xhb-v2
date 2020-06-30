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
#include <QtCore/QVariant>

$prototype=QFont ()
$internalConstructor=|new1|

$prototype=QFont ( const QString & family, int pointSize = -1, int weight = -1, bool italic = false )
$internalConstructor=|new2|const QString &,int=-1,int=-1,bool=false

$prototype=QFont ( const QFont & font, QPaintDevice * pd )
$internalConstructor=|new3|const QFont &,QPaintDevice *

$prototype=QFont ( const QFont & font )
$internalConstructor=|new4|const QFont &

/*
[1]QFont ()
[2]QFont ( const QString & family, int pointSize = -1, int weight = -1, bool italic = false )
[3]QFont ( const QFont & font, QPaintDevice * pd )
[4]QFont ( const QFont & font )
*/

HB_FUNC_STATIC( QFONT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QFont_new1();
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) && ISOPTLOG(4) )
  {
    QFont_new2();
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) ) // TODO: implementar ISQPAINTDEVICE
  {
    QFont_new3();
  }
  else if( ISNUMPAR(1) && ISQFONT(1) )
  {
    QFont_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool bold() const

$prototypeV2=QFont::Capitalization capitalization() const

$prototypeV2=QString defaultFamily() const

$prototypeV2=bool exactMatch() const

$prototypeV2=QString family() const

$prototypeV2=bool fixedPitch() const

$prototypeV2=bool fromString( const QString & descrip )

$prototypeV2=bool isCopyOf( const QFont & f ) const

$prototypeV2=bool italic() const

$prototypeV2=bool kerning() const

$prototypeV2=QString key() const

$prototypeV2=QString lastResortFamily() const

$prototypeV2=QString lastResortFont() const

$prototypeV2=qreal letterSpacing() const

$prototypeV2=QFont::SpacingType letterSpacingType() const

$prototypeV2=bool overline() const

$prototypeV2=int pixelSize() const

$prototypeV2=int pointSize() const

$prototypeV2=qreal pointSizeF() const

$prototypeV2=bool rawMode() const

$prototypeV2=QString rawName() const

$prototypeV2=QFont resolve( const QFont & other ) const

$prototypeV2=void setBold( bool enable )

$prototypeV2=void setCapitalization( QFont::Capitalization caps )

$prototypeV2=void setFamily( const QString & family )

$prototypeV2=void setFixedPitch( bool enable )

$prototypeV2=void setItalic( bool enable )

$prototypeV2=void setKerning( bool enable )

$prototypeV2=void setLetterSpacing( QFont::SpacingType type, qreal spacing )

$prototypeV2=void setOverline( bool enable )

$prototypeV2=void setPixelSize( int pixelSize )

$prototypeV2=void setPointSize( int pointSize )

$prototypeV2=void setPointSizeF( qreal pointSize )

$prototypeV2=void setRawMode( bool enable )

$prototypeV2=void setRawName( const QString & name )

$prototypeV2=void setStretch( int factor )

$prototypeV2=void setStrikeOut( bool enable )

$prototypeV2=void setStyle( QFont::Style style )

$prototypeV2=void setStyleHint( QFont::StyleHint hint, QFont::StyleStrategy strategy = QFont::PreferDefault )

$prototypeV2=void setStyleStrategy( QFont::StyleStrategy s )

$prototypeV2=void setUnderline( bool enable )

$prototypeV2=void setWeight( int weight )

$prototypeV2=void setWordSpacing( qreal spacing )

$prototypeV2=int stretch() const

$prototypeV2=bool strikeOut() const

$prototypeV2=QFont::Style style() const

$prototypeV2=QFont::StyleHint styleHint() const

$prototype=QFont::StyleStrategy styleStrategy() const

$prototypeV2=QString toString() const

$prototypeV2=bool underline() const

$prototypeV2=int weight() const

$prototypeV2=qreal wordSpacing() const

$prototypeV2=static void insertSubstitution( const QString & familyName, const QString & substituteName )

$prototypeV2=static void insertSubstitutions( const QString & familyName, const QStringList & substituteNames )

$prototypeV2=static QString substitute( const QString & familyName )

$prototypeV2=static QStringList substitutes( const QString & familyName )

$prototypeV2=static QStringList substitutions()

$variantMethods

$extraMethods

#pragma ENDDUMP
