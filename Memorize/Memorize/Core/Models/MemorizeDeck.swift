//
//  MemorizeDeck.swift
//  Memorize
//
//  Created by Uri on 5/4/24.
//

import Foundation

// up to 21 emojis for better readability in phones

struct MemorizeDeck: Identifiable {
    let id = UUID()
    var name: String
    var emojis: [String]
    
    static var builtins: [MemorizeDeck] {
        return [
            MemorizeDeck(name: NSLocalizedString("Animal faces", comment: ""), emojis: ["🐵", "🙈", "🙊", "🙉", "🐶", "🐱", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼", "🐻‍❄️", "🐨", "🐯", "🦁", "🐮", "🐷", "🐸", "🐲", "🐙"]),
            MemorizeDeck(name: NSLocalizedString("Animals", comment: ""), emojis: ["🐥", "🐄", "🐎", "🐖", "🐐", "🐓", "🦆", "🦅", "🦉", "🐢", "🐍", "🦎", "🦖", "🦕", "🦧", "🐘", "🦛", "🦒", "🦘", "🦌", "🐕", "🐈", "🦩", "🦝", "🦨", "🦦", "🦥", "🐿", "🦔"]),
            MemorizeDeck(name: NSLocalizedString("Countries", comment: ""), emojis: ["🇦🇹", "🇧🇪", "🇭🇷", "🇨🇿", "🇩🇰", "🇫🇮", "🇫🇷", "🇩🇪", "🇬🇷", "🇮🇪", "🇮🇹", "🇱🇺", "🇳🇱", "🇵🇱", "🇵🇹", "🇪🇸", "🇸🇪", "🇦🇩", "🇦🇺", "🇨🇦", "🇺🇸", "🏴󠁧󠁢󠁥󠁮󠁧󠁿", "🏴󠁧󠁢󠁳󠁣󠁴󠁿","🇰🇷", "🇯🇵"]),
            MemorizeDeck(name: NSLocalizedString("Faces", comment: ""), emojis: ["😃", "😅", "😂", "🥲", "😊", "😇", "🙃", "😉", "😌", "😍", "🥰", "😘", "😋", "🤪", "🤨", "🧐", "🤓", "😎", "🥸", "🥳", "😏", "😔", "☹️", "😩", "🥺", "😢", "😭", "😡", "🤯", "😳", "🥶", "🤠"]),
            MemorizeDeck(name: "Flora", emojis: ["🌲", "🌴", "🌿", "☘️", "🍀", "🍁", "🍄", "🌾", "💐", "🌷", "🌹", "🥀", "🌺", "🌸", "🌼", "🌻"]),
            MemorizeDeck(name: "Halloween", emojis: ["👻", "😈", "🎃", "🕷️", "💀", "🧙🏻‍♀️", "🙀", "👹", "😱", "☠️", "🍭"]),
            MemorizeDeck(name: NSLocalizedString("Music", comment: ""), emojis: ["🎼", "🎤", "🎹", "🪘", "🥁", "🎺", "🪗", "🪕", "🎻", "🎧", "🎷", "🪩", "💿"]),
            MemorizeDeck(name: NSLocalizedString("Sports", comment: ""), emojis: ["🏈", "⚾️", "🏀", "⚽️", "🎾", "🏐", "🥏", "🏓", "⛳️", "🥌", "🏂", "⛷", "🎳", "🎱", "🚴🏻", "⛹🏻‍♂️", "🏆", "🥋", "🏋🏻‍♂️"]),
            MemorizeDeck(name: NSLocalizedString("Vehicles", comment: ""), emojis: ["🚗", "🚕", "🏎", "🚚", "🛻", "🚐", "🚓", "🚑", "🚒", "🚀", "✈️", "🚁", "🛸", "🚲", "🏍", "⛵️", "🚤", "🛥", "🚢", "🚂", "🚅", "🚇", "🚜"])
        ]
    }
}
