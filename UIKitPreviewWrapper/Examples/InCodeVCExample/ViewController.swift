//
//  ViewController.swift
//  UIKitPreviewWrapper
//
//  Created by Дима Путьков on 07.10.2020.
//

import UIKit

final class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}


#if canImport(SwiftUI) && DEBUG
import SwiftUI

@available(iOS 13, *)
struct ViewController_Preview: PreviewProvider {
    static var previews: some View {
        let previewableElement = ViewController()
        
        return
            previewableElement
            .toPreview()
            .environmentObject(previewableElement)
        
    }
}
#endif
