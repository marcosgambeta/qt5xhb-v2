%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
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

#include <QtCore/QVariant>
#include <QtNetwork/QNetworkAccessManager>
#include <QtWebKit/QWebPluginFactory>
#include <QtWebKitWidgets/QWebFrame>
#include <QtWidgets/QAction>
#include <QtWidgets/QMenu>
#include <QtWidgets/QUndoStack>

$prototype=explicit QWebPage ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$prototype=~QWebPage()
$deleteMethod

%%
%% Q_PROPERTY(bool modified READ isModified)
%%

$prototypeV2=bool isModified() const

%%
%% Q_PROPERTY(QString selectedText READ selectedText)
%%

$prototypeV2=QString selectedText() const

%%
%% Q_PROPERTY(QString selectedHtml READ selectedHtml)
%%

$prototypeV2=QString selectedHtml() const

%%
%% Q_PROPERTY(bool hasSelection READ hasSelection)
%%

$prototypeV2=bool hasSelection() const

%%
%% Q_PROPERTY(QSize viewportSize READ viewportSize WRITE setViewportSize)
%%

$prototypeV2=QSize viewportSize() const

$prototype=void setViewportSize ( const QSize & size ) const
$method=|void|setViewportSize|const QSize &

%%
%% Q_PROPERTY(QSize preferredContentsSize READ preferredContentsSize WRITE setPreferredContentsSize)
%%

$prototypeV2=QSize preferredContentsSize() const

$prototype=void setPreferredContentsSize ( const QSize & size ) const
$method=|void|setPreferredContentsSize|const QSize &

%%
%% Q_PROPERTY(bool forwardUnsupportedContent READ forwardUnsupportedContent WRITE setForwardUnsupportedContent)
%%

$prototypeV2=bool forwardUnsupportedContent() const

$prototype=void setForwardUnsupportedContent ( bool forward )
$method=|void|setForwardUnsupportedContent|bool

%%
%% Q_PROPERTY(LinkDelegationPolicy linkDelegationPolicy READ linkDelegationPolicy WRITE setLinkDelegationPolicy)
%%

$prototypeV2=QWebPage::LinkDelegationPolicy linkDelegationPolicy() const

$prototype=void setLinkDelegationPolicy ( LinkDelegationPolicy policy )
$method=|void|setLinkDelegationPolicy|QWebPage::LinkDelegationPolicy

%%
%% Q_PROPERTY(QPalette palette READ palette WRITE setPalette)
%%

$prototypeV2=QPalette palette() const

$prototype=void setPalette ( const QPalette & palette )
$method=|void|setPalette|const QPalette &

%%
%% Q_PROPERTY(bool contentEditable READ isContentEditable WRITE setContentEditable)
%%

$prototypeV2=bool isContentEditable() const

$prototype=void setContentEditable ( bool editable )
$method=|void|setContentEditable|bool

%%
%% Q_PROPERTY(VisibilityState visibilityState READ visibilityState WRITE setVisibilityState)
%%

$prototypeV2=QWebPage::VisibilityState visibilityState() const

$prototype=void setVisibilityState(VisibilityState)
$method=|void|setVisibilityState|QWebPage::VisibilityState

%%
%%
%%

$prototype=QAction * action ( WebAction action ) const
$method=|QAction *|action|QWebPage::WebAction|#ifndef QT_NO_ACTION

$prototypeV2=quint64 bytesReceived() const

$prototypeV2=QMenu * createStandardContextMenu()

$prototypeV2=QWebFrame * currentFrame() const

$prototype=virtual bool extension ( Extension extension, const ExtensionOption * option = nullptr, ExtensionReturn * output = nullptr )
%% TODO: corrigir (QWebPage::Extension é uma classe)
%% $virtualMethod=|bool|extension|QWebPage::Extension,const QWebPage::ExtensionOption *=nullptr,QWebPage::ExtensionReturn *=nullptr

$prototype=bool findText ( const QString & subString, FindFlags options = 0 )
$method=|bool|findText|const QString &,QWebPage::FindFlags=0

$prototype=bool focusNextPrevChild ( bool next )
$method=|bool|focusNextPrevChild|bool

$prototype=QWebFrame * frameAt ( const QPoint & pos ) const
$method=|QWebFrame *|frameAt|const QPoint &

$prototypeV2=QWebHistory * history() const

$prototype=QVariant inputMethodQuery ( Qt::InputMethodQuery property ) const
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototypeV2=QWebFrame * mainFrame() const

$prototypeV2=QNetworkAccessManager * networkAccessManager() const

$prototypeV2=QWebPluginFactory * pluginFactory() const

$prototype=void setNetworkAccessManager ( QNetworkAccessManager * manager )
$method=|void|setNetworkAccessManager|QNetworkAccessManager *

$prototype=void setPluginFactory ( QWebPluginFactory * factory )
$method=|void|setPluginFactory|QWebPluginFactory *

$prototype=void setView ( QWidget * view )
$method=|void|setView|QWidget *

$prototypeV2=QWebSettings * settings() const

$prototype=virtual bool supportsExtension ( Extension extension ) const
%% TODO: corrigir (QWebPage::Extension é uma classe)
%% $virtualMethod=|bool|supportsExtension|QWebPage::Extension

$prototype=bool swallowContextMenuEvent ( QContextMenuEvent * event )
$method=|bool|swallowContextMenuEvent|QContextMenuEvent *|#ifndef QT_NO_CONTEXTMENU

$prototypeV2=quint64 totalBytes() const

$prototype=virtual void triggerAction ( WebAction action, bool checked = false )
$virtualMethod=|void|triggerAction|QWebPage::WebAction,bool=false

$prototype=QUndoStack * undoStack () const
$method=|QUndoStack *|undoStack||#ifndef QT_NO_UNDOSTACK

$prototype=void updatePositionDependentActions ( const QPoint & pos )
$method=|void|updatePositionDependentActions|const QPoint &

$prototypeV2=QWidget * view() const

$prototype=virtual bool event ( QEvent * ev )
$virtualMethod=|bool|event|QEvent *

%% TODO: is virtual ?
%% virtual bool shouldInterruptJavaScript()
$prototypeV2=bool shouldInterruptJavaScript()

$prototype=ViewportAttributes viewportAttributesForSize(const QSize& availableSize) const
%% TODO: QWebPage::ViewportAttributes is a class
%% $method=|QWebPage::ViewportAttributes|viewportAttributesForSize|const QSize &

$prototype=void setActualVisibleContentRect(const QRect& rect) const
$method=|void|setActualVisibleContentRect|const QRect &

$prototype=void setFeaturePermission(QWebFrame* frame, Feature feature, PermissionPolicy policy)
$method=|void|setFeaturePermission|QWebFrame *,QWebPage::Feature,QWebPage::PermissionPolicy

$prototypeV2=QStringList supportedContentTypes() const

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
