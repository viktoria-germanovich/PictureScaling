//
//  PictureScalingViewModel.swift
//  PictureScaling
//
//  Created by Viktoryia Hermanovich on 18/02/2024.
//

import SwiftUI

final class PictureScalingViewModel: ObservableObject {

    // MARK: - Properties

    @Published var isRightButtonDisabled = false
    var rightButtonOpacity: Double {
        isRightButtonDisabled ? 0.5 : 1.0
    }

    var leftButtonTitle: String {
        isRightButtonDisabled ? Constant.unlockTitle : Constant.lockTitle
    }

    let rightButtonTitle = Constant.rightButtonTitle
    let bottomButtonTitle = Constant.bottomButtonTitle
    let imageName = AppConstants.pandaImage

    // MARK: - Functions

    func toggleButton() {
        isRightButtonDisabled.toggle()
    }
}

// MARK: - Constants

private extension PictureScalingViewModel {
    enum Constant {
        static let rightButtonTitle = "Open from top"
        static let bottomButtonTitle = "Open full"
        static let lockTitle = "Lock"
        static let unlockTitle = "Unlock"
    }
}
