//
//  CustomSlider.swift
//  randomizer
//
//  Created by ksd on 16/08/2024.
//

import SwiftUI

struct CustomSlider: View {

    @Environment(RandomNumberViewModel.self) var viewModel: RandomNumberViewModel
    
    var body: some View {
        @Bindable var viewModel = viewModel
        VStack {
            Slider(
                value: $viewModel.maxValueRandomTo,
                in: 0...viewModel.maxSliderValue,
                onEditingChanged: { _ in
                    
                }
            )
            
            Text("0 to \(Int(viewModel.maxValueRandomTo))")
                .font(.caption)
        }
    }
}

#Preview {
    CustomSlider().environment(RandomNumberViewModel())
}
