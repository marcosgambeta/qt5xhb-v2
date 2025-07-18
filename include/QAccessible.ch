//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QACCESSIBLE_CH
#define QACCESSIBLE_CH

// enum QAccessible::Event
#define QAccessible_SoundPlayed                                      0x0001
#define QAccessible_Alert                                            0x0002
#define QAccessible_ForegroundChanged                                0x0003
#define QAccessible_MenuStart                                        0x0004
#define QAccessible_MenuEnd                                          0x0005
#define QAccessible_PopupMenuStart                                   0x0006
#define QAccessible_PopupMenuEnd                                     0x0007
#define QAccessible_ContextHelpStart                                 0x000C
#define QAccessible_ContextHelpEnd                                   0x000D
#define QAccessible_DragDropStart                                    0x000E
#define QAccessible_DragDropEnd                                      0x000F
#define QAccessible_DialogStart                                      0x0010
#define QAccessible_DialogEnd                                        0x0011
#define QAccessible_ScrollingStart                                   0x0012
#define QAccessible_ScrollingEnd                                     0x0013
#define QAccessible_MenuCommand                                      0x0018
#define QAccessible_ActionChanged                                    0x0101
#define QAccessible_ActiveDescendantChanged                          0x0102
#define QAccessible_AttributeChanged                                 0x0103
#define QAccessible_DocumentContentChanged                           0x0104
#define QAccessible_DocumentLoadComplete                             0x0105
#define QAccessible_DocumentLoadStopped                              0x0106
#define QAccessible_DocumentReload                                   0x0107
#define QAccessible_HyperlinkEndIndexChanged                         0x0108
#define QAccessible_HyperlinkNumberOfAnchorsChanged                  0x0109
#define QAccessible_HyperlinkSelectedLinkChanged                     0x010A
#define QAccessible_HypertextLinkActivated                           0x010B
#define QAccessible_HypertextLinkSelected                            0x010C
#define QAccessible_HyperlinkStartIndexChanged                       0x010D
#define QAccessible_HypertextChanged                                 0x010E
#define QAccessible_HypertextNLinksChanged                           0x010F
#define QAccessible_ObjectAttributeChanged                           0x0110
#define QAccessible_PageChanged                                      0x0111
#define QAccessible_SectionChanged                                   0x0112
#define QAccessible_TableCaptionChanged                              0x0113
#define QAccessible_TableColumnDescriptionChanged                    0x0114
#define QAccessible_TableColumnHeaderChanged                         0x0115
#define QAccessible_TableModelChanged                                0x0116
#define QAccessible_TableRowDescriptionChanged                       0x0117
#define QAccessible_TableRowHeaderChanged                            0x0118
#define QAccessible_TableSummaryChanged                              0x0119
#define QAccessible_TextAttributeChanged                             0x011A
#define QAccessible_TextCaretMoved                                   0x011B
#define QAccessible_TextChanged                                      0x011C
#define QAccessible_TextColumnChanged                                0x011D
#define QAccessible_TextInserted                                     0x011E
#define QAccessible_TextRemoved                                      0x011F
#define QAccessible_TextUpdated                                      0x0120
#define QAccessible_TextSelectionChanged                             0x0121
#define QAccessible_VisibleDataChanged                               0x0122
#define QAccessible_ObjectCreated                                    0x8000
#define QAccessible_ObjectDestroyed                                  0x8001
#define QAccessible_ObjectShow                                       0x8002
#define QAccessible_ObjectHide                                       0x8003
#define QAccessible_ObjectReorder                                    0x8004
#define QAccessible_Focus                                            0x8005
#define QAccessible_Selection                                        0x8006
#define QAccessible_SelectionAdd                                     0x8007
#define QAccessible_SelectionRemove                                  0x8008
#define QAccessible_SelectionWithin                                  0x8009
#define QAccessible_StateChanged                                     0x800A
#define QAccessible_LocationChanged                                  0x800B
#define QAccessible_NameChanged                                      0x800C
#define QAccessible_DescriptionChanged                               0x800D
#define QAccessible_ValueChanged                                     0x800E
#define QAccessible_ParentChanged                                    0x800F
#define QAccessible_HelpChanged                                      0x80A0
#define QAccessible_DefaultActionChanged                             0x80B0
#define QAccessible_AcceleratorChanged                               0x80C0
#define QAccessible_InvalidEvent

// enum QAccessible::Role
#define QAccessible_NoRole                                           0x00000000
#define QAccessible_TitleBar                                         0x00000001
#define QAccessible_MenuBar                                          0x00000002
#define QAccessible_ScrollBar                                        0x00000003
#define QAccessible_Grip                                             0x00000004
#define QAccessible_Sound                                            0x00000005
#define QAccessible_Cursor                                           0x00000006
#define QAccessible_Caret                                            0x00000007
#define QAccessible_AlertMessage                                     0x00000008
#define QAccessible_Window                                           0x00000009
#define QAccessible_Client                                           0x0000000A
#define QAccessible_PopupMenu                                        0x0000000B
#define QAccessible_MenuItem                                         0x0000000C
#define QAccessible_ToolTip                                          0x0000000D
#define QAccessible_Application                                      0x0000000E
#define QAccessible_Document                                         0x0000000F
#define QAccessible_Pane                                             0x00000010
#define QAccessible_Chart                                            0x00000011
#define QAccessible_Dialog                                           0x00000012
#define QAccessible_Border                                           0x00000013
#define QAccessible_Grouping                                         0x00000014
#define QAccessible_Separator                                        0x00000015
#define QAccessible_ToolBar                                          0x00000016
#define QAccessible_StatusBar                                        0x00000017
#define QAccessible_Table                                            0x00000018
#define QAccessible_ColumnHeader                                     0x00000019
#define QAccessible_RowHeader                                        0x0000001A
#define QAccessible_Column                                           0x0000001B
#define QAccessible_Row                                              0x0000001C
#define QAccessible_Cell                                             0x0000001D
#define QAccessible_Link                                             0x0000001E
#define QAccessible_HelpBalloon                                      0x0000001F
#define QAccessible_Assistant                                        0x00000020
#define QAccessible_List                                             0x00000021
#define QAccessible_ListItem                                         0x00000022
#define QAccessible_Tree                                             0x00000023
#define QAccessible_TreeItem                                         0x00000024
#define QAccessible_PageTab                                          0x00000025
#define QAccessible_PropertyPage                                     0x00000026
#define QAccessible_Indicator                                        0x00000027
#define QAccessible_Graphic                                          0x00000028
#define QAccessible_StaticText                                       0x00000029
#define QAccessible_EditableText                                     0x0000002A
#define QAccessible_Button                                           0x0000002B
#define QAccessible_PushButton                                       QAccessible_Button
#define QAccessible_CheckBox                                         0x0000002C
#define QAccessible_RadioButton                                      0x0000002D
#define QAccessible_ComboBox                                         0x0000002E
#define QAccessible_DropList                                         0x0000002F
#define QAccessible_ProgressBar                                      0x00000030
#define QAccessible_Dial                                             0x00000031
#define QAccessible_HotkeyField                                      0x00000032
#define QAccessible_Slider                                           0x00000033
#define QAccessible_SpinBox                                          0x00000034
#define QAccessible_Canvas                                           0x00000035
#define QAccessible_Animation                                        0x00000036
#define QAccessible_Equation                                         0x00000037
#define QAccessible_ButtonDropDown                                   0x00000038
#define QAccessible_ButtonMenu                                       0x00000039
#define QAccessible_ButtonDropGrid                                   0x0000003A
#define QAccessible_Whitespace                                       0x0000003B
#define QAccessible_PageTabList                                      0x0000003C
#define QAccessible_Clock                                            0x0000003D
#define QAccessible_Splitter                                         0x0000003E
#define QAccessible_LayeredPane                                      0x00000080
#define QAccessible_Terminal                                         0x00000081
#define QAccessible_Desktop                                          0x00000082
#define QAccessible_UserRole                                         0x0000ffff

// enum QAccessible::Text
#define QAccessible_Name                                             0
#define QAccessible_Description                                      1
#define QAccessible_Value                                            2
#define QAccessible_Help                                             3
#define QAccessible_Accelerator                                      4
#define QAccessible_DebugDescription                                 5
#define QAccessible_UserText                                         0x0000ffff

// enum QAccessible::RelationFlag
#define QAccessible_Label                                            0x00000001
#define QAccessible_Labelled                                         0x00000002
#define QAccessible_Controller                                       0x00000004
#define QAccessible_Controlled                                       0x00000008
#define QAccessible_AllRelations                                     0xffffffff

// enum QAccessible::InterfaceType
#define QAccessible_TextInterface                                    0
#define QAccessible_EditableTextInterface                            1
#define QAccessible_ValueInterface                                   2
#define QAccessible_ActionInterface                                  3
#define QAccessible_ImageInterface                                   4
#define QAccessible_TableInterface                                   5
#define QAccessible_TableCellInterface                               6

#endif // QACCESSIBLE_CH
