//
//  SubNettingViewController.swift
//  SubnettingApp
//
//  Created by apple on 21/9/2023.
//

import Foundation
import Cocoa


class SubNetting1ViewController: NSViewController {

    @IBOutlet weak var MaxL1O1: NSTextField!
    @IBOutlet weak var MaxL1O2: NSTextField!
    @IBOutlet weak var MaxL1O3: NSTextField!
    @IBOutlet weak var MaxL1O4: NSTextField!
    
    
    @IBOutlet weak var MinL1O1: NSTextField!
    @IBOutlet weak var MinL1O2: NSTextField!
    @IBOutlet weak var MinL1O3: NSTextField!
    @IBOutlet weak var MinL1O4: NSTextField!
    
    
    @IBOutlet weak var MaxL2O1: NSTextField!
    @IBOutlet weak var MaxL2O2: NSTextField!
    @IBOutlet weak var MaxL2O3: NSTextField!
    @IBOutlet weak var MaxL2O4: NSTextField!
    
    
    @IBOutlet weak var MinL2O1: NSTextField!
    @IBOutlet weak var MinL2O2: NSTextField!
    @IBOutlet weak var MinL2O3: NSTextField!
    @IBOutlet weak var MinL2O4: NSTextField!
    
    
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
