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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QAction>
#include <QtWidgets/QMenu>

$prototype=explicit QWebEnginePage(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=QWebEngineHistory *history() const
$method=|QWebEngineHistory *|history|

$prototype=QWidget *view() const
$method=|QWidget *|view|

$prototype=void setView(QWidget *view)
$method=|void|setView|QWidget *

$prototype=bool hasSelection() const
$method=|bool|hasSelection|

$prototype=QString selectedText() const
$method=|QString|selectedText|

$prototype=QAction *action(WebAction action) const
$method=|QAction *|action|QWebEnginePage::WebAction

$prototype=virtual void triggerAction(WebAction action, bool checked = false)
$virtualMethod=|void|triggerAction|QWebEnginePage::WebAction,bool=false

$prototype=virtual bool event(QEvent*)
$virtualMethod=|bool|event|QEvent *

$prototype=void findText(const QString &subString, FindFlags options = 0, const QWebEngineCallback<bool> &resultCallback = QWebEngineCallback<bool>())
%% TODO: implementar
%% $method=|void|findText|const QString &,QWebEnginePage::FindFlags=0,const QWebEngineCallback<bool> &=QWebEngineCallback<bool>()

$prototype=QMenu *createStandardContextMenu()
$method=|QMenu *|createStandardContextMenu|

$prototype=void setFeaturePermission(const QUrl &securityOrigin, Feature feature, PermissionPolicy policy)
$method=|void|setFeaturePermission|const QUrl &,QWebEnginePage::Feature,QWebEnginePage::PermissionPolicy

$prototype=void load(const QUrl &url)
$method=|void|load|const QUrl &

$prototype=void setHtml(const QString &html, const QUrl &baseUrl = QUrl())
$method=|void|setHtml|const QString &,const QUrl &=QUrl()

$prototype=void setContent(const QByteArray &data, const QString &mimeType = QString(), const QUrl &baseUrl = QUrl())
$method=|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

$prototype=void toHtml(const QWebEngineCallback<const QString &> &resultCallback) const
%% TODO: implementar
%% $method=|void|toHtml|const QWebEngineCallback<const QString &> &

$prototype=void toPlainText(const QWebEngineCallback<const QString &> &resultCallback) const
%% TODO: implementar
%% $method=|void|toPlainText|const QWebEngineCallback<const QString &> &

$prototype=QString title() const
$method=|QString|title|

$prototype=QUrl url() const
$method=|QUrl|url|

$prototype=void setUrl(const QUrl &url)
$method=|void|setUrl|const QUrl &

$prototype=QUrl requestedUrl() const
$method=|QUrl|requestedUrl|

$prototype=QUrl iconUrl() const
$method=|QUrl|iconUrl|

$prototype=qreal zoomFactor() const
$method=|qreal|zoomFactor|

$prototype=void setZoomFactor(qreal factor)
$method=|void|setZoomFactor|qreal

$prototype=void runJavaScript(const QString& scriptSource)
$internalMethod=|void|runJavaScript,runJavaScript1|const QString &

$prototype=void runJavaScript(const QString& scriptSource, const QWebEngineCallback<const QVariant &> &resultCallback)
%% TODO: implementar
%% $internalMethod=|void|runJavaScript,runJavaScript2|const QString &,const QWebEngineCallback<const QVariant &> &

/*
[1]void runJavaScript(const QString& scriptSource)
[2]void runJavaScript(const QString& scriptSource, const QWebEngineCallback<const QVariant &> &resultCallback)
*/

HB_FUNC( QWEBENGINEPAGE_RUNJAVASCRIPT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QWebEnginePage_runJavaScript1();
  }
%%  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
%%  {
%%    QWebEnginePage_runJavaScript2();
%%  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=runJavaScript

$prototype=QWebEngineSettings *settings() const
$method=|QWebEngineSettings *|settings|

%%
%% SIGNALS
%%

$prototype=void loadStarted()
$signalMethod=|void|loadStarted|

$prototype=void loadProgress( int progress )
$signalMethod=|void|loadProgress|int

$prototype=void loadFinished( bool ok )
$signalMethod=|void|loadFinished|bool

$prototype=void linkHovered( const QString & url )
$signalMethod=|void|linkHovered|const QString &

$prototype=void selectionChanged()
$signalMethod=|void|selectionChanged|

$prototype=void geometryChangeRequested( const QRect & geom )
$signalMethod=|void|geometryChangeRequested|const QRect &

$prototype=void windowCloseRequested()
$signalMethod=|void|windowCloseRequested|

$prototype=void featurePermissionRequested( const QUrl & securityOrigin, QWebEnginePage::Feature feature )
$signalMethod=|void|featurePermissionRequested|const QUrl &,QWebEnginePage::Feature

$prototype=void featurePermissionRequestCanceled( const QUrl & securityOrigin, QWebEnginePage::Feature feature )
$signalMethod=|void|featurePermissionRequestCanceled|const QUrl &,QWebEnginePage::Feature

$prototype=void authenticationRequired( const QUrl & requestUrl, QAuthenticator * authenticator )
$signalMethod=|void|authenticationRequired|const QUrl &,QAuthenticator *

$prototype=void proxyAuthenticationRequired( const QUrl & requestUrl, QAuthenticator * authenticator, const QString & proxyHost )
$signalMethod=|void|proxyAuthenticationRequired|const QUrl &,QAuthenticator *,const QString &

$prototype=void titleChanged( const QString & title )
$signalMethod=|void|titleChanged|const QString &

$prototype=void urlChanged( const QUrl & url )
$signalMethod=|void|urlChanged|const QUrl &

$prototype=void iconUrlChanged( const QUrl & url )
$signalMethod=|void|iconUrlChanged|const QUrl &

#pragma ENDDUMP
