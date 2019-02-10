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

#include <QtVirtualKeyboard/QVirtualKeyboardAbstractInputMethod>
#include <QtVirtualKeyboard/QVirtualKeyboardSelectionListModel>
#include <QtVirtualKeyboard/QVirtualKeyboardInputContext>

$prototype=explicit QVirtualKeyboardInputEngine(QVirtualKeyboardInputContext *parent = nullptr) [private]
%% $constructor=|new|QVirtualKeyboardInputContext *=nullptr

$prototype=~QVirtualKeyboardInputEngine()
$deleteMethod

%%
%% Q_PROPERTY(Qt::Key activeKey READ activeKey NOTIFY activeKeyChanged)
%%

$prototype=Qt::Key activeKey() const
$method=|Qt::Key|activeKey|

%%
%% Q_PROPERTY(Qt::Key previousKey READ previousKey NOTIFY previousKeyChanged)
%%

$prototype=Qt::Key previousKey() const
$method=|Qt::Key|previousKey|

%%
%% Q_PROPERTY(QVirtualKeyboardAbstractInputMethod *inputMethod READ inputMethod WRITE setInputMethod NOTIFY inputMethodChanged)
%%

$prototype=QVirtualKeyboardAbstractInputMethod *inputMethod() const
$method=|QVirtualKeyboardAbstractInputMethod *|inputMethod|

$prototype=void setInputMethod(QVirtualKeyboardAbstractInputMethod *inputMethod)
$method=|void|setInputMethod|QVirtualKeyboardAbstractInputMethod *

%%
%% Q_PROPERTY(QList<int> inputModes READ inputModes NOTIFY inputModesChanged)
%%

$prototype=QList<int> inputModes() const
$method=|QList<int>|inputModes|

%%
%% Q_PROPERTY(InputMode inputMode READ inputMode WRITE setInputMode NOTIFY inputModeChanged)
%%

$prototype=InputMode inputMode() const
%% TODO: fix
%% $method=|QVirtualKeyboardInputEngine::InputMode|inputMode|

$prototype=void setInputMode(InputMode inputMode)
$method=|void|setInputMode|QVirtualKeyboardInputEngine::InputMode

%%
%% Q_PROPERTY(QList<int> patternRecognitionModes READ patternRecognitionModes NOTIFY patternRecognitionModesChanged)
%%

$prototype=QList<int> patternRecognitionModes() const
$method=|QList<int>|patternRecognitionModes|

%%
%% Q_PROPERTY(QVirtualKeyboardSelectionListModel *wordCandidateListModel READ wordCandidateListModel NOTIFY wordCandidateListModelChanged)
%%

$prototype=QVirtualKeyboardSelectionListModel *wordCandidateListModel() const
$method=|QVirtualKeyboardSelectionListModel *|wordCandidateListModel|

%%
%% Q_PROPERTY(bool wordCandidateListVisibleHint READ wordCandidateListVisibleHint NOTIFY wordCandidateListVisibleHintChanged)
%%

$prototype=bool wordCandidateListVisibleHint() const
$method=|bool|wordCandidateListVisibleHint|

%%
%%
%%

$prototype=void init() [private]
%% $method=|void|init|

$prototype=Q_INVOKABLE bool virtualKeyPress(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers, bool repeat)
$method=|bool|virtualKeyPress|Qt::Key,const QString &,Qt::KeyboardModifiers,bool

$prototype=Q_INVOKABLE void virtualKeyCancel()
$method=|void|virtualKeyCancel|

$prototype=Q_INVOKABLE bool virtualKeyRelease(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers)
$method=|bool|virtualKeyRelease|Qt::Key,const QString &,Qt::KeyboardModifiers

$prototype=Q_INVOKABLE bool virtualKeyClick(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers)
$method=|bool|virtualKeyClick|Qt::Key,const QString &,Qt::KeyboardModifiers

$prototype=QVirtualKeyboardInputContext *inputContext() const
$method=|QVirtualKeyboardInputContext *|inputContext|

$prototype=Q_INVOKABLE QVirtualKeyboardTrace *traceBegin(int traceId, PatternRecognitionMode patternRecognitionMode, const QVariantMap &traceCaptureDeviceInfo, const QVariantMap &traceScreenInfo)
%% TODO: $method=|QVirtualKeyboardTrace *|traceBegin|int,QVirtualKeyboardInputEngine::PatternRecognitionMode,const QVariantMap &,const QVariantMap &

$prototype=Q_INVOKABLE bool traceEnd(QVirtualKeyboardTrace *trace)
$method=|bool|traceEnd|QVirtualKeyboardTrace *

$prototype=Q_INVOKABLE bool reselect(int cursorPosition, const ReselectFlags &reselectFlags)
%% TODO: $method=|bool|reselect|int,const ReselectFlags &

$prototype=bool clickPreeditText(int cursorPosition)
$method=|bool|clickPreeditText|int

$prototype=void reset() [private] [slot]

$prototype=void update() [private] [slot]

$prototype=void shiftChanged() [private] [slot]

$prototype=void updateSelectionListModels() [private] [slot]

$prototype=void updateInputModes() [private] [slot]

$prototype=void timerEvent(QTimerEvent *timerEvent) [protected]

%%
%% SIGNALS
%%

$prototype=void virtualKeyClicked( Qt::Key key, const QString & text, Qt::KeyboardModifiers modifiers, bool isAutoRepeat )
$signalMethod=|void|virtualKeyClicked|Qt::Key,const QString &,Qt::KeyboardModifiers,bool

$prototype=void activeKeyChanged( Qt::Key key )
$signalMethod=|void|activeKeyChanged|Qt::Key

$prototype=void previousKeyChanged( Qt::Key key )
$signalMethod=|void|previousKeyChanged|Qt::Key

$prototype=void inputMethodChanged()
$signalMethod=|void|inputMethodChanged|

$prototype=void inputMethodReset()
$signalMethod=|void|inputMethodReset|

$prototype=void inputMethodUpdate()
$signalMethod=|void|inputMethodUpdate|

$prototype=void inputModesChanged()
$signalMethod=|void|inputModesChanged|

$prototype=void inputModeChanged()
$signalMethod=|void|inputModeChanged|

$prototype=void patternRecognitionModesChanged()
$signalMethod=|void|patternRecognitionModesChanged|

$prototype=void wordCandidateListModelChanged()
$signalMethod=|void|wordCandidateListModelChanged|

$prototype=void wordCandidateListVisibleHintChanged()
$signalMethod=|void|wordCandidateListVisibleHintChanged|

#pragma ENDDUMP
