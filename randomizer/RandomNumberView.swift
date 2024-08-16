//
//  RandomNumberView.swift
//  randomizer
//
//  Created by ksd on 16/08/2024.
//

import SwiftUI

struct RandomNumberView: View {
    
    @State private var viewModel = RandomNumberViewModel()
    
    var body: some View {
        VStack(spacing: 24) {
            Text(viewModel.title)
                .font(.largeTitle)
            
            Text("$\(viewModel.randomNumber)")
                .font(.title)
                .contentTransition(.numericText(value: Double(viewModel.randomNumber)))

            ControlView()
                .environment(viewModel)
        }
    }
}

#Preview {
    RandomNumberView()
}
