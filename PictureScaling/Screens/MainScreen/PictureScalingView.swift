//
//  PictureScalingView.swift
//  PictureScaling
//
//  Created by Viktoryia Hermanovich on 18/02/2024.
//

import SwiftUI

struct PictureScalingView: View {
    // MARK: - Properties

    @StateObject private var viewModel = PictureScalingViewModel()
    @State private var isDetailsPresented = false

    // MARK: - Content

    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center, spacing: Constant.spacing) {
                imageView(with: geometry)
                buttonsStack
                Spacer()
                bottomButton
            }
            .padding(Constant.spacing)
            .overlay(detailsView(with: geometry))
        }
    }
}

// MARK: - Subviews

private extension PictureScalingView {
    var bottomButton: some View {
        ActionButton(title: viewModel.bottomButtonTitle)
    }

    var buttonsStack: some View {
        HStack(spacing: Constant.spacing) {
            ActionButton(title: viewModel.leftButtonTitle) {
                viewModel.toggleButton()
            }

            ActionButton(title: viewModel.rightButtonTitle) {
                withAnimation {
                    isDetailsPresented.toggle()
                }
            }
            .disabled(viewModel.isRightButtonDisabled)
            .opacity(viewModel.rightButtonOpacity)
        }
    }

    func imageView(with geometry: GeometryProxy) -> some View {
        Image(viewModel.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: geometry.size.height * 0.3, alignment: .leading)
            .clipped()
    }

    func detailsView(with geometry: GeometryProxy) -> some View {
        PictureDetailsView(presented: $isDetailsPresented)
            .offset(y: isDetailsPresented ? 0 : -max(geometry.size.width, geometry.size.height) - geometry.safeAreaInsets.top)
    }
}

// MARK: - Contants

private extension PictureScalingView {
    enum Constant {
        static let spacing: CGFloat = 20
    }
}
