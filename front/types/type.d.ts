type PhaseProps = ''

interface CardProps {
  title: string
  src: string
  flex: number
  icon: any
  to: string
} as

interface RetroGameProps {
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
