//
//  SourceViewController.swift
//  PugViewer
//
//  Created by Adrien Maranville on 8/4/18.
//  Copyright © 2018 Adrien Maranville. All rights reserved.
//

import Cocoa

class SourceViewController: NSViewController, NSTableViewDataSource, NSTableViewDelegate {

    @IBOutlet var tableView: NSTableView!
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.contains("Pug") {
                pictures.append(item)
            }
        }
    }
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return pictures.count
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        guard let vw = tableView.makeView(withIdentifier: tableColumn!.identifier, owner: self) as? NSTableCellView else {return nil}
        vw.textField?.stringValue = pictures[row]
        
        return vw
    }
    
}
