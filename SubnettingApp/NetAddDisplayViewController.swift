//
//  NetAddDisplayViewController.swift
//  SubnettingApp
//
//  Created by apple on 22/9/2023.
//

import Foundation
import Cocoa



class NetAddDisplayViewController: NSViewController {

    @IBOutlet weak var FirstBiOc: NSTextField!
    @IBOutlet weak var SecBiOc: NSTextField!
    @IBOutlet weak var ThirdTextOct: NSTextField!
    @IBOutlet weak var FourthBiOc: NSTextField!
    @IBOutlet weak var HostBitNoFirst: NSTextField!
    @IBOutlet weak var HostBitNoSec: NSTextField!
    @IBOutlet weak var ThirdBiOct: NSTextField!
    @IBOutlet weak var HostBitNoFourth: NSTextField!
    

    
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
func JumpNumber(host: Int)-> Int{
    var jumpNumber: Int = 0
    var Pow = Pow(x: 2,y: host)
    for index in (1..<32){
        if (Pow-host)>0{
            jumpNumber = index
        }
        break

    }
    return jumpNumber

}

func HostAdd(networkAdd: [Int], jumpNumber: Int) -> [Int]{
    var newArray = networkAdd
  
    for index in (32-jumpNumber..<32){
    newArray[index] = 0
    }
     return newArray
}


func subnettingMask(prefix: Int){
    var subnetMask = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
    for index in (0..<32){
        if index > prefix{
            subnetMask[index] = 0
        }
        
    }
        
    }


func Pow(x: Int,y:Int)->Int{
    var result = x^y
    return result
}




