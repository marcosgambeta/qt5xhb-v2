%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineWidgets
$added=5,4,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=static QWebEngineSettings * globalSettings()

$prototype=QString fontFamily(FontFamily which) const
$method=|QString|fontFamily|QWebEngineSettings::FontFamily

$prototype=void setFontFamily(FontFamily which, const QString &family)
$method=|void|setFontFamily|QWebEngineSettings::FontFamily,const QString &

$prototype=void resetFontFamily(FontFamily which)
$method=|void|resetFontFamily|QWebEngineSettings::FontFamily

$prototype=int fontSize(FontSize type) const
$method=|int|fontSize|QWebEngineSettings::FontSize

$prototype=void setFontSize(FontSize type, int size)
$method=|void|setFontSize|QWebEngineSettings::FontSize,int

$prototype=void resetFontSize(FontSize type)
$method=|void|resetFontSize|QWebEngineSettings::FontSize

$prototype=void setAttribute(WebAttribute attr, bool on)
$method=|void|setAttribute|QWebEngineSettings::WebAttribute,bool

$prototype=bool testAttribute(WebAttribute attr) const
$method=|bool|testAttribute|QWebEngineSettings::WebAttribute

$prototype=void resetAttribute(WebAttribute attr)
$method=|void|resetAttribute|QWebEngineSettings::WebAttribute

$prototypeV2=QString defaultTextEncoding() const

$prototype=void setDefaultTextEncoding(const QString &encoding)
$method=|void|setDefaultTextEncoding|const QString &

$extraMethods

#pragma ENDDUMP
