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

$prototype=QTextFormat()
$internalConstructor=|new1|

$prototype=QTextFormat(int type)
$internalConstructor=|new2|int

$prototype=QTextFormat(const QTextFormat &rhs)
$internalConstructor=|new3|const QTextFormat &

/*
[1]QTextFormat()
[2]QTextFormat(int type)
[3]QTextFormat(const QTextFormat &rhs)
*/

HB_FUNC_STATIC( QTEXTFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextFormat_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextFormat_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTFORMAT(1) )
  {
    QTextFormat_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QTextFormat &other)
$method=|void|swap|QTextFormat &

$prototype=void merge(const QTextFormat &other)
$method=|void|merge|const QTextFormat &

$prototypeV2=bool isValid() const

$prototypeV2=int type() const

$prototypeV2=int objectIndex() const

$prototype=void setObjectIndex(int object)
$method=|void|setObjectIndex|int

$prototype=QVariant property(int propertyId) const
$method=|QVariant|property|int

$prototype=void clearProperty(int propertyId)
$method=|void|clearProperty|int

$prototype=bool hasProperty(int propertyId) const
$method=|bool|hasProperty|int

$prototype=bool boolProperty(int propertyId) const
$method=|bool|boolProperty|int

$prototype=int intProperty(int propertyId) const
$method=|int|intProperty|int

$prototype=qreal doubleProperty(int propertyId) const
$method=|qreal|doubleProperty|int

$prototype=QString stringProperty(int propertyId) const
$method=|QString|stringProperty|int

$prototype=QColor colorProperty(int propertyId) const
$method=|QColor|colorProperty|int

$prototype=QPen penProperty(int propertyId) const
$method=|QPen|penProperty|int

$prototype=QBrush brushProperty(int propertyId) const
$method=|QBrush|brushProperty|int

$prototype=QTextLength lengthProperty(int propertyId) const
$method=|QTextLength|lengthProperty|int

$prototype=QVector<QTextLength> lengthVectorProperty(int propertyId) const
$method=|QVector<QTextLength>|lengthVectorProperty|int

$prototype=void setProperty(int propertyId, const QVariant &value)
$internalMethod=|void|setProperty,setProperty1|int,const QVariant &

$prototype=void setProperty(int propertyId, const QVector<QTextLength> &lengths)
$internalMethod=|void|setProperty,setProperty2|int,const QVector<QTextLength> &

/*
[1]void setProperty(int propertyId, const QVariant &value)
[2]void setProperty(int propertyId, const QVector<QTextLength> &lengths)
*/

HB_FUNC_STATIC( QTEXTFORMAT_SETPROPERTY )
{
  if( ISNUMPAR(1) && ISNUM(1) && ISQVARIANT(2) )
  {
    QTextFormat_setProperty1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) && ISARRAY(2) )
  {
    QTextFormat_setProperty2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setProperty

$prototypeV2=int propertyCount() const

$prototype=void setObjectType(int type)
$method=|void|setObjectType|int

$prototypeV2=int objectType() const

$prototypeV2=bool isCharFormat() const

$prototypeV2=bool isBlockFormat() const

$prototypeV2=bool isListFormat() const

$prototypeV2=bool isFrameFormat() const

$prototypeV2=bool isImageFormat() const

$prototypeV2=bool isTableFormat() const

$prototypeV2=bool isTableCellFormat() const

$prototypeV2=QTextBlockFormat toBlockFormat() const

$prototypeV2=QTextCharFormat toCharFormat() const

$prototypeV2=QTextListFormat toListFormat() const

$prototypeV2=QTextTableFormat toTableFormat() const

$prototypeV2=QTextFrameFormat toFrameFormat() const

$prototypeV2=QTextImageFormat toImageFormat() const

$prototypeV2=QTextTableCellFormat toTableCellFormat() const

$prototype=void setLayoutDirection(Qt::LayoutDirection direction)
$method=|void|setLayoutDirection|Qt::LayoutDirection

$prototypeV2=Qt::LayoutDirection layoutDirection() const

$prototype=void setBackground(const QBrush &brush)
$method=|void|setBackground|const QBrush &

$prototypeV2=QBrush background() const

$prototypeV2=void clearBackground()

$prototype=void setForeground(const QBrush &brush)
$method=|void|setForeground|const QBrush &

$prototypeV2=QBrush foreground() const

$prototypeV2=void clearForeground()

$extraMethods

#pragma ENDDUMP
