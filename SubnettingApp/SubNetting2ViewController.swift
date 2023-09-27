//
//  SubNetting2ViewController.swift
//  SubnettingApp
//
//  Created by apple on 21/9/2023.
//

import Foundation
import Cocoa


class SubNetting2ViewController: NSViewController {

    @IBOutlet weak var MaxL3O1: NSTextField!
    @IBOutlet weak var MaxL3O2: NSTextField!
    @IBOutlet weak var MaxL3O3: NSTextField!
    @IBOutlet weak var MaxL3O4: NSTextField!
    
    @IBOutlet weak var MinL3O1: NSTextField!
    @IBOutlet weak var MinL3O2: NSTextField!
    @IBOutlet weak var MinL3O3: NSTextField!
    @IBOutlet weak var MinL3O4: NSTextField!
    
    
    @IBOutlet weak var MaxL4O1: NSTextField!
    @IBOutlet weak var MaxL4O2: NSTextField!
    @IBOutlet weak var MaxL4O3: NSTextField!
    @IBOutlet weak var MaxL4O4: NSTextField!
    
    
    @IBOutlet weak var MinL4O1: NSTextField!
    @IBOutlet weak var MinL4O2: NSTextField!
    @IBOutlet weak var MinL4O3: NSTextField!
    @IBOutlet weak var MinL4O4: NSTextField!
    
    
    
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
