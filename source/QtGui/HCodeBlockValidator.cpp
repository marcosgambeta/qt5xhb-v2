//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "HCodeBlockValidator.hpp"

HCodeBlockValidator::HCodeBlockValidator(QObject *parent) : QValidator(parent)
{
  m_block = nullptr;
}

HCodeBlockValidator::HCodeBlockValidator(PHB_ITEM codeblock, QObject *parent) : QValidator(parent)
{
  m_block = hb_itemNew(codeblock);
}

HCodeBlockValidator::~HCodeBlockValidator()
{
  if (m_block != nullptr)
  {
    hb_itemRelease(m_block);
    m_block = nullptr;
  }
}

QValidator::State HCodeBlockValidator::validate(QString &input, int &pos) const
{
  /*
    executa o codeblock de valida��o
  */
  auto pInput = hb_itemPutC(NULL, input.toLatin1().data());
  auto pPos = hb_itemPutNI(NULL, pos);
  auto pRet = hb_vmEvalBlockV(m_block, 2, pInput, pPos);
  hb_itemRelease(pInput);
  hb_itemRelease(pPos);

  /*
    processa o resultado armazenado em pRet {cString,nPos,nState}
  */
  auto pTemp1 = hb_arrayGetItemPtr(pRet, 1);
  char *str = hb_itemGetC(pTemp1);
#if (QT_VERSION >= QT_VERSION_CHECK(5, 0, 0))
  input = QLatin1String(str);
#else
  input = str;
#endif
  hb_itemFreeC(str);
  auto pTemp2 = hb_arrayGetItemPtr(pRet, 2);
  pos = hb_itemGetNI(pTemp2);
  auto pTemp3 = hb_arrayGetItemPtr(pRet, 3);
  int state = hb_itemGetNI(pTemp3);
  return (QValidator::State)state;
  hb_itemRelease(pTemp1);
  hb_itemRelease(pTemp2);
  hb_itemRelease(pTemp3);

  /*
    libera item
  */
  hb_itemRelease(pRet);
}

void HCodeBlockValidator::fixup(QString &input) const
{
  // TODO: implementar
}
