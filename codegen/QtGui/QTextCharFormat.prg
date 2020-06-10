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

$prototype=void setFont(const QFont &font)
$method=|void|setFont|const QFont &

$prototypeV2=QFont font() const

$prototype=void setFontFamily(const QString &family)
$method=|void|setFontFamily|const QString &

$prototypeV2=QString fontFamily() const

$prototype=void setFontPointSize(qreal size)
$method=|void|setFontPointSize|qreal

$prototypeV2=qreal fontPointSize() const

$prototype=void setFontWeight(int weight)
$method=|void|setFontWeight|int

$prototypeV2=int fontWeight() const

$prototype=void setFontItalic(bool italic)
$method=|void|setFontItalic|bool

$prototypeV2=bool fontItalic() const

$prototype=void setFontCapitalization(QFont::Capitalization capitalization)
$method=|void|setFontCapitalization|QFont::Capitalization

$prototypeV2=QFont::Capitalization fontCapitalization() const

$prototype=void setFontLetterSpacingType(QFont::SpacingType letterSpacingType)
$method=|void|setFontLetterSpacingType|QFont::SpacingType

$prototypeV2=QFont::SpacingType fontLetterSpacingType() const

$prototype=void setFontLetterSpacing(qreal spacing)
$method=|void|setFontLetterSpacing|qreal

$prototypeV2=qreal fontLetterSpacing() const

$prototype=void setFontWordSpacing(qreal spacing)
$method=|void|setFontWordSpacing|qreal

$prototypeV2=qreal fontWordSpacing() const

$prototype=void setFontUnderline(bool underline)
$method=|void|setFontUnderline|bool

$prototypeV2=bool fontUnderline() const

$prototype=void setFontOverline(bool overline)
$method=|void|setFontOverline|bool

$prototypeV2=bool fontOverline() const

$prototype=void setFontStrikeOut(bool strikeOut)
$method=|void|setFontStrikeOut|bool

$prototypeV2=bool fontStrikeOut() const

$prototype=void setUnderlineColor(const QColor &color)
$method=|void|setUnderlineColor|const QColor &

$prototypeV2=QColor underlineColor() const

$prototype=void setFontFixedPitch(bool fixedPitch)
$method=|void|setFontFixedPitch|bool

$prototypeV2=bool fontFixedPitch() const

$prototype=void setFontStretch(int factor)
$method=|void|setFontStretch|int

$prototypeV2=int fontStretch() const

$prototype=void setFontStyleHint(QFont::StyleHint hint, QFont::StyleStrategy strategy = QFont::PreferDefault)
$method=|void|setFontStyleHint|QFont::StyleHint,QFont::StyleStrategy=QFont::PreferDefault

$prototype=void setFontStyleStrategy(QFont::StyleStrategy strategy)
$method=|void|setFontStyleStrategy|QFont::StyleStrategy

$prototypeV2=QFont::StyleHint fontStyleHint() const

$prototypeV2=QFont::StyleStrategy fontStyleStrategy() const

$prototype=void setFontHintingPreference(QFont::HintingPreference hintingPreference)
$method=|void|setFontHintingPreference|QFont::HintingPreference

$prototypeV2=QFont::HintingPreference fontHintingPreference() const

$prototype=void setFontKerning(bool enable)
$method=|void|setFontKerning|bool

$prototypeV2=bool fontKerning() const

$prototype=void setUnderlineStyle(UnderlineStyle style)
$method=|void|setUnderlineStyle|QTextCharFormat::UnderlineStyle

$prototypeV2=QTextCharFormat::UnderlineStyle underlineStyle() const

$prototype=void setVerticalAlignment(VerticalAlignment alignment)
$method=|void|setVerticalAlignment|QTextCharFormat::VerticalAlignment

$prototypeV2=QTextCharFormat::VerticalAlignment verticalAlignment() const

$prototype=void setTextOutline(const QPen &pen)
$method=|void|setTextOutline|const QPen &

$prototypeV2=QPen textOutline() const

$prototype=void setToolTip(const QString &tip)
$method=|void|setToolTip|const QString &

$prototypeV2=QString toolTip() const

$prototype=void setAnchor(bool anchor)
$method=|void|setAnchor|bool

$prototypeV2=bool isAnchor() const

$prototype=void setAnchorHref(const QString &value)
$method=|void|setAnchorHref|const QString &

$prototypeV2=QString anchorHref() const

$prototype=void setAnchorName(const QString &name)
$method=|void|setAnchorName|const QString &

$prototypeV2=QString anchorName() const

$prototype=void setAnchorNames(const QStringList &names)
$method=|void|setAnchorNames|const QStringList &

$prototypeV2=QStringList anchorNames() const

$prototype=void setTableCellRowSpan(int tableCellRowSpan)
$method=|void|setTableCellRowSpan|int

$prototypeV2=int tableCellRowSpan() const

$prototype=void setTableCellColumnSpan(int tableCellColumnSpan)
$method=|void|setTableCellColumnSpan|int

$prototypeV2=int tableCellColumnSpan() const

#pragma ENDDUMP
