/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "HAbstractTableModel.h"

/*
  método construtor
*/
HAbstractTableModel::HAbstractTableModel(QObject * parent) : QAbstractTableModel (parent)
{
  // linhas e colunas
  rowCountCB = nullptr;
  colCountCB = nullptr;

  // células
  getFieldCB = nullptr;
  getFieldDecorationCB = nullptr;
  getFieldEditCB = nullptr;
  getFieldToolTipCB = nullptr;
  getFieldStatusTipCB = nullptr;
  getFieldWhatsThisCB = nullptr;
  getFieldSizeHintCB = nullptr;
  getFieldFontCB = nullptr;
  getFieldAlignCB = nullptr;
  getFieldBGColorCB = nullptr;
  getFieldFGColorCB = nullptr;

  // cabeçalho horizontal
  getHHCB = nullptr;
  getHHDecorationCB = nullptr;
  getHHFontCB = nullptr;
  getHHAlignCB = nullptr;
  getHHBGColorCB = nullptr;
  getHHFGColorCB = nullptr;

  // cabeçalho vertical
  getVHCB = nullptr;
  getVHDecorationCB = nullptr;
  getVHFontCB = nullptr;
  getVHAlignCB = nullptr;
  getVHBGColorCB = nullptr;
  getVHFGColorCB = nullptr;
}

/*
  método destruidor
*/
HAbstractTableModel::~HAbstractTableModel()
{
  // linhas e colunas
  if( rowCountCB != nullptr )
  {
    hb_itemRelease( rowCountCB );
    rowCountCB = nullptr;
  }
  if( colCountCB != nullptr )
  {
    hb_itemRelease( colCountCB );
    colCountCB = nullptr;
  }

  // células
  if( getFieldCB != nullptr )
  {
    hb_itemRelease( getFieldCB );
    getFieldCB = nullptr;
  }
  if( getFieldDecorationCB != nullptr )
  {
    hb_itemRelease( getFieldDecorationCB );
    getFieldDecorationCB = nullptr;
  }
  if( getFieldEditCB != nullptr )
  {
    hb_itemRelease( getFieldEditCB );
    getFieldEditCB = nullptr;
  }
  if( getFieldToolTipCB != nullptr )
  {
    hb_itemRelease( getFieldToolTipCB );
    getFieldToolTipCB = nullptr;
  }
  if( getFieldStatusTipCB != nullptr )
  {
    hb_itemRelease( getFieldStatusTipCB );
    getFieldStatusTipCB = nullptr;
  }
  if( getFieldWhatsThisCB != nullptr )
  {
    hb_itemRelease( getFieldWhatsThisCB );
    getFieldWhatsThisCB = nullptr;
  }
  if( getFieldSizeHintCB != nullptr )
  {
    hb_itemRelease( getFieldSizeHintCB );
    getFieldSizeHintCB = nullptr;
  }
  if( getFieldFontCB != nullptr )
  {
    hb_itemRelease( getFieldFontCB );
    getFieldFontCB = nullptr;
  }
  if( getFieldAlignCB != nullptr )
  {
    hb_itemRelease( getFieldAlignCB );
    getFieldAlignCB = nullptr;
  }
  if( getFieldBGColorCB != nullptr )
  {
    hb_itemRelease( getFieldBGColorCB );
    getFieldBGColorCB = nullptr;
  }
  if( getFieldFGColorCB != nullptr )
  {
    hb_itemRelease( getFieldFGColorCB );
    getFieldFGColorCB = nullptr;
  }

  // cabeçalho horizontal
  if( getHHCB != nullptr )
  {
    hb_itemRelease( getHHCB );
    getHHCB = nullptr;
  }
  if( getHHDecorationCB != nullptr )
  {
    hb_itemRelease( getHHDecorationCB );
    getHHDecorationCB = nullptr;
  }
  if( getHHFontCB != nullptr )
  {
    hb_itemRelease( getHHFontCB );
    getHHFontCB = nullptr;
  }
  if( getHHAlignCB != nullptr )
  {
    hb_itemRelease( getHHAlignCB );
    getHHAlignCB = nullptr;
  }
  if( getHHBGColorCB != nullptr )
  {
    hb_itemRelease( getHHBGColorCB );
    getHHBGColorCB = nullptr;
  }
  if( getHHFGColorCB != nullptr )
  {
    hb_itemRelease( getHHFGColorCB );
    getHHFGColorCB = nullptr;
  }

  // cabeçalho vertical
  if( getVHCB != nullptr )
  {
    hb_itemRelease( getVHCB );
    getVHCB = nullptr;
  }
  if( getVHDecorationCB != nullptr )
  {
    hb_itemRelease( getVHDecorationCB );
    getVHDecorationCB = nullptr;
  }
  if( getVHFontCB != nullptr )
  {
    hb_itemRelease( getVHFontCB );
    getVHFontCB = nullptr;
  }
  if( getVHAlignCB != nullptr )
  {
    hb_itemRelease( getVHAlignCB );
    getVHAlignCB = nullptr;
  }
  if( getVHBGColorCB != nullptr )
  {
    hb_itemRelease( getVHBGColorCB );
    getVHBGColorCB = nullptr;
  }
  if( getVHFGColorCB != nullptr )
  {
    hb_itemRelease( getVHFGColorCB );
    getVHFGColorCB = nullptr;
  }
}

/*
  define o codeblock para o número de linhas
*/
void HAbstractTableModel::setRowCountCB( PHB_ITEM block )
{
  if( rowCountCB != nullptr )
  {
    hb_itemRelease( rowCountCB );
  }
  if( block != nullptr )
  {
    rowCountCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o número de colunas
*/
void HAbstractTableModel::setColumnCountCB( PHB_ITEM block )
{
  if( colCountCB != nullptr )
  {
    hb_itemRelease( colCountCB );
  }
  if( block != nullptr )
  {
    colCountCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o conteúdo da célula
*/
void HAbstractTableModel::setDisplayRoleCB( PHB_ITEM block )
{
  if( getFieldCB != nullptr )
  {
    hb_itemRelease( getFieldCB );
  }
  if( block != nullptr )
  {
    getFieldCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a decoração da célula
*/
void HAbstractTableModel::setDecorationRoleCB( PHB_ITEM block )
{
  if( getFieldDecorationCB != nullptr )
  {
    hb_itemRelease( getFieldDecorationCB );
  }
  if( block != nullptr )
  {
    getFieldDecorationCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a edição da célula
*/
void HAbstractTableModel::setEditRoleCB( PHB_ITEM block )
{
  if( getFieldEditCB != nullptr )
  {
    hb_itemRelease( getFieldEditCB );
  }
  if( block != nullptr )
  {
    getFieldEditCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o tooltip da célula
*/
void HAbstractTableModel::setToolTipRoleCB( PHB_ITEM block )
{
  if( getFieldToolTipCB != nullptr )
  {
    hb_itemRelease( getFieldToolTipCB );
  }
  if( block != nullptr )
  {
    getFieldToolTipCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o statustip da célula
*/
void HAbstractTableModel::setStatusTipRoleCB( PHB_ITEM block )
{
  if( getFieldStatusTipCB != nullptr )
  {
    hb_itemRelease( getFieldStatusTipCB );
  }
  if( block != nullptr )
  {
    getFieldStatusTipCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o whatsthis da célula
*/
void HAbstractTableModel::setWhatsThisRoleCB( PHB_ITEM block )
{
  if( getFieldWhatsThisCB != nullptr )
  {
    hb_itemRelease( getFieldWhatsThisCB );
  }
  if( block != nullptr )
  {
    getFieldWhatsThisCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o sizehint da célula
*/
void HAbstractTableModel::setSizeHintRoleCB( PHB_ITEM block )
{
  if( getFieldSizeHintCB != nullptr )
  {
    hb_itemRelease( getFieldSizeHintCB );
  }
  if( block != nullptr )
  {
    getFieldSizeHintCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a fonte da célula
*/
void HAbstractTableModel::setFontRoleCB( PHB_ITEM block )
{
  if( getFieldFontCB != nullptr )
  {
    hb_itemRelease( getFieldFontCB );
  }
  if( block != nullptr )
  {
    getFieldFontCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o alinhamento do conteúdo da célula
*/
void HAbstractTableModel::setTextAlignmentRoleCB( PHB_ITEM block )
{
  if( getFieldAlignCB != nullptr )
  {
    hb_itemRelease( getFieldAlignCB );
  }
  if( block != nullptr )
  {
    getFieldAlignCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o background da célula
*/
void HAbstractTableModel::setBackgroundRoleCB( PHB_ITEM block )
{
  if( getFieldBGColorCB != nullptr )
  {
    hb_itemRelease( getFieldBGColorCB );
  }
  if( block != nullptr )
  {
    getFieldBGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o foreground da célula
*/
void HAbstractTableModel::setForegroundRoleCB( PHB_ITEM block )
{
  if( getFieldFGColorCB != nullptr )
  {
    hb_itemRelease( getFieldFGColorCB );
  }
  if( block != nullptr )
  {
    getFieldFGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o conteúdo do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderDisplayRoleCB( PHB_ITEM block )
{
  if( getHHCB != nullptr )
  {
    hb_itemRelease( getHHCB );
  }
  if( block != nullptr )
  {
    getHHCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a decoração do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderDecorationRoleCB( PHB_ITEM block )
{
  if( getHHDecorationCB != nullptr )
  {
    hb_itemRelease( getHHDecorationCB );
  }
  if( block != nullptr )
  {
    getHHDecorationCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a fonte do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderFontRoleCB( PHB_ITEM block )
{
  if( getHHFontCB != nullptr )
  {
    hb_itemRelease( getHHFontCB );
  }
  if( block != nullptr )
  {
    getHHFontCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o alinhamento do conteúdo do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderTextAlignmentRoleCB( PHB_ITEM block )
{
  if( getHHAlignCB != nullptr )
  {
    hb_itemRelease( getHHAlignCB );
  }
  if( block != nullptr )
  {
    getHHAlignCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o background do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderBackgroundRoleCB( PHB_ITEM block )
{
  if( getHHBGColorCB != nullptr )
  {
    hb_itemRelease( getHHBGColorCB );
  }
  if( block != nullptr )
  {
    getHHBGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o foreground do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderForegroundRoleCB( PHB_ITEM block )
{
  if( getHHFGColorCB != nullptr )
  {
    hb_itemRelease( getHHFGColorCB );
  }
  if( block != nullptr )
  {
    getHHFGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o conteúdo do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderDisplayRoleCB( PHB_ITEM block )
{
  if( getVHCB != nullptr )
  {
    hb_itemRelease( getVHCB );
  }
  if( block != nullptr )
  {
    getVHCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a decoração do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderDecorationRoleCB( PHB_ITEM block )
{
  if( getVHDecorationCB != nullptr )
  {
    hb_itemRelease( getVHDecorationCB );
  }
  if( block != nullptr )
  {
    getVHDecorationCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a fonte do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderFontRoleCB( PHB_ITEM block )
{
  if( getVHFontCB != nullptr )
  {
    hb_itemRelease( getVHFontCB );
  }
  if( block != nullptr )
  {
    getVHFontCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o alinhamento do conteúdo do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderTextAlignmentRoleCB( PHB_ITEM block )
{
  if( getVHAlignCB != nullptr )
  {
    hb_itemRelease( getVHAlignCB );
  }
  if( block != nullptr )
  {
    getVHAlignCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o background do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderBackgroundRoleCB( PHB_ITEM block )
{
  if( getVHBGColorCB != nullptr )
  {
    hb_itemRelease( getVHBGColorCB );
  }
  if( block != nullptr )
  {
    getVHBGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o foreground do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderForegroundRoleCB( PHB_ITEM block )
{
  if( getVHFGColorCB != nullptr )
  {
    hb_itemRelease( getVHFGColorCB );
  }
  if( block != nullptr )
  {
    getVHFGColorCB = hb_itemNew( block );
  }
}

/*
  executa os codeblocks (células), conforme a informação (role) requisitada
*/
QVariant HAbstractTableModel::data( const QModelIndex & index, int role ) const
{
  QVariant data;

  // TODO: confirmar se a verificação abaixo é realmente necessária
  if( index.isValid() == false )
  {
    return data;
  }

  if( ( role == Qt::DisplayRole ) && ( getFieldCB != nullptr ) )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldCB, 2, pRow, pCol ) );
    if( hb_itemType( pRet ) & HB_IT_STRING )
    {
      #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
      data = QLatin1String( hb_itemGetCPtr( pRet ) );
      #else
      data = hb_itemGetCPtr( pRet );
      #endif
    }
    else if( hb_itemType( pRet ) & HB_IT_MEMO )
    {
      #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
      data = QLatin1String( hb_itemGetCPtr( pRet ) );
      #else
      data = hb_itemGetCPtr( pRet );
      #endif
    }
    else if( hb_itemType( pRet ) & HB_IT_DOUBLE )
    {
      data = hb_itemGetND( pRet );
    }
    else if( hb_itemType( pRet ) & HB_IT_NUMERIC )
    {
      data = hb_itemGetNI( pRet );
    }
    else if( hb_itemType( pRet ) & HB_IT_LOGICAL )
    {
      data = hb_itemGetL( pRet );
    }
    else if( hb_itemType( pRet ) & HB_IT_DATE )
    {
      int y,m,d;
      hb_dateDecode( hb_itemGetDL( pRet ), &y, &m, &d );
      QDate date(y,m,d);
      data = date;
    }
    else if( hb_itemType( pRet ) & HB_IT_OBJECT )
    {
      void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
      //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
      //if( clsid == Class_Id_QVariant )
      if( hb_clsIsParent( hb_objGetClass( pRet ), "QVARIANT" ) )
      {
        data = *( (QVariant *) ptr );
      }
    }
    hb_itemRelease( pRow );
    hb_itemRelease( pCol );
    hb_itemRelease( pRet );
  }
  else if( ( role == Qt::DecorationRole ) && ( getFieldDecorationCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldDecorationCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QIcon )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
       {
         data = *( (QIcon *) ptr );
       }
       //else if( clsid == Class_Id_QPixmap )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QPIXMAP" ) )
       {
         data = *( (QPixmap *) ptr );
       }
       ptr = nullptr;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QIcon( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::EditRole ) && ( getFieldEditCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldEditCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = hb_itemGetCPtr( pRet );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::ToolTipRole ) && ( getFieldToolTipCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldToolTipCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
       data = QLatin1String( hb_itemGetCPtr( pRet ) );
       #else
       data = hb_itemGetCPtr( pRet );
       #endif
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::StatusTipRole ) && ( getFieldStatusTipCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldStatusTipCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
       data = QLatin1String( hb_itemGetCPtr( pRet ) );
       #else
       data = hb_itemGetCPtr( pRet );
       #endif
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::WhatsThisRole ) && ( getFieldWhatsThisCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldWhatsThisCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
       data = QLatin1String( hb_itemGetCPtr( pRet ) );
       #else
       data = hb_itemGetCPtr( pRet );
       #endif
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::SizeHintRole ) && ( getFieldSizeHintCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldSizeHintCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QSize *) ptr );
       ptr = nullptr;
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::FontRole ) && ( getFieldFontCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldFontCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
       ptr = nullptr;
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::TextAlignmentRole ) && ( getFieldAlignCB != nullptr ) )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldAlignCB, 2, pRow, pCol ) );
    if( hb_itemType( pRet ) & HB_IT_NUMERIC )
    {
      data = hb_itemGetNI( pRet );
    }
    hb_itemRelease( pRow );
    hb_itemRelease( pCol );
    hb_itemRelease( pRet );
  }
  else if( ( role == Qt::BackgroundRole ) && ( getFieldBGColorCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldBGColorCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QColor )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
       {
         data = *( (QColor *) ptr );
       }
       //else if( clsid == Class_Id_QBrush )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QBRUSH" ) )
       {
         data = *( (QBrush *) ptr );
       }
       ptr = nullptr;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( ( role == Qt::ForegroundRole ) && ( getFieldFGColorCB  != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldFGColorCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QColor *) ptr );
       ptr = nullptr;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }

  return data;
}

/*
  executa os codeblocks (cabeçalhos), conforme a informação (role) requisitada
*/
QVariant HAbstractTableModel::headerData( int section, Qt::Orientation orientation, int role ) const
{
  QVariant data;

  if( orientation == Qt::Horizontal )
  {
    if( ( role == Qt::DisplayRole ) && ( getHHCB != nullptr ) )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
        data = QLatin1String( hb_itemGetCPtr( pRet ) );
        #else
        data = hb_itemGetCPtr( pRet );
        #endif
      }
      else if( hb_itemType( pRet ) & HB_IT_DOUBLE )
      {
        data = hb_itemGetND( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_LOGICAL )
      {
        data = hb_itemGetL( pRet );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::DecorationRole ) && ( getHHDecorationCB != nullptr ) )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHDecorationCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_OBJECT )
      {
        void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
        //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
        //if( clsid == Class_Id_QIcon )
        if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
        {
          data = *( (QIcon *) ptr );
        }
        //else if( clsid == Class_Id_QPixmap )
        else if( hb_clsIsParent( hb_objGetClass( pRet ), "QPIXMAP" ) )
        {
          data = *( (QPixmap *) ptr );
        }
        ptr = nullptr;
      }
      else if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        data = QIcon( hb_itemGetCPtr( pRet ) );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::FontRole ) && ( getHHFontCB != nullptr ) )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHFontCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
       ptr = nullptr;
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
    else if( ( role == Qt::TextAlignmentRole ) && ( getHHAlignCB != nullptr ) )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHAlignCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::BackgroundRole ) && ( getHHBGColorCB != nullptr ) )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHBGColorCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QColor )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
       {
         data = *( (QColor *) ptr );
       }
       //else if( clsid == Class_Id_QBrush )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QBRUSH" ) )
       {
         data = *( (QBrush *) ptr );
       }
       ptr = nullptr;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
    else if( ( role == Qt::ForegroundRole ) && ( getHHFGColorCB != nullptr ) )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHFGColorCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QColor *) ptr );
       ptr = nullptr;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
  }
  else if( orientation == Qt::Vertical )
  {
    if( ( role == Qt::DisplayRole ) && ( getVHCB != nullptr ) )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
        data = QLatin1String( hb_itemGetCPtr( pRet ) );
        #else
        data = hb_itemGetCPtr( pRet );
        #endif
      }
      else if( hb_itemType( pRet ) & HB_IT_DOUBLE )
      {
        data = hb_itemGetND( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_LOGICAL )
      {
        data = hb_itemGetL( pRet );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::DecorationRole ) && ( getVHDecorationCB != nullptr ) )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHDecorationCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_OBJECT )
      {
        void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
        //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
        //if( clsid == Class_Id_QIcon )
        if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
        {
          data = *( (QIcon *) ptr );
        }
        //else if( clsid == Class_Id_QPixmap )
        else if( hb_clsIsParent( hb_objGetClass( pRet ), "QPIXMAP" ) )
        {
          data = *( (QPixmap *) ptr );
        }
        ptr = nullptr;
      }
      else if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        data = QIcon( hb_itemGetCPtr( pRet ) );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::FontRole ) && ( getVHFontCB != nullptr ) )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHFontCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
       ptr = nullptr;
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
    else if( ( role == Qt::TextAlignmentRole ) && ( getVHAlignCB != nullptr ) )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHAlignCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::BackgroundRole ) && ( getVHBGColorCB != nullptr ) )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHBGColorCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QColor )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
       {
         data = *( (QColor *) ptr );
       }
       //else if( clsid == Class_Id_QBrush )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QBRUSH" ) )
       {
         data = *( (QBrush *) ptr );
       }
       ptr = nullptr;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
    else if( ( role == Qt::ForegroundRole ) && ( getVHFGColorCB != nullptr ) )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHFGColorCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QColor *) ptr );
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
  }

  return data;
}

/*
  executa o codeblock que retorna o número de linhas
*/
int HAbstractTableModel::rowCount( const QModelIndex & parent ) const
{
  if( parent.isValid() )
  {
    return 0;
  }
  else
  {
    if( rowCountCB != nullptr )
    {
      return (int) hb_itemGetNI( hb_vmEvalBlockV( rowCountCB, 0 ) );
    }
    else
    {
      return 0;
    }
  }
}

/*
  executa o codeblock que retorna o número de colunas
*/
int HAbstractTableModel::columnCount( const QModelIndex & parent ) const
{
  if( parent.isValid() )
  {
    return 0;
  }
  else
  {
    if( colCountCB != nullptr )
    {
      return (int) hb_itemGetNI( hb_vmEvalBlockV( colCountCB, 0 ) );
    }
    else
    {
      return 0;
    }
  }
}

/*
  emite o sinal QAbstractItemModel::layoutChanged(), forçando
  o recarregamento dos dados
*/
void HAbstractTableModel::reloadData()
{
  // Notas da documentação do Qt:
  emit QAbstractTableModel::layoutAboutToBeChanged();
  // Remember the QModelIndex that will change
  // Update your internal data
  // Call changePersistentIndex()
  // emit layoutChanged
  //emit QAbstractItemModel::layoutChanged();
  emit QAbstractTableModel::layoutChanged();
}

/*
  cria um objeto da classe QModelIndex
*/
// QModelIndex HAbstractTableModel::createIndex ( int row, int column )
// {
//   return QAbstractItemModel::createIndex( row, column, 0 );
// }
