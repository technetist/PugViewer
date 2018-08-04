//
//  DetailViewController.swift
//  PugViewer
//
//  Created by Adrien Maranville on 8/4/18.
//  Copyright © 2018 Adrien Maranville. All rights reserved.
//

import Cocoa

class DetailViewController: NSViewController {

    @IBOutlet var imageView: NSImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    func imageSelected(name: String) {
        imageView.image = NSImage(named: NSImage.Name(rawValue: name))
    }
}
