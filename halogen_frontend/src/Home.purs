module Home where

import Prelude

import Halogen as H
import Halogen.HTML as HH

import Utils (css)

type State = Unit
type Action = Unit

component :: forall query input output m. H.Component HH.HTML query input output m
component = H.mkComponent {initialState, render, eval: H.mkEval $ H.defaultEval}

initialState :: forall input. input -> State
initialState _ = unit

render :: forall m. State -> H.ComponentHTML Action () m
render _ =
  HH.div [ css "hero is-dark is-fullheight" ]
  [
    HH.div [ css "hero-body" ]
    [
      HH.div [ css "tile is-ancestor" ]
      [
        HH.div [ css "tile is-parent" ]
        [
          HH.div [ css "tile is-child notification is-light" ]
          [
            HH.p [ css "title has-text-dark" ] [ HH.text "Input Here" ]
          , HH.p [ css "subtitle has-text-dark" ] [ HH.text "All told, a monad in X is just a monoid in the category of endofunctors of X, with product × replaced by composition of endofunctors and unit set by the identity endofunctor." ]
          ]
        ]
      , HH.div [ css "tile is-parent" ]
        [
          HH.div [ css "tile is-child notification is-light" ]
          [
            HH.p [ css "title has-text-dark" ] [ HH.text "Output Here" ]
          , HH.p [ css "subtitle has-text-dark" ] [ HH.text "All told, a monad in X is just a monoid in the category of endofunctors of X, with product × replaced by composition of endofunctors and unit set by the identity endofunctor." ]
          ]
        ]
      ]
    ]
  ]