//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Aaron Student on 01/05/2017.
//  Copyright © 2017 Aaron Connolly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    
    var emojis = ["😀","🙁","😍","🐻","💩"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    //How many rows should I have
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    //What do you want inside each row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // each cell
        let cell = UITableViewCell()
        // inside of each cell/row
        // indexpath.row increments each index of var emojis
        cell.textLabel?.text = emojis[(indexPath.row)]
        //return it
        return cell
    }
    
    //Once someone taps something do something, moveSeque is same id as segue between tableview and emoji content page
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let singularEmoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: singularEmoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let source = segue.destination as! DefinitionViewController
        source.emoji = sender as! String
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

