//
//  DeckOfCards.swift
//  StarWars: Cantina Simulator
//
//  Created by Student on 2018. 03. 04..
//  Copyright © 2018. Student. All rights reserved.
//

import Foundation

class DeckOfCards { //starter pack with: +1,+2,+3,+4,+5 ,twice!
    var Deck: Array = [Card]()
    
    func addCardToDeck(input: Card){// for collecting other cards as well
        Deck.append(input)
    }
    
    func getTopCard() -> Card{
        return Deck.last!
    }
    
    init() {
        let types = [CardType.one,CardType.two,CardType.three,CardType.four,CardType.five]
        for type in types{
            Deck.append(Card(value: type, multi_value: false))
            Deck.append(Card(value: type, multi_value: false))
        }
    }
    
    //TODO: creating the selection of 10 cards from the main Deck
    
}


class PlayersHand{
    var Hand: Array = [Card]()
    
    
    init(array: Array <Card>) {//a kiválasztott 10 kártyából választunk random 4-et a kézbe
        for _ in 1...4{
            let randomNum = Int(arc4random_uniform(UInt32(11)))
            Hand.append(array[randomNum])
        }
    }
    
    func playCard(index: Int) -> Card{
        return Hand[index]
    }
    
}
