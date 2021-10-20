import { gql } from '@apollo/client'

export const GET_CHARACTERS = gql`
  {
    characters {
      id
      characterName
      actorName
      imageUrl
    }
  }
`
