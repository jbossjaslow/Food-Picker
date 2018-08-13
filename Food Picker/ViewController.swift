//
//  ViewController.swift
//  Food Picker
//
//  Created by Josh Jaslow on 5/21/18.
//  Copyright © 2018 Jaslow Enterprises. All rights reserved.
//

import UIKit

class ViewController: UIViewController/*, UITableViewDelegate, UITableViewDataSource*/ {

    @IBOutlet weak var randomLetterLabel: UILabel!
    let letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView = UITableView(frame: CGRect(x: 16, y: 20, width: 343, height: 457))
        view.addSubview(tableView)
        tableView.backgroundColor = .purple
        tableView.separatorStyle = .none
        
//        tableView.delegate = self
//        tableView.dataSource = self
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        //return dropDownOptions.count
//    }
//
    @IBAction func pickRandomLetter(_ sender: UIButton) {
        randomLetterLabel.text = "\(letters[Int(arc4random_uniform(UInt32(letters.count)))])"
    }
    

}

/*let aList = ["acidulated_water", "ackee", "acorn_squash", "aduki_beans", "egg_liqueur", "agar-agar", "ale", "aleppo_pepper", "alfalfa_sprouts", "allspice", almond
almond_essence
almond_extract
almond_milk
amaranth
amaretti
anchovy
anchovy_essence
angelica
anise
apple
apple_chutney
apple_juice
apple_sauce
apricot
apricot_jam
arborio_rice
arbroath_smokie
argan_oil
arrowroot
artichoke
asafoetida
asparagus
aubergine
avocado"]

*/
