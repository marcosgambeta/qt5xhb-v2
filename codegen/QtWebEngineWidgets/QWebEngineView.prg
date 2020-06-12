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

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QAction>

$prototype=explicit QWebEngineView(QWidget* parent = nullptr)
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototypeV2=QWebEnginePage * page() const

$prototype=void setPage(QWebEnginePage* page)
$method=|void|setPage|QWebEnginePage *

$prototype=void load(const QUrl& url)
$method=|void|load|const QUrl &

$prototype=void setHtml(const QString& html, const QUrl& baseUrl = QUrl())
$method=|void|setHtml|const QString &,const QUrl &=QUrl()

$prototype=void setContent(const QByteArray& data, const QString& mimeType = QString(), const QUrl& baseUrl = QUrl())
$method=|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

$prototypeV2=QWebEngineHistory * history() const

$prototypeV2=QString title() const

$prototypeV2=QUrl url() const

$prototype=void setUrl(const QUrl &url)
$method=|void|setUrl|const QUrl &

$prototypeV2=QUrl iconUrl() const

$prototypeV2=bool hasSelection() const

$prototypeV2=QString selectedText() const

$prototype=QAction* pageAction(QWebEnginePage::WebAction action) const
$method=|QAction *|pageAction|QWebEnginePage::WebAction|#ifndef QT_NO_ACTION

$prototype=void triggerPageAction(QWebEnginePage::WebAction action, bool checked = false)
$method=|void|triggerPageAction|QWebEnginePage::WebAction,bool=false

$prototypeV2=qreal zoomFactor() const

$prototype=void setZoomFactor(qreal factor)
$method=|void|setZoomFactor|qreal

$prototype=void findText(const QString &subString, QWebEnginePage::FindFlags options = 0, const QWebEngineCallback<bool> &resultCallback = QWebEngineCallback<bool>())
%% TODO: implementar
%% $method=|void|findText|const QString &,QWebEnginePage::FindFlags=0,const QWebEngineCallback<bool> &=QWebEngineCallback<bool>()

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void stop()

$prototypeV2=void back()

$prototypeV2=void forward()

$prototypeV2=void reload()

%%
%% SIGNALS
%%

$prototype=void loadStarted()
$signalMethod=|void|loadStarted|

$prototype=void loadProgress( int progress )
$signalMethod=|void|loadProgress|int

$prototype=void loadFinished( bool b )
$signalMethod=|void|loadFinished|bool

$prototype=void titleChanged( const QString & title )
$signalMethod=|void|titleChanged|const QString &

$prototype=void selectionChanged()
$signalMethod=|void|selectionChanged|

$prototype=void urlChanged( const QUrl & url )
$signalMethod=|void|urlChanged|const QUrl &

$prototype=void iconUrlChanged( const QUrl & url )
$signalMethod=|void|iconUrlChanged|const QUrl &

#pragma ENDDUMP
