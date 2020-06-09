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

$prototype=QChar ()
$constructor=|new1|

$prototype=QChar ( char ch )
HB_FUNC_STATIC( QCHAR_NEW2 )
{
  char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  QChar * o = new QChar ( par1 );
  Qt5xHb::returnNewObject( o, false );
}
$addMethod=new2

$prototype=QChar ( uchar ch )
HB_FUNC_STATIC( QCHAR_NEW3 )
{
  uchar par1 = ISCHAR(1)? (uchar) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  QChar * o = new QChar ( par1 );
  Qt5xHb::returnNewObject( o, false );
}
$addMethod=new3

$prototype=QChar ( QLatin1Char ch )
$constructor=|new4|QLatin1Char

$prototype=QChar ( uchar cell, uchar row )
HB_FUNC_STATIC( QCHAR_NEW5 )
{
  uchar par1 = ISCHAR(1)? (uchar) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
  uchar par2 = ISCHAR(2)? (uchar) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0);
  QChar * o = new QChar ( par1, par2 );
  Qt5xHb::returnNewObject( o, false );
}
$addMethod=new5

$prototype=QChar ( ushort code )
$constructor=|new6|ushort

$prototype=QChar ( short code )
$constructor=|new7|short

$prototype=QChar ( uint code )
$constructor=|new8|uint

$prototype=QChar ( int code )
$constructor=|new9|int

$prototype=QChar ( SpecialCharacter ch )
$constructor=|new10|QChar::SpecialCharacter

/*
[01]QChar ()
[02]QChar ( char ch )
[03]QChar ( uchar ch )
[04]QChar ( QLatin1Char ch )
[05]QChar ( uchar cell, uchar row )
[06]QChar ( ushort code )
[07]QChar ( short code )
[08]QChar ( uint code )
[09]QChar ( int code )
[10]QChar ( SpecialCharacter ch )
*/

HB_FUNC_STATIC( QCHAR_NEW ) // TODO: completar implementação
{
  HB_FUNC_EXEC( QCHAR_NEW1 );
}
$addMethod=new

$deleteMethod

$prototypeV2=QChar::Category category() const

$prototypeV2=uchar cell() const

$prototypeV2=unsigned char combiningClass() const

$prototypeV2=QChar::Decomposition decompositionTag() const

$prototypeV2=int digitValue() const

$prototypeV2=QChar::Direction direction() const

$prototypeV2=bool hasMirrored() const

$prototypeV2=bool isDigit() const

$prototypeV2=bool isHighSurrogate() const

$prototypeV2=bool isLetter() const

$prototypeV2=bool isLetterOrNumber() const

$prototypeV2=bool isLowSurrogate() const

$prototypeV2=bool isLower() const

$prototypeV2=bool isMark() const

$prototypeV2=bool isNull() const

$prototypeV2=bool isNumber() const

$prototypeV2=bool isPrint() const

$prototypeV2=bool isPunct() const

$prototypeV2=bool isSpace() const

$prototypeV2=bool isSymbol() const

$prototypeV2=bool isTitleCase() const

$prototypeV2=bool isUpper() const

$prototypeV2=QChar::Joining joining() const

$prototypeV2=QChar mirroredChar() const

$prototypeV2=uchar row() const

$prototypeV2=QChar toCaseFolded() const

$prototypeV2=char toLatin1() const

$prototypeV2=QChar toLower() const

$prototypeV2=QChar toTitleCase() const

$prototypeV2=QChar toUpper() const

$prototypeV2=ushort unicode() const

$prototypeV2=QChar::UnicodeVersion unicodeVersion() const

%% TODO: implementar metódos estáticos

$extraMethods

#pragma ENDDUMP
