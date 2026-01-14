//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2026 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oFile
   LOCAL oStream

   oFile := QFile():new("QXmlStreamWriter.xml")

   if oFile:open(hb_bitor(QIODevice_WriteOnly, QIODevice_Text))

      oStream := QXmlStreamWriter():new(oFile)
      oStream:setAutoFormatting(.T.)
      oStream:writeStartDocument()

      oStream:writeStartElement("element")
      oStream:writeAttribute("attribute", "value of the attribute")
      oStream:writeTextElement("text", "value of the text")
      oStream:writeEndElement()

      oStream:writeEndDocument()

      oFile:close()

   endif

   // delete objects
   oFile:delete()

RETURN NIL
