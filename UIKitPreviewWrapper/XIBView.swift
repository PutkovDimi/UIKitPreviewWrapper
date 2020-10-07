//
//  XIBView.swift
//  UIKitPreviewWrapper
//
//  Created by Дима Путьков on 07.10.2020.
//

import UIKit

final class XIBView: PreviewableView {
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI

@available(iOS 13, *)
struct XIBViewPreview: PreviewProvider {
    static var previews: some View {
        let view = UINib(
            nibName: "XIBView",
            bundle: nil
        )
        .instantiate(
            withOwner: nil,
            options: nil
        )
        .first
        as! XIBView
        
        return
            view
            .toPreview()
            .environmentObject(view)
        
    }
}
#endif
