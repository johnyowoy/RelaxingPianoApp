//
//  ListPianoTableViewController.swift
//  RelaxingPianoApp
//
//  Created by John on 2020/6/23.
//  Copyright © 2020 JinHauHuang. All rights reserved.
//

import UIKit

class ListPianoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    var AngelBeatsOST = ["My Soul, Your Beats", "Theme of SSS", "Memory", "Unjust Life", "Ichiban no Takaramono(一番の宝物)", "My Song", "Today Is OK"]
    
    var AngelBeatsImages = ["AngelBeats01", "AngelBeats02", "AngelBeats03", "AngelBeats04", "AngelBeats05", "AngelBeats06", "AngelBeats07"]
    
    var Performer = ["JinHau", "JinHau", "JinHau", "JinHau", "JinHau", "JinHau", "JinHau"]
    
    var SongTime = ["4:35", "1:52", "1:33", "2:45", "6:00", "4:53", "3:52"]
    
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return AngelBeatsOST.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ListPianoTableViewCell
        
        // Setting Cell...
        cell.SongLabel.text = AngelBeatsOST[indexPath.row]
        cell.ImageView.image = UIImage(named: AngelBeatsImages[indexPath.row])
        cell.TimeLabel.text = SongTime[indexPath.row]
        cell.PerformerLabel?.text = Performer[indexPath.row]
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
