import UIKit

final class __FILEBASENAME__: <#UI element#> {}


#if canImport(SwiftUI) && DEBUG
import SwiftUI

@available(iOS 13, *)
struct __FILEBASENAME___Preview: PreviewProvider {
    static var previews: some View {
        let previewableElement = <#element instance#>
        
        return
            previewableElement
            .toPreview()
            .environmentObject(viewController)
        
    }
}
#endif
