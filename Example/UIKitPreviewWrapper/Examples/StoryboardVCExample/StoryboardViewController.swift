//
//  StoryboardViewController.swift
//  UIKitPreviewWrapper
//
//  Created by Дима Путьков on 07.10.2020.
//

import UIKit

final class StoryboardViewController: UIViewController {}



#if canImport(SwiftUI) && DEBUG
import SwiftUI

@available(iOS 13, *)
struct StoryboardViewController_Preview: PreviewProvider {
    static var previews: some View {
        let vc = UIStoryboard(
            name: "Main",
            bundle: nil
        ).instantiateViewController(
            identifier: "StoryboardViewController"
        )
        as! StoryboardViewController
        
        return
            vc
            .toPreview()
            .environmentObject(vc)
        
    }
}
#endif
