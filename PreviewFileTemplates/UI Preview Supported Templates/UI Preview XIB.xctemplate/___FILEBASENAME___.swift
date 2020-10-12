
//
//  ___FILEHEADER___
//


import Foundation
import UIKit

final class ___FILEBASENAME___: <#UIParent#> {}

#if canImport(SwiftUI) && DEBUG
import SwiftUI

@available(iOS 13, *)
struct ___FILEBASENAME____Preview: PreviewProvider {
    static var previews: some View {
        let previewableElement = UINib(
            nibName: <#nib name#>,
            bundle: <#bundle#>
        )
        .instantiate(
            withOwner: <#owner#>,
            options: <#options#>
        )
        .first
        as! ___FILEBASENAME___
        
        return
            previewableElement
            .toPreview()
            .environmentObject(previewableElement)
        
    }
}
#endif
