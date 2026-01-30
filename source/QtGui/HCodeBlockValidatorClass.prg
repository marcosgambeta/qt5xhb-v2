//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// clang-format off

#include <hbclass.ch>

CLASS HCodeBlockValidator INHERIT QValidator

   METHOD new
   METHOD delete
   METHOD validate
   METHOD fixup

   DESTRUCTOR destroyObject

ENDCLASS

PROCEDURE destroyObject() CLASS HCodeBlockValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include "HCodeBlockValidator.hpp"

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#define GET_PTR_FROM_SELF(p) auto p = (HCodeBlockValidator *)Qt5xHb::itemGetPtrStackSelfItem()

HB_FUNC_STATIC(HCODEBLOCKVALIDATOR_NEW)
{
  if (ISBETWEEN(0, 1) && ISQOBJECTORNIL(1)) {
    // explicit HCodeBlockValidator(QObject *parent = nullptr)
    auto obj = new HCodeBlockValidator(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  } else if (ISBETWEEN(1, 2) && ISQOBJECTORNIL(2)) {
    // HCodeBlockValidator(PHB_ITEM codeblock, QObject *parent = nullptr)
    auto obj = new HCodeBlockValidator(PBLOCKORSYMBOL(1), OPQOBJECT(2, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  } else {
    THROW_ERROR_3012();
  }
}

HB_FUNC_STATIC(HCODEBLOCKVALIDATOR_DELETE)
{
  GET_PTR_FROM_SELF(obj);
  DELETE_QOBJECT(obj);
  RETURN_SELF();
}

// QValidator::State validate(QString &input, int &pos) const
HB_FUNC_STATIC(HCODEBLOCKVALIDATOR_VALIDATE)
{
}

// void fixup(QString &input) const
HB_FUNC_STATIC(HCODEBLOCKVALIDATOR_FIXUP)
{
}

#pragma ENDDUMP
