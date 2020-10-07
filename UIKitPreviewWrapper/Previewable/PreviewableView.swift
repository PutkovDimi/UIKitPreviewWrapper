//
//  PreviewableView.swift
//  UIKitPreviewWrapper
//
//  Created by Дима Путьков on 07.10.2020.
//

import SwiftUI

open class PreviewableView: UIView,
                            Previewable {
    @available(iOS 13.0, *)
    public func toPreview() -> some View {
        Preview(uiElement: self)
    }
}

// MARK: - Private

private extension PreviewableView {
    struct Preview: UIElementRepresentable,
                    UIViewRepresentable {
        weak var uiElement: UIView?
    }
}

