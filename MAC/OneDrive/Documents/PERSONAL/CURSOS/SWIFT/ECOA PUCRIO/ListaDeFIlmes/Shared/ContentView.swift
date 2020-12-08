//
//  ContentView.swift
//  Shared
//
//  Created by Bruno Cassiano on 03/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            colorScheme(cmBlackPointCompensation)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
