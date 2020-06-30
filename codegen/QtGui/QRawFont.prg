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

#include <QtGui/QImage>
#include <QtGui/QPainterPath>

$prototype=QRawFont()
$internalConstructor=|new1|

$prototype=QRawFont(const QString &fileName,qreal pixelSize,QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting)
$internalConstructor=|new2|const QString &,qreal,QFont::HintingPreference=QFont::PreferDefaultHinting

$prototype=QRawFont(const QByteArray &fontData,qreal pixelSize,QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting)
$internalConstructor=|new3|const QByteArray &,qreal,QFont::HintingPreference=QFont::PreferDefaultHinting

$prototype=QRawFont(const QRawFont &other)
$internalConstructor=|new4|const QRawFont &

/*
[1]QRawFont()
[2]QRawFont(const QString &fileName,qreal pixelSize,QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting)
[3]QRawFont(const QByteArray &fontData,qreal pixelSize,QFont::HintingPreference hintingPreference = QFont::PreferDefaultHinting)
[4]QRawFont(const QRawFont &other)
*/

HB_FUNC_STATIC( QRAWFONT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRawFont_new1();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QRawFont_new2();
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QRawFont_new3();
  }
  else if( ISNUMPAR(1) && ISQRAWFONT(1) )
  {
    QRawFont_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool isValid() const

$prototypeV2=void swap( QRawFont & other )

$prototypeV2=QString familyName() const

$prototypeV2=QString styleName() const

$prototypeV2=QFont::Style style() const

$prototypeV2=int weight() const

$prototypeV2=QVector<quint32> glyphIndexesForString( const QString & text ) const

$prototype=inline QVector<QPointF> advancesForGlyphIndexes(const QVector<quint32> &glyphIndexes) const
$internalMethod=|QVector<QPointF>|advancesForGlyphIndexes,advancesForGlyphIndexes1|const QVector<quint32> &

$prototype=bool advancesForGlyphIndexes(const quint32 *glyphIndexes, QPointF *advances, int numGlyphs) const
%% TODO: implementar
%% $internalMethod=|bool|advancesForGlyphIndexes,advancesForGlyphIndexes2|const quint32 *,QPointF *,int

/*
[1]inline QVector<QPointF> advancesForGlyphIndexes(const QVector<quint32> &glyphIndexes) const
[2]bool advancesForGlyphIndexes(const quint32 *glyphIndexes, QPointF *advances, int numGlyphs) const
*/

HB_FUNC_STATIC( QRAWFONT_ADVANCESFORGLYPHINDEXES )
{
  if( ISNUMPAR(1)  && ISARRAY(1) )
  {
    QRawFont_advancesForGlyphIndexes1();
  }
%%  else if( ISNUMPAR(3)  && ISARRAY(1) && ISQPOINTF(2) && ISNUM(3) )
%%  {
%%    QRawFont_advancesForGlyphIndexes2();
%%  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=advancesForGlyphIndexes

$prototype=bool glyphIndexesForChars(const QChar *chars, int numChars, quint32 *glyphIndexes, int *numGlyphs) const
%% TODO: implementar
%% $method=|bool|glyphIndexesForChars|const QChar *,int,quint32 *,int *

$prototypeV2=QImage alphaMapForGlyph( quint32 glyphIndex, QRawFont::AntialiasingType antialiasingType = QRawFont::SubPixelAntialiasing, const QTransform & transform = QTransform() ) const

$prototypeV2=QPainterPath pathForGlyph( quint32 glyphIndex ) const

$prototypeV2=QRectF boundingRect( quint32 glyphIndex ) const

$prototypeV2=void setPixelSize( qreal pixelSize )

$prototypeV2=qreal pixelSize() const

$prototypeV2=QFont::HintingPreference hintingPreference() const

$prototypeV2=qreal ascent() const

$prototypeV2=qreal descent() const

$prototypeV2=qreal leading() const

$prototypeV2=qreal xHeight() const

$prototypeV2=qreal averageCharWidth() const

$prototypeV2=qreal maxCharWidth() const

$prototypeV2=qreal lineThickness() const

$prototypeV2=qreal underlinePosition() const

$prototypeV2=qreal unitsPerEm() const

$prototypeV2=void loadFromFile( const QString & fileName, qreal pixelSize, QFont::HintingPreference hintingPreference )

$prototypeV2=void loadFromData( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference )

$prototype=bool supportsCharacter(uint ucs4) const
$internalMethod=|bool|supportsCharacter,supportsCharacter1|uint

$prototype=bool supportsCharacter(QChar character) const
$internalMethod=|bool|supportsCharacter,supportsCharacter2|QChar

/*
[1]bool supportsCharacter(uint ucs4) const
[2]bool supportsCharacter(QChar character) const
*/

HB_FUNC_STATIC( QRAWFONT_SUPPORTSCHARACTER )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QRawFont_supportsCharacter1();
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QRawFont_supportsCharacter2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=supportsCharacter

$prototypeV2=QList<QFontDatabase::WritingSystem> supportedWritingSystems() const

$prototypeV2=QByteArray fontTable( const char * tagName ) const

$prototypeV2=static QRawFont fromFont( const QFont & font, QFontDatabase::WritingSystem writingSystem = QFontDatabase::Any )

$extraMethods

#pragma ENDDUMP
