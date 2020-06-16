%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QComboBox

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFontComboBox ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototypeV2=QFont currentFont() const

$prototypeV2=QFontComboBox::FontFilters fontFilters() const

$prototype=void setFontFilters ( FontFilters filters )
$method=|void|setFontFilters|QFontComboBox::FontFilters

$prototype=void setWritingSystem ( QFontDatabase::WritingSystem script )
$method=|void|setWritingSystem|QFontDatabase::WritingSystem

$prototypeV2=QFontDatabase::WritingSystem writingSystem() const

$prototypeV2=virtual QSize sizeHint() const

$prototype=void setCurrentFont ( const QFont & font )
$method=|void|setCurrentFont|const QFont &

%%
%% SIGNALS
%%

$prototype=void currentFontChanged( const QFont & font )
$signalMethod=|void|currentFontChanged|const QFont &

#pragma ENDDUMP
