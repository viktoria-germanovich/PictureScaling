//
//  ActionButton.swift
//  PictureScaling
//
//  Created by Viktoryia Hermanovich on 18/02/2024.
//

import SwiftUI

struct ActionButton: View {

    //MARK: - Properties

    let title: String
    let action: () -> Void

    // MARK: - Lifecycle

    init(title: String, action: (() -> Void)? = nil) {
        self.title = title
        self.action = action ?? {}
    }

    // MARK: - Content

    var body: some View {
        Button(title, action: action)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .frame(height: 56)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(18)
            .overlay(RoundedRectangle(cornerRadius: 18).stroke(Color.indigo,lineWidth: 3))
    }
}
