import UIKit

final class ___FILEBASENAME___: <#UIParent#> {}


#if canImport(SwiftUI) && DEBUG
import SwiftUI

@available(iOS 13, *)
struct ___FILEBASENAME____Preview: PreviewProvider {
    static var previews: some View {
        let previewableElement = UIStoryboard(
            name: <#storyboard name#>,
            bundle: <#bundle#>
        ).instantiateViewController(
            identifier: <#element's identifier#>
        )
        as! ___FILEBASENAME___
        
        return
            previewableElement
            .toPreview()
            .environmentObject(previewableElement)
        
    }
}
#endif
