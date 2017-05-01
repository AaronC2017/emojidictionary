//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Aaron Student on 01/05/2017.
//  Copyright © 2017 Aaron Connolly. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = ""

    @IBOutlet weak var emojilabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojilabel.text = emoji
        
        if emoji == "😀"{
        definitionLabel.text = "Smiley Face!"
        }
        if emoji == "🙁"{
            definitionLabel.text = "Sad Face!"
        }
        if emoji == "😍"{
            definitionLabel.text = "Love Heart Eyes!"
        }
        if emoji == "🐻"{
            definitionLabel.text = "Teddy Bear!"
        }
        if emoji == "💩"{
            definitionLabel.text = "Poo Poo!"
        }
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
