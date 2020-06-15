/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "HAbstractTableModel.h"

/*
  método construtor
*/
HAbstractTableModel::HAbstractTableModel( QObject * parent ) : QAbstractTableModel( parent )
{
  // linhas e colunas
  m_rowCountCB = nullptr;
  m_colCountCB = nullptr;

  // células
  m_getFieldCB = nullptr;
  m_getFieldDecorationCB = nullptr;
  m_getFieldEditCB = nullptr;
  m_getFieldToolTipCB = nullptr;
  m_getFieldStatusTipCB = nullptr;
  m_getFieldWhatsThisCB = nullptr;
  m_getFieldSizeHintCB = nullptr;
  m_getFieldFontCB = nullptr;
  m_getFieldAlignCB = nullptr;
  m_getFieldBGColorCB = nullptr;
  m_getFieldFGColorCB = nullptr;

  // cabeçalho horizontal
  m_getHHCB = nullptr;
  m_getHHDecorationCB = nullptr;
  m_getHHFontCB = nullptr;
  m_getHHAlignCB = nullptr;
  m_getHHBGColorCB = nullptr;
  m_getHHFGColorCB = nullptr;

  // cabeçalho vertical
  m_getVHCB = nullptr;
  m_getVHDecorationCB = nullptr;
  m_getVHFontCB = nullptr;
  m_getVHAlignCB = nullptr;
  m_getVHBGColorCB = nullptr;
  m_getVHFGColorCB = nullptr;

  m_flagsCB = nullptr;
  m_setDataCB = nullptr;
}

/*
  método destruidor
*/
HAbstractTableModel::~HAbstractTableModel()
{
  // linhas e colunas
  if( m_rowCountCB != nullptr )
  {
    hb_itemRelease( m_rowCountCB );
    m_rowCountCB = nullptr;
  }
  if( m_colCountCB != nullptr )
  {
    hb_itemRelease( m_colCountCB );
    m_colCountCB = nullptr;
  }

  // células
  if( m_getFieldCB != nullptr )
  {
    hb_itemRelease( m_getFieldCB );
    m_getFieldCB = nullptr;
  }
  if( m_getFieldDecorationCB != nullptr )
  {
    hb_itemRelease( m_getFieldDecorationCB );
    m_getFieldDecorationCB = nullptr;
  }
  if( m_getFieldEditCB != nullptr )
  {
    hb_itemRelease( m_getFieldEditCB );
    m_getFieldEditCB = nullptr;
  }
  if( m_getFieldToolTipCB != nullptr )
  {
    hb_itemRelease( m_getFieldToolTipCB );
    m_getFieldToolTipCB = nullptr;
  }
  if( m_getFieldStatusTipCB != nullptr )
  {
    hb_itemRelease( m_getFieldStatusTipCB );
    m_getFieldStatusTipCB = nullptr;
  }
  if( m_getFieldWhatsThisCB != nullptr )
  {
    hb_itemRelease( m_getFieldWhatsThisCB );
    m_getFieldWhatsThisCB = nullptr;
  }
  if( m_getFieldSizeHintCB != nullptr )
  {
    hb_itemRelease( m_getFieldSizeHintCB );
    m_getFieldSizeHintCB = nullptr;
  }
  if( m_getFieldFontCB != nullptr )
  {
    hb_itemRelease( m_getFieldFontCB );
    m_getFieldFontCB = nullptr;
  }
  if( m_getFieldAlignCB != nullptr )
  {
    hb_itemRelease( m_getFieldAlignCB );
    m_getFieldAlignCB = nullptr;
  }
  if( m_getFieldBGColorCB != nullptr )
  {
    hb_itemRelease( m_getFieldBGColorCB );
    m_getFieldBGColorCB = nullptr;
  }
  if( m_getFieldFGColorCB != nullptr )
  {
    hb_itemRelease( m_getFieldFGColorCB );
    m_getFieldFGColorCB = nullptr;
  }

  // cabeçalho horizontal
  if( m_getHHCB != nullptr )
  {
    hb_itemRelease( m_getHHCB );
    m_getHHCB = nullptr;
  }
  if( m_getHHDecorationCB != nullptr )
  {
    hb_itemRelease( m_getHHDecorationCB );
    m_getHHDecorationCB = nullptr;
  }
  if( m_getHHFontCB != nullptr )
  {
    hb_itemRelease( m_getHHFontCB );
    m_getHHFontCB = nullptr;
  }
  if( m_getHHAlignCB != nullptr )
  {
    hb_itemRelease( m_getHHAlignCB );
    m_getHHAlignCB = nullptr;
  }
  if( m_getHHBGColorCB != nullptr )
  {
    hb_itemRelease( m_getHHBGColorCB );
    m_getHHBGColorCB = nullptr;
  }
  if( m_getHHFGColorCB != nullptr )
  {
    hb_itemRelease( m_getHHFGColorCB );
    m_getHHFGColorCB = nullptr;
  }

  // cabeçalho vertical
  if( m_getVHCB != nullptr )
  {
    hb_itemRelease( m_getVHCB );
    m_getVHCB = nullptr;
  }
  if( m_getVHDecorationCB != nullptr )
  {
    hb_itemRelease( m_getVHDecorationCB );
    m_getVHDecorationCB = nullptr;
  }
  if( m_getVHFontCB != nullptr )
  {
    hb_itemRelease( m_getVHFontCB );
    m_getVHFontCB = nullptr;
  }
  if( m_getVHAlignCB != nullptr )
  {
    hb_itemRelease( m_getVHAlignCB );
    m_getVHAlignCB = nullptr;
  }
  if( m_getVHBGColorCB != nullptr )
  {
    hb_itemRelease( m_getVHBGColorCB );
    m_getVHBGColorCB = nullptr;
  }
  if( m_getVHFGColorCB != nullptr )
  {
    hb_itemRelease( m_getVHFGColorCB );
    m_getVHFGColorCB = nullptr;
  }

  if( m_flagsCB != nullptr )
  {
    hb_itemRelease( m_flagsCB );
    m_flagsCB = nullptr;
  }
  if( m_setDataCB != nullptr )
  {
    hb_itemRelease( m_setDataCB );
    m_setDataCB = nullptr;
  }
}

/*
  define o codeblock para o número de linhas
*/
void HAbstractTableModel::setRowCountCB( PHB_ITEM block )
{
  if( m_rowCountCB != nullptr )
  {
    hb_itemRelease( m_rowCountCB );
  }
  if( block != nullptr )
  {
    m_rowCountCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o número de colunas
*/
void HAbstractTableModel::setColumnCountCB( PHB_ITEM block )
{
  if( m_colCountCB != nullptr )
  {
    hb_itemRelease( m_colCountCB );
  }
  if( block != nullptr )
  {
    m_colCountCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o conteúdo da célula
*/
void HAbstractTableModel::setDisplayRoleCB( PHB_ITEM block )
{
  if( m_getFieldCB != nullptr )
  {
    hb_itemRelease( m_getFieldCB );
  }
  if( block != nullptr )
  {
    m_getFieldCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a decoração da célula
*/
void HAbstractTableModel::setDecorationRoleCB( PHB_ITEM block )
{
  if( m_getFieldDecorationCB != nullptr )
  {
    hb_itemRelease( m_getFieldDecorationCB );
  }
  if( block != nullptr )
  {
    m_getFieldDecorationCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a edição da célula
*/
void HAbstractTableModel::setEditRoleCB( PHB_ITEM block )
{
  if( m_getFieldEditCB != nullptr )
  {
    hb_itemRelease( m_getFieldEditCB );
  }
  if( block != nullptr )
  {
    m_getFieldEditCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o tooltip da célula
*/
void HAbstractTableModel::setToolTipRoleCB( PHB_ITEM block )
{
  if( m_getFieldToolTipCB != nullptr )
  {
    hb_itemRelease( m_getFieldToolTipCB );
  }
  if( block != nullptr )
  {
    m_getFieldToolTipCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o statustip da célula
*/
void HAbstractTableModel::setStatusTipRoleCB( PHB_ITEM block )
{
  if( m_getFieldStatusTipCB != nullptr )
  {
    hb_itemRelease( m_getFieldStatusTipCB );
  }
  if( block != nullptr )
  {
    m_getFieldStatusTipCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o whatsthis da célula
*/
void HAbstractTableModel::setWhatsThisRoleCB( PHB_ITEM block )
{
  if( m_getFieldWhatsThisCB != nullptr )
  {
    hb_itemRelease( m_getFieldWhatsThisCB );
  }
  if( block != nullptr )
  {
    m_getFieldWhatsThisCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o sizehint da célula
*/
void HAbstractTableModel::setSizeHintRoleCB( PHB_ITEM block )
{
  if( m_getFieldSizeHintCB != nullptr )
  {
    hb_itemRelease( m_getFieldSizeHintCB );
  }
  if( block != nullptr )
  {
    m_getFieldSizeHintCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a fonte da célula
*/
void HAbstractTableModel::setFontRoleCB( PHB_ITEM block )
{
  if( m_getFieldFontCB != nullptr )
  {
    hb_itemRelease( m_getFieldFontCB );
  }
  if( block != nullptr )
  {
    m_getFieldFontCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o alinhamento do conteúdo da célula
*/
void HAbstractTableModel::setTextAlignmentRoleCB( PHB_ITEM block )
{
  if( m_getFieldAlignCB != nullptr )
  {
    hb_itemRelease( m_getFieldAlignCB );
  }
  if( block != nullptr )
  {
    m_getFieldAlignCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o background da célula
*/
void HAbstractTableModel::setBackgroundRoleCB( PHB_ITEM block )
{
  if( m_getFieldBGColorCB != nullptr )
  {
    hb_itemRelease( m_getFieldBGColorCB );
  }
  if( block != nullptr )
  {
    m_getFieldBGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o foreground da célula
*/
void HAbstractTableModel::setForegroundRoleCB( PHB_ITEM block )
{
  if( m_getFieldFGColorCB != nullptr )
  {
    hb_itemRelease( m_getFieldFGColorCB );
  }
  if( block != nullptr )
  {
    m_getFieldFGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o conteúdo do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderDisplayRoleCB( PHB_ITEM block )
{
  if( m_getHHCB != nullptr )
  {
    hb_itemRelease( m_getHHCB );
  }
  if( block != nullptr )
  {
    m_getHHCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a decoração do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderDecorationRoleCB( PHB_ITEM block )
{
  if( m_getHHDecorationCB != nullptr )
  {
    hb_itemRelease( m_getHHDecorationCB );
  }
  if( block != nullptr )
  {
    m_getHHDecorationCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a fonte do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderFontRoleCB( PHB_ITEM block )
{
  if( m_getHHFontCB != nullptr )
  {
    hb_itemRelease( m_getHHFontCB );
  }
  if( block != nullptr )
  {
    m_getHHFontCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o alinhamento do conteúdo do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderTextAlignmentRoleCB( PHB_ITEM block )
{
  if( m_getHHAlignCB != nullptr )
  {
    hb_itemRelease( m_getHHAlignCB );
  }
  if( block != nullptr )
  {
    m_getHHAlignCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o background do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderBackgroundRoleCB( PHB_ITEM block )
{
  if( m_getHHBGColorCB != nullptr )
  {
    hb_itemRelease( m_getHHBGColorCB );
  }
  if( block != nullptr )
  {
    m_getHHBGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o foreground do cabeçalho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderForegroundRoleCB( PHB_ITEM block )
{
  if( m_getHHFGColorCB != nullptr )
  {
    hb_itemRelease( m_getHHFGColorCB );
  }
  if( block != nullptr )
  {
    m_getHHFGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o conteúdo do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderDisplayRoleCB( PHB_ITEM block )
{
  if( m_getVHCB != nullptr )
  {
    hb_itemRelease( m_getVHCB );
  }
  if( block != nullptr )
  {
    m_getVHCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a decoração do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderDecorationRoleCB( PHB_ITEM block )
{
  if( m_getVHDecorationCB != nullptr )
  {
    hb_itemRelease( m_getVHDecorationCB );
  }
  if( block != nullptr )
  {
    m_getVHDecorationCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a fonte do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderFontRoleCB( PHB_ITEM block )
{
  if( m_getVHFontCB != nullptr )
  {
    hb_itemRelease( m_getVHFontCB );
  }
  if( block != nullptr )
  {
    m_getVHFontCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o alinhamento do conteúdo do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderTextAlignmentRoleCB( PHB_ITEM block )
{
  if( m_getVHAlignCB != nullptr )
  {
    hb_itemRelease( m_getVHAlignCB );
  }
  if( block != nullptr )
  {
    m_getVHAlignCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o background do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderBackgroundRoleCB( PHB_ITEM block )
{
  if( m_getVHBGColorCB != nullptr )
  {
    hb_itemRelease( m_getVHBGColorCB );
  }
  if( block != nullptr )
  {
    m_getVHBGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o foreground do cabeçalho vertical
*/
void HAbstractTableModel::setVerticalHeaderForegroundRoleCB( PHB_ITEM block )
{
  if( m_getVHFGColorCB != nullptr )
  {
    hb_itemRelease( m_getVHFGColorCB );
  }
  if( block != nullptr )
  {
    m_getVHFGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para as flags
*/
void HAbstractTableModel::setFlagsCB( PHB_ITEM block )
{
  if( m_flagsCB != nullptr )
  {
    hb_itemRelease( m_flagsCB );
  }
  if( block != nullptr )
  {
    m_flagsCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a alteração dos dados
*/
void HAbstractTableModel::setSetDataCB( PHB_ITEM block )
{
  if( m_setDataCB != nullptr )
  {
    hb_itemRelease( m_setDataCB );
  }
  if( block != nullptr )
  {
    m_setDataCB = hb_itemNew( block );
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

  if( ( role == Qt::DisplayRole ) && ( m_getFieldCB != nullptr ) )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldCB, 2, pRow, pCol ) );
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
      if( hb_clsIsParent( hb_objGetClass( pRet ), "QVARIANT" ) )
      {
        data = *( (QVariant *) ptr );
      }
    }
    hb_itemRelease( pRow );
    hb_itemRelease( pCol );
    hb_itemRelease( pRet );
  }
  else if( ( role == Qt::DecorationRole ) && ( m_getFieldDecorationCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldDecorationCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
       {
         data = *( (QIcon *) ptr );
       }
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
  else if( ( role == Qt::EditRole ) && ( m_getFieldEditCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldEditCB, 2, pRow, pCol ) );
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
  else if( ( role == Qt::ToolTipRole ) && ( m_getFieldToolTipCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldToolTipCB, 2, pRow, pCol ) );
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
  else if( ( role == Qt::StatusTipRole ) && ( m_getFieldStatusTipCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldStatusTipCB, 2, pRow, pCol ) );
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
  else if( ( role == Qt::WhatsThisRole ) && ( m_getFieldWhatsThisCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldWhatsThisCB, 2, pRow, pCol ) );
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
  else if( ( role == Qt::SizeHintRole ) && ( m_getFieldSizeHintCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldSizeHintCB, 2, pRow, pCol ) );
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
  else if( ( role == Qt::FontRole ) && ( m_getFieldFontCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldFontCB, 2, pRow, pCol ) );
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
  else if( ( role == Qt::TextAlignmentRole ) && ( m_getFieldAlignCB != nullptr ) )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldAlignCB, 2, pRow, pCol ) );
    if( hb_itemType( pRet ) & HB_IT_NUMERIC )
    {
      data = hb_itemGetNI( pRet );
    }
    hb_itemRelease( pRow );
    hb_itemRelease( pCol );
    hb_itemRelease( pRet );
  }
  else if( ( role == Qt::BackgroundRole ) && ( m_getFieldBGColorCB != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldBGColorCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
       {
         data = *( (QColor *) ptr );
       }
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
  else if( ( role == Qt::ForegroundRole ) && ( m_getFieldFGColorCB  != nullptr ) )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getFieldFGColorCB, 2, pRow, pCol ) );
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
    if( ( role == Qt::DisplayRole ) && ( m_getHHCB != nullptr ) )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHCB, 1, pCol ) );
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
    else if( ( role == Qt::DecorationRole ) && ( m_getHHDecorationCB != nullptr ) )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHDecorationCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_OBJECT )
      {
        void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
        if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
        {
          data = *( (QIcon *) ptr );
        }
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
    else if( ( role == Qt::FontRole ) && ( m_getHHFontCB != nullptr ) )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHFontCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
       ptr = nullptr;
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
    else if( ( role == Qt::TextAlignmentRole ) && ( m_getHHAlignCB != nullptr ) )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHAlignCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::BackgroundRole ) && ( m_getHHBGColorCB != nullptr ) )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHBGColorCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
       {
         data = *( (QColor *) ptr );
       }
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
    else if( ( role == Qt::ForegroundRole ) && ( m_getHHFGColorCB != nullptr ) )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getHHFGColorCB, 1, pCol ) );
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
    if( ( role == Qt::DisplayRole ) && ( m_getVHCB != nullptr ) )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHCB, 1, pRow ) );
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
    else if( ( role == Qt::DecorationRole ) && ( m_getVHDecorationCB != nullptr ) )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHDecorationCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_OBJECT )
      {
        void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
        if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
        {
          data = *( (QIcon *) ptr );
        }
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
    else if( ( role == Qt::FontRole ) && ( m_getVHFontCB != nullptr ) )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHFontCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
       ptr = nullptr;
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
    else if( ( role == Qt::TextAlignmentRole ) && ( m_getVHAlignCB != nullptr ) )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHAlignCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( ( role == Qt::BackgroundRole ) && ( m_getVHBGColorCB != nullptr ) )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHBGColorCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
       {
         data = *( (QColor *) ptr );
       }
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
    else if( ( role == Qt::ForegroundRole ) && ( m_getVHFGColorCB != nullptr ) )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_getVHFGColorCB, 1, pRow ) );
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
    if( m_rowCountCB != nullptr )
    {
      return (int) hb_itemGetNI( hb_vmEvalBlockV( m_rowCountCB, 0 ) );
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
    if( m_colCountCB != nullptr )
    {
      return (int) hb_itemGetNI( hb_vmEvalBlockV( m_colCountCB, 0 ) );
    }
    else
    {
      return 0;
    }
  }
}

Qt::ItemFlags HAbstractTableModel::flags( const QModelIndex &index ) const
{
  Qt::ItemFlags flags = Qt::ItemIsSelectable | Qt::ItemIsEnabled;

  if( m_flagsCB != nullptr )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );

    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_flagsCB, 2, pRow, pCol ) );

    if( hb_itemType( pRet ) & HB_IT_NUMERIC )
    {
      flags = (Qt::ItemFlags) hb_itemGetNI( pRet );
    }

    hb_itemRelease( pRow );
    hb_itemRelease( pCol );
    hb_itemRelease( pRet );

    return flags;
  }
  else
  {
    return flags;
  }
}

bool HAbstractTableModel::setData( const QModelIndex &index, const QVariant &value, int role )
{
  bool success = false;

  if( m_setDataCB != nullptr )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
    PHB_ITEM pValue = Qt5xHb::returnQVariantObject( (void *) &value );

    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( m_setDataCB, 3, pRow, pCol, pValue /*, pRole*/ ) );

    if( hb_itemType( pRet ) & HB_IT_LOGICAL )
    {
      success = hb_itemGetL( pRet );
    }

    hb_itemRelease( pRow );
    hb_itemRelease( pCol );
    hb_itemRelease( pValue );
    hb_itemRelease( pRet );
  }

  return success;
}

/*
  emite o sinal QAbstractItemModel::layoutChanged(), forçando
  o recarregamento dos dados
*/
void HAbstractTableModel::reloadData()
{
  // Notas da documentação do Qt:
  emit QAbstractItemModel::layoutAboutToBeChanged();
  // Remember the QModelIndex that will change
  // Update your internal data
  // Call changePersistentIndex()
  // emit layoutChanged
  //emit QAbstractItemModel::layoutChanged();
  emit QAbstractItemModel::layoutChanged();
}

/*
  cria um objeto da classe QModelIndex
*/
// QModelIndex HAbstractTableModel::createIndex ( int row, int column )
// {
//   return QAbstractItemModel::createIndex( row, column, 0 );
// }
