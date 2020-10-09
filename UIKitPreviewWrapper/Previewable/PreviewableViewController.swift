//
//  PreviewableViewController.swift
//  UIKitPreviewWrapper
//
//  Created by Дима Путьков on 07.10.2020.
//

import SwiftUI


extension UIViewController: Previewable {
    @available(iOS 13.0, *)
    public func toPreview() -> some View {
        Preview(uiElement: self)
    }
}

// MARK: - Private

private extension UIViewController {
    struct Preview: UIElementRepresentable,
                    UIViewControllerRepresentable {
        weak var uiElement: UIViewController?
    }
}
