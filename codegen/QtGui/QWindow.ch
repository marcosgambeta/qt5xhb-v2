%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

/*
enum QWindow::AncestorMode
*/
#define QWindow_ExcludeTransients                                    0
#define QWindow_IncludeTransients                                    1

/*
enum QWindow::Visibility
*/
#define QWindow_Hidden                                               0
#define QWindow_AutomaticVisibility                                  1
#define QWindow_Windowed                                             2
#define QWindow_Minimized                                            3
#define QWindow_Maximized                                            4
#define QWindow_FullScreen                                           5
