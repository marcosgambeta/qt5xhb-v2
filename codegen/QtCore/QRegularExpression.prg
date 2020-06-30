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

$prototype=QRegularExpression()
$internalConstructor=|new1|

$prototype=QRegularExpression(const QString & pattern, PatternOptions options = NoPatternOption)
$internalConstructor=|new2|const QString &,QRegularExpression::PatternOptions=QRegularExpression::NoPatternOption

$prototype=QRegularExpression(const QRegularExpression & re)
$internalConstructor=|new3|const QRegularExpression &

/*
[1]QRegularExpression()
[2]QRegularExpression(const QString & pattern, PatternOptions options = NoPatternOption)
[3]QRegularExpression(const QRegularExpression & re)
*/

HB_FUNC_STATIC( QREGULAREXPRESSION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRegularExpression_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QRegularExpression_new2();
  }
  else if( ISNUMPAR(1) && ISQREGULAREXPRESSION(1) )
  {
    QRegularExpression_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=int captureCount() const

$prototypeV2=QString errorString() const

$prototypeV2=QRegularExpressionMatchIterator globalMatch( const QString & subject, int offset = 0, QRegularExpression::MatchType matchType = QRegularExpression::NormalMatch, QRegularExpression::MatchOptions matchOptions = QRegularExpression::NoMatchOption ) const

$prototypeV2=bool isValid() const

$prototypeV2=QRegularExpressionMatch match( const QString & subject, int offset = 0, QRegularExpression::MatchType matchType = QRegularExpression::NormalMatch, QRegularExpression::MatchOptions matchOptions = QRegularExpression::NoMatchOption ) const

$prototypeV2=QString pattern() const

$prototypeV2=int patternErrorOffset() const

$prototypeV2=QRegularExpression::PatternOptions patternOptions() const

$prototypeV2=void setPattern( const QString & pattern )

$prototypeV2=void setPatternOptions( QRegularExpression::PatternOptions options )

$prototypeV2=void swap( QRegularExpression & other )

$prototypeV2=static QString escape( const QString & str )

$prototypeV2=5,12,0|static QString QRegularExpression::anchoredPattern( const QString & expression )

$prototypeV2=5,12,0|static QString QRegularExpression::wildcardToRegularExpression( const QString & pattern )

$extraMethods

#pragma ENDDUMP
