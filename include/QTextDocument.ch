//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QTEXTDOCUMENT_CH
#define QTEXTDOCUMENT_CH

// enum QTextDocument::MetaInformation
#define QTextDocument_DocumentTitle                                  0
#define QTextDocument_DocumentUrl                                    1

// enum QTextDocument::FindFlag
#define QTextDocument_FindBackward                                   0x00001
#define QTextDocument_FindCaseSensitively                            0x00002
#define QTextDocument_FindWholeWords                                 0x00004

// enum QTextDocument::ResourceType
#define QTextDocument_UnknownResource                                0
#define QTextDocument_HtmlResource                                   1
#define QTextDocument_ImageResource                                  2
#define QTextDocument_StyleSheetResource                             3
#define QTextDocument_MarkdownResource                               4
#define QTextDocument_UserResource                                   100

// enum QTextDocument::Stacks
#define QTextDocument_UndoStack                                      0x01
#define QTextDocument_RedoStack                                      0x02
#define QTextDocument_UndoAndRedoStacks                              hb_bitor(QTextDocument_UndoStack,QTextDocument_RedoStack)

// enum QTextDocument::MarkdownFeature
// flags QTextDocument::MarkdownFeatures
#define QTextDocument_MarkdownNoHTML                                 hb_bitor(0x0020,0x0040)
#define QTextDocument_MarkdownDialectCommonMark                      0
#define QTextDocument_MarkdownDialectGitHub                          hb_bitor(hb_bitor(hb_bitor(hb_bitor(hb_bitor(0x0004,0x0008),0x0400),0x0100),0x0200),0x0800)

#endif // QTEXTDOCUMENT_CH
