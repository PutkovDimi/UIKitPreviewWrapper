//
//  ViewController.swift
//  UIKitPreviewWrapper
//
//  Created by Дима Путьков on 07.10.2020.
//

import UIKit

final class ViewController: PreviewableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}


#if canImport(SwiftUI) && DEBUG
import SwiftUI

@available(iOS 13, *)
struct ViewControllerPreview: PreviewProvider {
    static var previews: some View {
        let viewController = ViewController()
        
        return
            viewController
            .toPreview()
            .environmentObject(viewController)
        
    }
}
#endif
