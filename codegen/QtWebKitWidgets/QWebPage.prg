%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKitWidgets

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
#include <QtNetwork/QNetworkAccessManager>
#include <QtWidgets/QUndoStack>
#include <QtCore/QVariant>
#include <QtWebKitWidgets/QWebFrame>
#include <QtWebKit/QWebPluginFactory>
#include <QtWidgets/QMenu>

$prototype=explicit QWebPage ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$prototype=~QWebPage()
$deleteMethod

%%
%% Q_PROPERTY(bool modified READ isModified)
%%

$prototype=bool isModified () const
$method=|bool|isModified|

%%
%% Q_PROPERTY(QString selectedText READ selectedText)
%%

$prototype=QString selectedText () const
$method=|QString|selectedText|

%%
%% Q_PROPERTY(QString selectedHtml READ selectedHtml)
%%

$prototype=QString selectedHtml() const
$method=|QString|selectedHtml|

%%
%% Q_PROPERTY(bool hasSelection READ hasSelection)
%%

$prototype=bool hasSelection() const
$method=|bool|hasSelection|

%%
%% Q_PROPERTY(QSize viewportSize READ viewportSize WRITE setViewportSize)
%%

$prototype=QSize viewportSize () const
$method=|QSize|viewportSize|

$prototype=void setViewportSize ( const QSize & size ) const
$method=|void|setViewportSize|const QSize &

%%
%% Q_PROPERTY(QSize preferredContentsSize READ preferredContentsSize WRITE setPreferredContentsSize)
%%

$prototype=QSize preferredContentsSize () const
$method=|QSize|preferredContentsSize|

$prototype=void setPreferredContentsSize ( const QSize & size ) const
$method=|void|setPreferredContentsSize|const QSize &

%%
%% Q_PROPERTY(bool forwardUnsupportedContent READ forwardUnsupportedContent WRITE setForwardUnsupportedContent)
%%

$prototype=bool forwardUnsupportedContent () const
$method=|bool|forwardUnsupportedContent|

$prototype=void setForwardUnsupportedContent ( bool forward )
$method=|void|setForwardUnsupportedContent|bool

%%
%% Q_PROPERTY(LinkDelegationPolicy linkDelegationPolicy READ linkDelegationPolicy WRITE setLinkDelegationPolicy)
%%

$prototype=LinkDelegationPolicy linkDelegationPolicy () const
$method=|QWebPage::LinkDelegationPolicy|linkDelegationPolicy|

$prototype=void setLinkDelegationPolicy ( LinkDelegationPolicy policy )
$method=|void|setLinkDelegationPolicy|QWebPage::LinkDelegationPolicy

%%
%% Q_PROPERTY(QPalette palette READ palette WRITE setPalette)
%%

$prototype=QPalette palette () const
$method=|QPalette|palette|

$prototype=void setPalette ( const QPalette & palette )
$method=|void|setPalette|const QPalette &

%%
%% Q_PROPERTY(bool contentEditable READ isContentEditable WRITE setContentEditable)
%%

$prototype=bool isContentEditable () const
$method=|bool|isContentEditable|

$prototype=void setContentEditable ( bool editable )
$method=|void|setContentEditable|bool

%%
%% Q_PROPERTY(VisibilityState visibilityState READ visibilityState WRITE setVisibilityState)
%%

$prototype=VisibilityState visibilityState() const
$method=|QWebPage::VisibilityState|visibilityState|

$prototype=void setVisibilityState(VisibilityState)
$method=|void|setVisibilityState|QWebPage::VisibilityState

%%
%%
%%

$prototype=QAction * action ( WebAction action ) const
$method=|QAction *|action|QWebPage::WebAction|#ifndef QT_NO_ACTION

$prototype=quint64 bytesReceived () const
$method=|quint64|bytesReceived|

$prototype=QMenu * createStandardContextMenu ()
$method=|QMenu *|createStandardContextMenu|

$prototype=QWebFrame * currentFrame () const
$method=|QWebFrame *|currentFrame|

$prototype=virtual bool extension ( Extension extension, const ExtensionOption * option = nullptr, ExtensionReturn * output = nullptr )
%% TODO: corrigir (QWebPage::Extension é uma classe)
%% $virtualMethod=|bool|extension|QWebPage::Extension,const QWebPage::ExtensionOption *=nullptr,QWebPage::ExtensionReturn *=nullptr

$prototype=bool findText ( const QString & subString, FindFlags options = 0 )
$method=|bool|findText|const QString &,QWebPage::FindFlags=0

$prototype=bool focusNextPrevChild ( bool next )
$method=|bool|focusNextPrevChild|bool

$prototype=QWebFrame * frameAt ( const QPoint & pos ) const
$method=|QWebFrame *|frameAt|const QPoint &

$prototype=QWebHistory * history () const
$method=|QWebHistory *|history|

$prototype=QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=QWebFrame * mainFrame () const
$method=|QWebFrame *|mainFrame|

$prototype=QNetworkAccessManager * networkAccessManager () const
$method=|QNetworkAccessManager *|networkAccessManager|

$prototype=QWebPluginFactory * pluginFactory () const
$method=|QWebPluginFactory *|pluginFactory|

$prototype=void setNetworkAccessManager ( QNetworkAccessManager * manager )
$method=|void|setNetworkAccessManager|QNetworkAccessManager *

$prototype=void setPluginFactory ( QWebPluginFactory * factory )
$method=|void|setPluginFactory|QWebPluginFactory *

$prototype=void setView ( QWidget * view )
$method=|void|setView|QWidget *

$prototype=QWebSettings * settings () const
$method=|QWebSettings *|settings|

$prototype=virtual bool supportsExtension ( Extension extension ) const
%% TODO: corrigir (QWebPage::Extension é uma classe)
%% $virtualMethod=|bool|supportsExtension|QWebPage::Extension

$prototype=bool swallowContextMenuEvent ( QContextMenuEvent * event )
$method=|bool|swallowContextMenuEvent|QContextMenuEvent *|#ifndef QT_NO_CONTEXTMENU

$prototype=quint64 totalBytes () const
$method=|quint64|totalBytes|

$prototype=virtual void triggerAction ( WebAction action, bool checked = false )
$virtualMethod=|void|triggerAction|QWebPage::WebAction,bool=false

$prototype=QUndoStack * undoStack () const
$method=|QUndoStack *|undoStack||#ifndef QT_NO_UNDOSTACK

$prototype=void updatePositionDependentActions ( const QPoint & pos )
$method=|void|updatePositionDependentActions|const QPoint &

$prototype=QWidget * view () const
$method=|QWidget *|view|

$prototype=virtual bool event ( QEvent * ev )
$virtualMethod=|bool|event|QEvent *

%% TODO: is virtual ?
%% virtual bool shouldInterruptJavaScript()
$prototype=bool shouldInterruptJavaScript ()
$method=|bool|shouldInterruptJavaScript|

$prototype=ViewportAttributes viewportAttributesForSize(const QSize& availableSize) const
%% TODO: QWebPage::ViewportAttributes is a class
%% $method=|QWebPage::ViewportAttributes|viewportAttributesForSize|const QSize &

$prototype=void setActualVisibleContentRect(const QRect& rect) const
$method=|void|setActualVisibleContentRect|const QRect &

$prototype=void setFeaturePermission(QWebFrame* frame, Feature feature, PermissionPolicy policy)
$method=|void|setFeaturePermission|QWebFrame *,QWebPage::Feature,QWebPage::PermissionPolicy

$prototype=QStringList supportedContentTypes() const
$method=|QStringList|supportedContentTypes|

$prototype=bool supportsContentType(const QString& mimeType) const
$method=|bool|supportsContentType|const QString &

$prototype=QWebPageAdapter* handle() const
%% TODO: implement ? (not present in the documentation)

%%
%% SIGNALS
%%

$prototype=void applicationCacheQuotaExceeded( QWebSecurityOrigin * origin, quint64 defaultOriginQuota, quint64 totalSpaceNeeded )
$signalMethod=|void|applicationCacheQuotaExceeded|QWebSecurityOrigin *,quint64,quint64

$prototype=void contentsChanged()
$signalMethod=|void|contentsChanged|

$prototype=void databaseQuotaExceeded( QWebFrame * frame, QString databaseName )
$signalMethod=|void|databaseQuotaExceeded|QWebFrame *,QString

$prototype=void downloadRequested( const QNetworkRequest & request )
$signalMethod=|void|downloadRequested|const QNetworkRequest &

$prototype=void featurePermissionRequestCanceled( QWebFrame * frame, QWebPage::Feature feature )
$signalMethod=|void|featurePermissionRequestCanceled|QWebFrame *,QWebPage::Feature

$prototype=void featurePermissionRequested( QWebFrame * frame, QWebPage::Feature feature )
$signalMethod=|void|featurePermissionRequested|QWebFrame *,QWebPage::Feature

$prototype=void frameCreated( QWebFrame * frame )
$signalMethod=|void|frameCreated|QWebFrame *

$prototype=void geometryChangeRequested( const QRect & geom )
$signalMethod=|void|geometryChangeRequested|const QRect &

$prototype=void linkClicked( const QUrl & url )
$signalMethod=|void|linkClicked|const QUrl &

$prototype=void linkHovered( const QString & link, const QString & title, const QString & textContent )
$signalMethod=|void|linkHovered|const QString &,const QString &,const QString &

$prototype=void loadFinished( bool ok )
$signalMethod=|void|loadFinished|bool

$prototype=void loadProgress( int progress )
$signalMethod=|void|loadProgress|int

$prototype=void loadStarted()
$signalMethod=|void|loadStarted|

$prototype=void menuBarVisibilityChangeRequested( bool visible )
$signalMethod=|void|menuBarVisibilityChangeRequested|bool

$prototype=void microFocusChanged()
$signalMethod=|void|microFocusChanged|

$prototype=void printRequested( QWebFrame * frame )
$signalMethod=|void|printRequested|QWebFrame *

$prototype=void repaintRequested( const QRect & dirtyRect )
$signalMethod=|void|repaintRequested|const QRect &

$prototype=void restoreFrameStateRequested( QWebFrame * frame )
$signalMethod=|void|restoreFrameStateRequested|QWebFrame *

$prototype=void saveFrameStateRequested( QWebFrame * frame, QWebHistoryItem * item )
$signalMethod=|void|saveFrameStateRequested|QWebFrame *,QWebHistoryItem *

$prototype=void scrollRequested( int dx, int dy, const QRect & rectToScroll )
$signalMethod=|void|scrollRequested|int,int,const QRect &

$prototype=void selectionChanged()
$signalMethod=|void|selectionChanged|

$prototype=void statusBarMessage( const QString & text )
$signalMethod=|void|statusBarMessage|const QString &

$prototype=void statusBarVisibilityChangeRequested( bool visible )
$signalMethod=|void|statusBarVisibilityChangeRequested|bool

$prototype=void toolBarVisibilityChangeRequested( bool visible )
$signalMethod=|void|toolBarVisibilityChangeRequested|bool

$prototype=void unsupportedContent( QNetworkReply * reply )
$signalMethod=|void|unsupportedContent|QNetworkReply *

$prototype=void viewportChangeRequested()
$signalMethod=|void|viewportChangeRequested|

$prototype=void windowCloseRequested()
$signalMethod=|void|windowCloseRequested|

#pragma ENDDUMP
