//
//  NetAddViewController.swift
//  SubnettingApp
//
//  Created by apple on 21/9/2023.
//

import Foundation
import Cocoa


class NetAddViewController: NSViewController {
    
    @IBOutlet weak var FisrtDeOctect: NSTextField!
    @IBOutlet weak var SecondDeOctect: NSTextField!
    @IBOutlet weak var ThirdDeOctect: NSTextField!
    @IBOutlet weak var ForthDeOctect: NSTextField!
    @IBOutlet weak var Prefix: NSTextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

func isOverflow(decimalArray: [Int]) -> Bool{
    if decimalArray[1] > 255||decimalArray[2] > 255||decimalArray[3] > 255||decimalArray[4] > 255{
        print("Error.")
       return true
        
    }else
    {
        return false
    }
    
}


func NetworkAdd(decimalArray: [Int], prefix: Int) -> [[Int]]{
    var biOctet1 = String(decimalArray[0], radix: 2)
    var biOctet2 = String(decimalArray[1], radix: 2)
    var biOctet3 = String(decimalArray[2], radix: 2)
    var biOctet4 = String(decimalArray[3], radix: 2)
     
     let Octect1 = biOctet1.compactMap{ $0.wholeNumberValue }
     let Octect2 = biOctet2.compactMap{ $0.wholeNumberValue }
     let Octect3 = biOctet3.compactMap{ $0.wholeNumberValue }
     let Octect4 = biOctet3.compactMap{ $0.wholeNumberValue }
     var binaryArray = [Octect1,Octect2,Octect3,Octect4]
     var binaryArray1D = binaryArray.flatMap { $0 }
    
    for index in (1..<32){
        if index > prefix{
            binaryArray1D[index] = 0
        }
    }
    
    let newTempArray1D = binaryArray1D
    let newtempArray2D = [[0,0,0,0,0,0,0,0], [0,0,0,0,0,0,0,0], [0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0]]
    var iter = newTempArray1D.makeIterator()
    let newArray = newtempArray2D.map { $0.compactMap { _ in iter.next() } }
    
    
    
}





