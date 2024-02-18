//
//  PictureDetailsView.swift
//  PictureScaling
//
//  Created by Viktoryia Hermanovich on 18/02/2024.
//

import SwiftUI

struct PictureDetailsView: View {
    @Binding var presented: Bool

    var body: some View {
        GeometryReader { _ in
            Image(AppConstants.pandaImage)
                .resizable()
                .scaledToFill()
                .frame(alignment: .leading)
                .edgesIgnoringSafeArea(.all)
            CloseButton {
                withAnimation {
                    presented = false
                }
            }
            .padding([.trailing, .top], 20)
            .frame(alignment: .trailing)
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
}
