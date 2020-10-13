//
//  PreviewableView.swift
//  UIKitPreviewWrapper
//
//  Created by Putkov Dimi on 07.10.2020.
//

import SwiftUI

extension UIView: Previewable {
    @available(iOS 13.0, *)
    public func toPreview() -> some View {
        Preview(uiElement: self)
    }
}

// MARK: - Private

private extension UIView {
    struct Preview: UIElementRepresentable,
                    UIViewRepresentable {
        weak var uiElement: UIView?
    }
}
