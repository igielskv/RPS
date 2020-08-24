//
//  ContentView.swift
//  RPS
//
//  Created by Manoli on 23/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 50.0) {
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                .font(.system(size: 70.0))
            
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                .font(.title)
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text(Sign.rock.emoji)
                        .font(.system(size: 70.0))
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text(Sign.paper.emoji)
                        .font(.system(size: 70.0))
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text(Sign.scissors.emoji)
                        .font(.system(size: 70.0))
                }
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Play Again")
                    .font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
