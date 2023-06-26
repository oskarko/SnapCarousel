//
//  ContentView.swift
//  SwiftUICarousel
//
//  Created by Oscar R. Garrucho.
//  Linkedin: https://www.linkedin.com/in/oscar-garrucho/
//  Copyright © 2022 Oscar R. Garrucho. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    @StateObject var viewModel = ContentViewModel()
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 8) {
            Text("Active card is \(viewModel.activeCard)")
                .font(.system(size: 22))
            
            SnapCarousel()
                .environmentObject(viewModel.stateModel)
                .animation(.spring(), value: viewModel.activeCard)
        } // VStack
        .frame(height: 350, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
