

import UIKit

class ATCImage: ATCGenericBaseModel {

    var urlString: String?
    var localImage: UIImage? = nil
    var isActionable: Bool = false

    convenience init(_ urlString: String? = nil, placeholderImage: UIImage? = nil) {
        self.init(jsonDict: [:])
        self.urlString = urlString
        self.localImage = placeholderImage
    }

    convenience init(localImage: UIImage) {
        self.init(jsonDict: [:])
        self.localImage = localImage
        self.urlString = nil
    }

    required init(jsonDict: [String: Any]) {}

    var description: String {
        return urlString ?? ""
    }
}
