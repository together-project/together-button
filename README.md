## Together Button
Together Button is built to allow the user of the application to report and receive guidance on how to proceed in cases of violence against women.

### Example
On the [use case repository](https://github.com/together-project/together-button-use-case) you can find an example of implementation.

```swift
import UIKit
import together_button

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onActionButton(_ sender: Any) {
        Together.instance.show(sender: self)
    }
    
}
```


#### Usage
On your View Controller, you just need to call the method ```show(sender: UIViewControler)``` from the class ```Together```, that is a Singleton, and it will be presenting the together flow.
