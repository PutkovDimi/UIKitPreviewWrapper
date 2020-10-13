//
//  UIElementRepresentable.swift
//  UIKitPreviewWrapper
//
//  Created by Putkov Dimi on 07.10.2020.
//

import SwiftUI

enum RepresentableError: Error {
    case uiElementIsNill
}

protocol UIElementRepresentable {
    associatedtype RepresentableElementType
    var uiElement: RepresentableElementType? { get }
}

extension UIElementRepresentable {
    func makeUIElement() throws -> RepresentableElementType {
        guard
            let uiElement = uiElement
        else {
            throw RepresentableError.uiElementIsNill
        }
        
        return uiElement
    }
}

@available(iOS 13.0, *)
extension UIElementRepresentable
where Self: UIViewRepresentable,
      RepresentableElementType == UIView {
    func makeUIView(context: Context) -> UIView {
        do {
            return try makeUIElement()
        }
        catch RepresentableError.uiElementIsNill {
            assertionFailure("UIView for preview is nil")
        }
        catch {
            assertionFailure("Unrecognized error while building UI preview")
        }
        
        return UIView()
    }
    
    func updateUIView(
        _ uiView: UIView,
        context: Context) {}
}

@available(iOS 13.0, *)
extension UIElementRepresentable
where Self: UIViewControllerRepresentable,
      RepresentableElementType == UIViewController {
    func makeUIViewController(context: Context) -> UIViewController {
        do {
            return try makeUIElement()
        }
        catch RepresentableError.uiElementIsNill {
            assertionFailure("UIViewController for preview is nil")
        }
        catch {
            assertionFailure("Unrecognized error while building UI preview")
        }
        
        return UIViewController()
    }
    
    func updateUIViewController(
        _ uiViewController: UIViewController,
        context: Context) {}
}
