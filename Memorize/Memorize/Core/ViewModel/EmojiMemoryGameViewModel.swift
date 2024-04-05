//
//  EmojiMemoryGameViewModel.swift
//  Memorize
//
//  Created by Uri on 9/3/24.
//

import SwiftUI

class EmojiMemoryGameViewModel: ObservableObject {
    
    typealias Card = MemorizeGame<String>.Card
    
    static let emojis = ["👻", "😈", "🎃", "🕷️", "💀", "🧙🏻‍♀️", "🙀", "👹", "😱", "☠️", "🍭"]
    
    var memorizeDecks = MemorizeDeck.builtins
    
    private static func createMemorizeGame() -> MemorizeGame<String> {
        return MemorizeGame(numberOfPairsOfCards: emojis.count) { pairIndex in
             if emojis.indices.contains(pairIndex) {
                 return emojis[pairIndex]
             } else {
                 return "⁉️"
             }
         }
    }
    
    // MARK: - MemorizeDeck
    @Published private var _deckIndex = 0
    
    var deckIndex: Int {
        get { boundsCheckedDeckIndex(_deckIndex) }
        set { _deckIndex = boundsCheckedDeckIndex(newValue) }
    }
    
    private func boundsCheckedDeckIndex(_ index: Int) -> Int {
        var index = index % memorizeDecks.count
        debugPrint("Index is \(index)")
        if index < 0 {
            index += memorizeDecks.count
        }
        return index
    }
    
    // MARK: - MemorizeGame
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
    
    func isGameFinished() -> Bool {
        if matches == EmojiMemoryGameViewModel.emojis.count {
            return true
        } else {
            return false
        }
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
        model = EmojiMemoryGameViewModel.createMemorizeGame()
    }
}
