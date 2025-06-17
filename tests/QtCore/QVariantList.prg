//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oVariant
   LOCAL aVariantList
   LOCAL n

   oVariant := QVariant():new19({"um", "dois", "tres", "quatro", "cinco"})

   aVariantList := oVariant:toList()

   ? Len(aVariantList)

   FOR n := 1 TO Len(aVariantList)
      ? aVariantList[n]:toString()
   NEXT n

RETURN NIL
