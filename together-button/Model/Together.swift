

import Foundation
import UIKit

public class Together {
    public static let instance: Together = Together()
    
    private let mainVC: MenuViewController!
    private let mainSB: UIStoryboard!
    
    private init() {
        self.mainSB = UIStoryboard(name: "Menu", bundle: Bundle(for: Together.self))
        self.mainVC = (mainSB.instantiateViewController(withIdentifier: "Menu") as! MenuViewController)
    }
    
    public func show(sender: UIViewController) {
        sender.present(self.mainVC, animated: true)
    }
    
}
