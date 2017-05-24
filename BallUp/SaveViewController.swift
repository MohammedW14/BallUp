//
//  SaveViewController.swift
//  BallUp
//
//  Created by Student on 5/20/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class SaveViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var myPlayerObject: [PlayerInfo] = []
    var myPlayerInfo3: PlayerInfo!
    var i: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        if(i == 1)
        {
        myPlayerObject.append(PlayerInfo(r: myPlayerInfo3.rebounds, t: myPlayerInfo3.tov, s: myPlayerInfo3.steals, b: myPlayerInfo3.blocks, a: myPlayerInfo3.assists, fg: myPlayerInfo3.fgm, fgaa: myPlayerInfo3.fga, ftma: myPlayerInfo3.ftm, ftmisseds: myPlayerInfo3.ftmissed, d: myPlayerInfo3.date, n: "Recently Added"))
        }
    }

    
    @IBAction func addButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Add Stats?", message: nil, preferredStyle: .alert)
        
        alert.addTextField { (nameTextField) in
            nameTextField.placeholder = "Add Name ..."
        }
        
        alert.addTextField { (dateTextField) in
            dateTextField.placeholder = "Add Date..."
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(cancelAction)
        
        let addAction = UIAlertAction(title: "Add", style: .default) { (action) in
            
            let nameTextField = alert.textFields?[0]
            let dateTextField = alert.textFields?[1]
            self.myPlayerObject.append((PlayerInfo(n: (nameTextField?.text!)!, d: (dateTextField?.text!)!)))
            
            self.tableView.reloadData()
        }
        
        alert.addAction(addAction)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPlayerObject.count
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete
        {
            myPlayerObject.remove(at: indexPath.row)
            tableView.reloadData()
        }
        
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = myPlayerObject[indexPath.row].name
        cell.detailTextLabel?.text = myPlayerObject[indexPath.row].date
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondView = segue.destination as! SecondViewController
        let selectedDate = tableView.indexPathForSelectedRow?.row
        
        secondView.PlayerInfo2 = myPlayerObject[selectedDate!]
    }

    
}
