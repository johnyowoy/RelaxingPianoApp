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
    
    var AngelBeatsOST: [Music] = [
        Music(song: "My Soul, Your Beats", performer: "JinHau", time: "4:35", image: "AngelBeats01"),
        Music(song: "Theme of SSS", performer: "JinHau", time: "1:52", image: "AngelBeats02"),
        Music(song: "Memory", performer: "JinHau", time: "1:33", image: "AngelBeats03"),
        Music(song: "Unjust Life", performer: "JinHau", time: "2:45", image: "AngelBeats04"),
        Music(song: "Ichiban no Takaramono(一番の宝物)", performer: "JinHau", time: "6:00", image: "AngelBeats05"),
        Music(song: "My Song", performer: "JinHau", time: "4:53", image: "AngelBeats06"),
        Music(song: "Today Is OK", performer: "JinHau", time: "3:52", image: "AngelBeats07")
    ]

    

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
        // var AngelBeatsOST is 23
        cell.SongLabel.text = AngelBeatsOST[indexPath.row].song
        cell.ImageView.image = UIImage(named: AngelBeatsOST[indexPath.row].image)
        cell.TimeLabel.text = AngelBeatsOST[indexPath.row].time
        cell.PerformerLabel?.text = AngelBeatsOST[indexPath.row].performer
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    // trailingSwipeActionsConfigurationForRowAt 向左滑功能
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        // 刪除
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") {
            (action, sourView, completionHandeler) in
            
            // Delete the row from the data source
            self.AngelBeatsOST.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            // 呼叫完成處理器來取消動作按鈕
            completionHandeler(true)
        }
        
        // 分享
        let shareAction = UIContextualAction(style: .normal, title: "Share") {
            (action, sourView, completionHandler) in
            
            // Share the row from the data souce
            let defaultText = "Listening " + self.AngelBeatsOST[indexPath.row].song + "Piano..."
            
            let activityController: UIActivityViewController
            if let imageToShare = UIImage(named: self.AngelBeatsOST[indexPath.row].image) {
                activityController = UIActivityViewController(activityItems: [defaultText, imageToShare], applicationActivities: nil)
            } else {
                activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
            }
            
            // for iPad
            if let popoverController = activityController.popoverPresentationController {
                if let cell = tableView.cellForRow(at: indexPath) {
                    popoverController.sourceView = cell
                    popoverController.sourceRect = cell.bounds
                }
            }
            
            self.present(activityController, animated: true, completion: nil)
            completionHandler(true)
        }
        
        // Customize the Color
        deleteAction.backgroundColor = UIColor(red: 231, green: 76, blue: 60)
        deleteAction.image = UIImage(systemName: "trash")
        shareAction.backgroundColor = UIColor(red: 254, green: 149, blue: 38)
        shareAction.image = UIImage(systemName: "square.and.arrow.up")
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction, shareAction])
        return swipeConfiguration
    }
    
    
    // 隱藏狀態列
    override var prefersStatusBarHidden: Bool {
        return true
    }

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
