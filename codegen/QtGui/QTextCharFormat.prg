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

$beginClassFrom=QTextFormat

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextCharFormat()
$constructor=|new|

$deleteMethod

$prototypeV2=bool isValid() const

$prototypeV2=void setFont( const QFont & font )

$prototypeV2=QFont font() const

$prototypeV2=void setFontFamily( const QString & family )

$prototypeV2=QString fontFamily() const

$prototypeV2=void setFontPointSize( qreal size )

$prototypeV2=qreal fontPointSize() const

$prototypeV2=void setFontWeight( int weight )

$prototypeV2=int fontWeight() const

$prototypeV2=void setFontItalic( bool italic )

$prototypeV2=bool fontItalic() const

$prototypeV2=void setFontCapitalization( QFont::Capitalization capitalization )

$prototypeV2=QFont::Capitalization fontCapitalization() const

$prototypeV2=void setFontLetterSpacingType( QFont::SpacingType letterSpacingType )

$prototypeV2=QFont::SpacingType fontLetterSpacingType() const

$prototypeV2=void setFontLetterSpacing( qreal spacing )

$prototypeV2=qreal fontLetterSpacing() const

$prototypeV2=void setFontWordSpacing( qreal spacing )

$prototypeV2=qreal fontWordSpacing() const

$prototypeV2=void setFontUnderline( bool underline )

$prototypeV2=bool fontUnderline() const

$prototypeV2=void setFontOverline( bool overline )

$prototypeV2=bool fontOverline() const

$prototypeV2=void setFontStrikeOut( bool strikeOut )

$prototypeV2=bool fontStrikeOut() const

$prototypeV2=void setUnderlineColor( const QColor & color )

$prototypeV2=QColor underlineColor() const

$prototypeV2=void setFontFixedPitch( bool fixedPitch )

$prototypeV2=bool fontFixedPitch() const

$prototypeV2=void setFontStretch( int factor )

$prototypeV2=int fontStretch() const

$prototypeV2=void setFontStyleHint( QFont::StyleHint hint, QFont::StyleStrategy strategy = QFont::PreferDefault )

$prototypeV2=void setFontStyleStrategy( QFont::StyleStrategy strategy )

$prototypeV2=QFont::StyleHint fontStyleHint() const

$prototypeV2=QFont::StyleStrategy fontStyleStrategy() const

$prototypeV2=void setFontHintingPreference( QFont::HintingPreference hintingPreference )

$prototypeV2=QFont::HintingPreference fontHintingPreference() const

$prototypeV2=void setFontKerning( bool enable )

$prototypeV2=bool fontKerning() const

$prototypeV2=void setUnderlineStyle( QTextCharFormat::UnderlineStyle style )

$prototypeV2=QTextCharFormat::UnderlineStyle underlineStyle() const

$prototypeV2=void setVerticalAlignment( QTextCharFormat::VerticalAlignment alignment )

$prototypeV2=QTextCharFormat::VerticalAlignment verticalAlignment() const

$prototypeV2=void setTextOutline( const QPen & pen )

$prototypeV2=QPen textOutline() const

$prototypeV2=void setToolTip( const QString & tip )

$prototypeV2=QString toolTip() const

$prototypeV2=void setAnchor( bool anchor )

$prototypeV2=bool isAnchor() const

$prototypeV2=void setAnchorHref( const QString & value )

$prototypeV2=QString anchorHref() const

$prototypeV2=void setAnchorName( const QString & name )

$prototypeV2=QString anchorName() const

$prototypeV2=void setAnchorNames( const QStringList & names )

$prototypeV2=QStringList anchorNames() const

$prototypeV2=void setTableCellRowSpan( int tableCellRowSpan )

$prototypeV2=int tableCellRowSpan() const

$prototypeV2=void setTableCellColumnSpan( int tableCellColumnSpan )

$prototypeV2=int tableCellColumnSpan() const

#pragma ENDDUMP
