//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Aaron Student on 01/05/2017.
//  Copyright © 2017 Aaron Connolly. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "No emoji"

    @IBOutlet weak var emojilabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojilabel.text = emoji
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
