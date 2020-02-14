%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

/*
enum QVideoFrame::FieldType
*/
#define QVideoFrame_ProgressiveFrame                                 0
#define QVideoFrame_TopField                                         1
#define QVideoFrame_BottomField                                      2
#define QVideoFrame_InterlacedFrame                                  3

/*
enum QVideoFrame::PixelFormat
*/
#define QVideoFrame_Format_Invalid                                   0
#define QVideoFrame_Format_ARGB32                                    1
#define QVideoFrame_Format_ARGB32_Premultiplied                      2
#define QVideoFrame_Format_RGB32                                     3
#define QVideoFrame_Format_RGB24                                     4
#define QVideoFrame_Format_RGB565                                    5
#define QVideoFrame_Format_RGB555                                    6
#define QVideoFrame_Format_ARGB8565_Premultiplied                    7
#define QVideoFrame_Format_BGRA32                                    8
#define QVideoFrame_Format_BGRA32_Premultiplied                      9
#define QVideoFrame_Format_BGR32                                     10
#define QVideoFrame_Format_BGR24                                     11
#define QVideoFrame_Format_BGR565                                    12
#define QVideoFrame_Format_BGR555                                    13
#define QVideoFrame_Format_BGRA5658_Premultiplied                    14
#define QVideoFrame_Format_AYUV444                                   15
#define QVideoFrame_Format_AYUV444_Premultiplied                     16
#define QVideoFrame_Format_YUV444                                    17
#define QVideoFrame_Format_YUV420P                                   18
#define QVideoFrame_Format_YV12                                      19
#define QVideoFrame_Format_UYVY                                      20
#define QVideoFrame_Format_YUYV                                      21
#define QVideoFrame_Format_NV12                                      22
#define QVideoFrame_Format_NV21                                      23
#define QVideoFrame_Format_IMC1                                      24
#define QVideoFrame_Format_IMC2                                      25
#define QVideoFrame_Format_IMC3                                      26
#define QVideoFrame_Format_IMC4                                      27
#define QVideoFrame_Format_Y8                                        28
#define QVideoFrame_Format_Y16                                       29
#define QVideoFrame_Format_Jpeg                                      30
#define QVideoFrame_Format_CameraRaw                                 31
#define QVideoFrame_Format_AdobeDng                                  32
#define QVideoFrame_NPixelFormats                                    33
#define QVideoFrame_Format_User                                      1000
