import './type';
import { accessorType } from '~/store'

type PhaseProps = ''

declare module 'vue/types/vue' {
  interface Vue {
    $accessor: typeof accessorType
  }
}

declare module '@nuxt/types' {
  interface NuxtAppOptions {
    $accessor: typeof accessorType
  }
}

export interface CardProps {
  title: string
  src: string
  flex: number
  icon: string
  to: string
}

export interface RetroGameProps {
  name: string
  roman: string
  src: string
}

interface StateProps {
  phase: PhaseProps
  isValid: boolean
  timer: number
  typingCount: number
  missTypingCount: number
  retroGamesRelationData: RetroGameProps[]
  timerId: any
}

export interface TypeData {
  type: {
    name: string
    color: string
    keydown: string
    OnGUI: string
    InputKey: string
  }
}
