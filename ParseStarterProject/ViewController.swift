/**
* Copyright (c) 2015-present, Parse, LLC.
* All rights reserved.
*
* This source code is licensed under the BSD-style license found in the
* LICENSE file in the root directory of this source tree. An additional grant
* of patent rights can be found in the PATENTS file in the same directory.
*/

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Descomenta esta linea para probar que Parse funciona correctamente
        self.testParseSave()
    }
    
    func testParseSave() {
        let testObject = PFObject(className: "MyTestObject")
        testObject["foo"] = "bar"
        testObject.saveInBackground { (success, error) -> Void in
            if success {
                print("El objeto se ha guardado en Parse correctamente.")
            } else {
                if error != nil {
                    print (error)
                } else {
                    print ("Error")
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}