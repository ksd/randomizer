//
//  CustomButton.swift
//  randomizer
//
//  Created by ksd on 16/08/2024.
//

import SwiftUI

struct CustomButton: View {
    
    @Environment(RandomNumberViewModel.self) var viewModel: RandomNumberViewModel
    
    var body: some View {
        Button("Randomize") {
            withAnimation(.bouncy) {
                viewModel.randomize()
            }
        }
    }
}

#Preview {
    CustomButton().environment(RandomNumberViewModel())
}
