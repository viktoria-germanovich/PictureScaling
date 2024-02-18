//
//  CloseButton.swift
//  PictureScaling
//
//  Created by Viktoryia Hermanovich on 18/02/2024.
//

import SwiftUI

struct CloseButton: View {

    //MARK: - Properties

    let action: () -> Void

    // MARK: - Content

    var body: some View {
        Button(action: action) {
            Image(systemName: "xmark")
        }
        .frame(width: 32, height: 32)
        .foregroundColor(.white)
        .background(Color.gray)
        .clipShape(Circle())
    }
}
