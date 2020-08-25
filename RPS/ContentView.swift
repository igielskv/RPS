//
//  ContentView.swift
//  RPS
//
//  Created by Manoli on 23/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var gameState: GameState = .start
    
    @State var computerSign: Sign?
    @State var playerSign: Sign?
    
    let backgroundColors: [GameState : Color] = [
        .start : Color(.systemGray),
        .win : Color(red: 0.651, green: 0.792, blue: 0.651),
        .lose : Color(red: 0.851, green: 0.424, blue: 0.412),
        .draw : Color(red: 0.663, green: 0.663, blue: 0.663)
    ]
    
    var body: some View {
        ZStack {
            backgroundColors[gameState]
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 50.0) {
                Text(computerSign?.emoji ?? "🤖")
                    .font(.system(size: 70.0))
                
                Text(gameState.status)
                    .font(.title)
                
                HStack {
                    Button(action: { self.play(playerSign: .rock) }) {
                        Text(Sign.rock.emoji)
                            .font(.system(size: 70.0))
                    }
                    .opacity(playerSign == .rock || playerSign == nil ? 1 : 0)
                    
                    Button(action: { self.play(playerSign: .paper) }) {
                        Text(Sign.paper.emoji)
                            .font(.system(size: 70.0))
                    }
                    .opacity(playerSign == .paper || playerSign == nil ? 1 : 0)
                    
                    Button(action: { self.play(playerSign: .scissors) }) {
                        Text(Sign.scissors.emoji)
                            .font(.system(size: 70.0))
                    }
                    .opacity(playerSign == .scissors || playerSign == nil ? 1 : 0)
                }
                
                Button(action: playAgain) {
                    Text("Play Again")
                        .font(.title)
                }
                .opacity(gameState == .start ? 0 : 1)
            }
        }
    }
    
    func play(playerSign: Sign) {
        self.playerSign = playerSign
        computerSign = randomSign()
        gameState = playerSign.gameState(against: computerSign!)
    }
    
    func playAgain() {
        playerSign = nil
        computerSign = nil
        gameState = .start
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
