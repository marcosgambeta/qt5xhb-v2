%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtVirtualKeyboard

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

#include <QtVirtualKeyboard/QVirtualKeyboardInputContext>

$prototype=explicit QVirtualKeyboardAbstractInputMethod(QObject *parent = nullptr) [abstract]
%% $constructor=|new|QObject *=nullptr

$prototype=~QVirtualKeyboardAbstractInputMethod()
$deleteMethod

$prototype=QVirtualKeyboardInputContext *inputContext() const
$method=|QVirtualKeyboardInputContext *|inputContext|

$prototype=QVirtualKeyboardInputEngine *inputEngine() const
$method=|QVirtualKeyboardInputEngine *|inputEngine|

$prototype=virtual QList<QVirtualKeyboardInputEngine::InputMode> inputModes(const QString &locale) = 0
$virtualMethod=|QList<QVirtualKeyboardInputEngine::InputMode>|inputModes|const QString &

$prototype=virtual bool setInputMode(const QString &locale, QVirtualKeyboardInputEngine::InputMode inputMode) = 0
$virtualMethod=|bool|setInputMode|const QString &,QVirtualKeyboardInputEngine::InputMode

$prototype=virtual bool setTextCase(QVirtualKeyboardInputEngine::TextCase textCase) = 0
$virtualMethod=|bool|setTextCase|QVirtualKeyboardInputEngine::TextCase

$prototype=virtual bool keyEvent(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers) = 0
$virtualMethod=|bool|keyEvent|Qt::Key,const QString &,Qt::KeyboardModifiers

$prototype=virtual QList<QVirtualKeyboardSelectionListModel::Type> selectionLists()
$virtualMethod=|QList<QVirtualKeyboardSelectionListModel::Type>|selectionLists|

$prototype=virtual int selectionListItemCount(QVirtualKeyboardSelectionListModel::Type type)
$virtualMethod=|int|selectionListItemCount|QVirtualKeyboardSelectionListModel::Type

$prototype=virtual QVariant selectionListData(QVirtualKeyboardSelectionListModel::Type type, int index, QVirtualKeyboardSelectionListModel::Role role)
$virtualMethod=|QVariant|selectionListData|QVirtualKeyboardSelectionListModel::Type,int,QVirtualKeyboardSelectionListModel::Role

$prototype=virtual void selectionListItemSelected(QVirtualKeyboardSelectionListModel::Type type, int index)
$virtualMethod=|void|selectionListItemSelected|QVirtualKeyboardSelectionListModel::Type,int

$prototype=virtual bool selectionListRemoveItem(QVirtualKeyboardSelectionListModel::Type type, int index)
$virtualMethod=|bool|selectionListRemoveItem|QVirtualKeyboardSelectionListModel::Type,int

$prototype=virtual QList<QVirtualKeyboardInputEngine::PatternRecognitionMode> patternRecognitionModes() const
$virtualMethod=|QList<QVirtualKeyboardInputEngine::PatternRecognitionMode>|patternRecognitionModes|

$prototype=virtual QVirtualKeyboardTrace *traceBegin(int traceId, QVirtualKeyboardInputEngine::PatternRecognitionMode patternRecognitionMode, const QVariantMap &traceCaptureDeviceInfo, const QVariantMap &traceScreenInfo)
%% TODO: $virtualMethod=|QVirtualKeyboardTrace *|traceBegin|int,QVirtualKeyboardInputEngine::PatternRecognitionMode,const QVariantMap &,const QVariantMap &

$prototype=virtual bool traceEnd(QVirtualKeyboardTrace *trace)
$virtualMethod=|bool|traceEnd|QVirtualKeyboardTrace *

$prototype=virtual bool reselect(int cursorPosition, const QVirtualKeyboardInputEngine::ReselectFlags &reselectFlags)
%% TODO: $virtualMethod=|bool|reselect|int,const QVirtualKeyboardInputEngine::ReselectFlags &

$prototype=virtual bool clickPreeditText(int cursorPosition)
$virtualMethod=|bool|clickPreeditText|int

$prototype=virtual void reset() [slot]
$virtualMethod=|void|reset|

$prototype=virtual void update() [slot]
$virtualMethod=|void|update|

$prototype=void setInputEngine(QVirtualKeyboardInputEngine *inputEngine) [private]

%%
%% SIGNALS
%%

$prototype=void selectionListChanged( QVirtualKeyboardSelectionListModel::Type type )
$signalMethod=|void|selectionListChanged|QVirtualKeyboardSelectionListModel::Type

$prototype=void selectionListActiveItemChanged( QVirtualKeyboardSelectionListModel::Type type, int index )
$signalMethod=|void|selectionListActiveItemChanged|QVirtualKeyboardSelectionListModel::Type,int

$prototype=void selectionListsChanged()
$signalMethod=|void|selectionListsChanged|

#pragma ENDDUMP
