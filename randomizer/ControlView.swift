//
//  ControlView.swift
//  randomizer
//
//  Created by ksd on 16/08/2024.
//

import SwiftUI

struct ControlView: View {
    
    var body: some View {
        VStack {
            CustomButton()
            CustomSlider()
        }
        .padding(.horizontal)
    }
}

#Preview {
    ControlView()
}
