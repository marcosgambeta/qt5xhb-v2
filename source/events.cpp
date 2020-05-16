/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "events.h"

static Events *s_events = nullptr;

/*
  constructor
*/
Events::Events( QObject *parent ) : QObject( parent )
{
  m_list1 = new QVector<QObject*>( 1000, nullptr );          // armazenamento dos objetos
  m_list2 = new QVector<QEvent::Type>( 1000, QEvent::None ); // armazenamento dos tipos de evento
  m_list3 = new QVector<PHB_ITEM>( 1000, nullptr );          // armazenamento dos codeblock's
}

/*
  destructor
*/
Events::~Events()
{
  const int listsize = m_list1->size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( m_list1->at(i) != nullptr )
    {
      hb_itemRelease( m_list3->at(i) );
    }
  }

  delete m_list1;
  delete m_list2;
  delete m_list3;
}

/*
  filtro de eventos
*/
bool Events::eventFilter( QObject *obj, QEvent *event )
{
  QEvent::Type eventtype = event->type();

  auto index = -1;

  // obtem o indice do evento
  const int listsize = m_list1->size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( ( m_list1->at(i) == obj ) && ( m_list2->at(i) == eventtype ) )
    {
      index = i;
      break;
    }
  }

  // se não encontrado na lista, propaga o evento
  if( index == -1 )
  {
    return false;
  }

  // executa bloco de código/função
  PHB_ITEM pObject = Events_return_qobject( (QObject *) obj, "QOBJECT" );
  PHB_ITEM pEvent = Events_return_object( (QEvent *) event, "QEVENT" );

  bool result = hb_itemGetL( hb_vmEvalBlockV( m_list3->at(index), 2, pObject, pEvent ) );

  hb_itemRelease( pObject );
  hb_itemRelease( pEvent );

  // retorna resultado
  // true/.t.: interrompe processamento do evento
  // false/.f.: continua processamento do evento
  return result;
}

/*
  Conecta um determinado evento com um objeto
  Parâmetro 1: objeto
  Parâmetro 2: id do evento
  Parâmetro 3: codeblock
  Retorna true se a conexão foi bem sucedida ou false se falhou
  Função de uso interno, não deve ser usada nas aplicações do usuário
*/

//bool Events_connect_event( QObject * object, int type, PHB_ITEM codeblock )
bool Events::connectEvent( QObject * object, int type, PHB_ITEM codeblock )
{
  auto result = false;
  auto found = false;

  // instala eventfilter, se não houver nenhum evento ligado ao objeto
  if( m_list1->contains( object ) == false )
  {
    object->installEventFilter(this);
  }

  // verifica se já está na lista
  const int listsize = m_list1->size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( ( m_list1->at(i) == object ) && ( m_list2->at(i) == (QEvent::Type) type ) )
    {
      found = true;
      hb_itemRelease( codeblock ); // libera codeblock, pois nao sera utilizado
      break;
    }
  }

  // se nao encontrado na lista, adiciona
  if( !found )
  {
    // procura por posição livre
    auto index = m_list1->indexOf( nullptr );

    if( index == -1 ) // nao encontrou posicao livre
    {
      // adiciona evento na lista de eventos
      m_list1->append( object );
      m_list2->append( (QEvent::Type) type );
      m_list3->append( codeblock );
    }
    else // encontrou posicao livre
    {
      // coloca na posição livre
      m_list1->replace( index, object );
      m_list2->replace( index, (QEvent::Type) type );
      m_list3->replace( index, codeblock );
    }

    result = true;
  }

  return result;
}

bool Events_connect_event( QObject * object, int type, PHB_ITEM codeblock )
{
  return s_events->connectEvent( object, type, codeblock );
}

/*
  Desconecta um determinado evento
  Parâmetro 1: objeto
  Parâmetro 2: id do evento
  Retorna true se a desconexão foi bem sucedida ou false se falhou
  Função de uso interno, não deve ser usada nas aplicações do usuário
*/

//bool Events_disconnect_event( QObject * object, int type )
bool Events::disconnectEvent( QObject * object, int type )
{
  auto result = false;

  // remove evento da lista de eventos
  const int listsize = m_list1->size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( ( m_list1->at(i) == object ) && ( m_list2->at(i) == (QEvent::Type) type ) )
    {
      hb_itemRelease( m_list3->at(i) );
      m_list1->replace( i, nullptr );
      m_list2->replace( i, QEvent::None );
      m_list3->replace( i, nullptr );
      result = true;
    }
  }

  // desinstala eventfilter, se não houver mais nenhum evento
  if( m_list1->contains( object ) == false )
  {
    object->removeEventFilter(this);
  }

  return result;
}

bool Events_disconnect_event( QObject * object, int type )
{
  return s_events->disconnectEvent( object, type );
}

/*
  Libera todos os codeblocks relacionados com eventos do objeto 'obj',
  incluindo os eventos ligados aos filhos, netos, bisnetos, etc... (se children = true).
*/

//void Events_disconnect_all_events( QObject * obj, bool children )
void Events::disconnectAllEvents( QObject * obj, bool children )
{
  if( !children )
  {
    // percorre toda a lista de eventos
    const int listsize = m_list1->size();
    for( auto i = 0; i < listsize; ++i )
    {
      // elimina eventos ligados ao objeto 'obj'
      if( m_list1->at(i) == obj )
      {
        hb_itemRelease( m_list3->at(i) );
        m_list1->replace( i, nullptr );
        m_list2->replace( i, QEvent::None );
        m_list3->replace( i, nullptr );
      }
    }

    // desinstala eventfilter do objeto 'obj'
    if( m_list1->contains( obj ) == false )
    {
      obj->removeEventFilter(this);
    }
  }
  else
  {
    // obtém a lista de filhos, netos, bisnetos, etc...
    auto objectList = obj->findChildren<QObject *>();

    // adiciona o pai na lista
    objectList << obj;

    // percorre toda a lista de objetos
    const int listsize = objectList.size();
    for( auto i = 0; i < listsize; ++i )
    {
      QObject * currentObject = objectList.at(i);

      // percorre toda a lista de eventos
      const int listsize2 = m_list1->size();
      for( auto ii = 0; ii < listsize2; ++ii )
      {
        // elimina eventos ativos ligados ao objeto 'objectList.at(i)'
        if( m_list1->at(ii) == currentObject )
        {
          hb_itemRelease( m_list3->at(ii) );
          m_list1->replace( ii, nullptr );
          m_list2->replace( ii, QEvent::None );
          m_list3->replace( ii, nullptr );
        }
      }

      // desinstala eventfilter do objeto 'objectList.at(i)'
      if( m_list1->contains( currentObject ) == false )
      {
        currentObject->removeEventFilter(this);
      }
    }
  }
}

void Events_disconnect_all_events( QObject * obj, bool children )
{
  s_events->disconnectAllEvents( obj, children );
}

/*
  Retorna o tamanho da lista de eventos.
  Atenção: está função não faz parte da API pública, podendo
  ser removida ou sofrer modificações futuramente.
*/

int Events::size()
{
  return m_list1->size();
}

HB_FUNC( QTXHB_EVENTS_SIZE )
{
  hb_retni( s_events->size() );
}

/*
  Retorna o número de eventos ativos na lista de eventos.
  Atenção: está função não faz parte da API pública, podendo
  ser removida ou sofrer modificações futuramente.
*/

int Events::active()
{
  auto count = 0;

  // percorre toda a lista de eventos
  const int listsize = m_list1->size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( m_list1->at(i) != nullptr )
    {
      ++count;
    }
  }

  return count;
}

HB_FUNC( QTXHB_EVENTS_ACTIVE )
{
  hb_retni( s_events->active() );
}


HB_FUNC( QTXHB_EVENTS_SIZE_ACTIVE ) // deprecated
{
  hb_retni( s_events->active() );
}

/*
  retorna um objeto Harbour da classe QEvent ou derivada
*/

PHB_ITEM Events_return_object( QEvent * ptr, const char * classname )
{
  static int eventEnumIndex = QEvent::staticMetaObject.indexOfEnumerator("Type");

  QString eventname = QEvent::staticMetaObject.enumerator(eventEnumIndex).valueToKey(ptr->type());

  PHB_DYNS pDynSym;

  QString name = "q" + eventname + "event";

  pDynSym = hb_dynsymFindName( (const char *) name.toUpper().toLatin1().data() );

  if( !pDynSym )
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  PHB_ITEM pObject = hb_itemNew( NULL );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (QEvent *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }

  return pObject;
}

/*
  retorna um objeto Harbour da classe QObject ou derivada
*/

PHB_ITEM Events_return_qobject( QObject * ptr, const char * classname )
{
  PHB_DYNS pDynSym = NULL;

  if( ptr )
  {
    pDynSym = hb_dynsymFindName( (const char *) ptr->metaObject()->className() );
  }

  if( !pDynSym )
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  PHB_ITEM pObject = hb_itemNew( NULL );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }

  return pObject;
}

#include "hbvm.h"
#include "hbinit.h"

static void qt5xhb_events_init( void * cargo )
{
  HB_SYMBOL_UNUSED( cargo );

  if( s_events == nullptr )
  {
    s_events = new Events();
  }
}

static void qt5xhb_events_exit( void * cargo )
{
  HB_SYMBOL_UNUSED( cargo );

  delete s_events;
}

HB_CALL_ON_STARTUP_BEGIN( _qt5xhb_events_init_ )
  hb_vmAtInit( qt5xhb_events_init, nullptr );
  hb_vmAtExit( qt5xhb_events_exit, nullptr );
HB_CALL_ON_STARTUP_END( _qt5xhb_events_init_ )

#if defined( HB_PRAGMA_STARTUP )
  #pragma startup _qt5xhb_events_init_
#elif defined( HB_DATASEG_STARTUP )
  #define HB_DATASEG_BODY HB_DATASEG_FUNC( _qt5xhb_events_init_ )
  #include "hbiniseg.h"
#endif
