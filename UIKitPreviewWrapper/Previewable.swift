//
//  Previewable.swift
//  UIKitPreviewWrapper
//
//  Created by Дима Путьков on 07.10.2020.
//

import SwiftUI


@available(iOS 13.0, *)
public protocol Previewable: ObservableObject {
    associatedtype Previewable: View
    func toPreview() -> Previewable
}

