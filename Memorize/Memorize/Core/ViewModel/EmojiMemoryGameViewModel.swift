//
//  EmojiMemoryGameViewModel.swift
//  Memorize
//
//  Created by Uri on 9/3/24.
//

import SwiftUI

class EmojiMemoryGameViewModel: ObservableObject {
    
    typealias Card = MemorizeGame<String>.Card
    
    private static let emojis = ["👻", "😈", "🎃", "🕷️", "💀", "🧙🏻‍♀️", "🙀", "👹", "😱", "☠️", "🍭"]
    
    private static func createMemorizeGame() -> MemorizeGame<String> {
         return MemorizeGame(numberOfPairsOfCards: 11) { pairIndex in
             if emojis.indices.contains(pairIndex) {
                 return emojis[pairIndex]
             } else {
                 return "⁉️"
             }
         }
    }
    
    @Published private var model = createMemorizeGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    var color: Color {
        .orange
    }
    
    var score: Int {
        model.score
    }
    
    var matches: Int {
        model.matches
    }
    
    // MARK: - Intents
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func resetGame() {
        model.resetGame()
    }
}
