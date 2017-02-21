//
//  BestMoviesTableViewController.swift
//  Combined View Controllers
//
//  Created by Sunny NG on 19/2/2017.
//  Copyright © 2017 Image Nation. All rights reserved.
//

import UIKit

class BestMoviesTableViewController: UITableViewController {
    
    let movieTitles = ["The Shawshank Redemption (1994)",
                       "The Godfather (1972)",
                       "The Godfather: Part II (1974)",
                       "Pulp Fiction (1994)",
                       "The Good, the Bad and the Ugly (1966)",
                       "12 Angry Men (1957)",
                       "Schindler's List (1993)",
                       "The Dark Knight (2008)",
                       "The Lord of the Rings: The Return of the King (2003)",
                       "Fight Club (1999)",
                       "Star Wars: Episode V - The Empire Strikes Back (1980)",
                       "One Flew Over the Cuckoo's Nest (1975)",
                       "The Lord of the Rings: The Fellowship of the Ring (2001)",
                       "Inception (2010)",
                       "Goodfellas (1990)",
                       "Star Wars (1977)",
                       "Seven Samurai (1954)",
                       "Seven Samurai (1954)",
                       "Forrest Gump (1994)",
                       "City of God (2002)"]
    
    let moviePosters = ["01.jpg",
                        "02.jpg",
                        "03.jpg",
                        "04.jpg",
                        "05.jpg",
                        "06.jpg",
                        "07.jpg",
                        "08.jpg",
                        "09.jpg",
                        "10.jpg",
                        "11.jpg",
                        "12.jpg",
                        "13.jpg",
                        "14.jpg",
                        "15.jpg",
                        "16.jpg",
                        "17.jpg",
                        "18.jpg",
                        "19.jpg",
                        "20.jpg"]

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.title = "Best Movies"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movieTitles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCell", for: indexPath)

        cell.textLabel!.text = movieTitles[indexPath.row]

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "showDetail" {
            print("prepare for segue")
            if let indexPath = self.tableView.indexPathForSelectedRow {
                //let object = objects[indexPath.row] as! NSDate
                let controller = segue.destination as! BestMoviesDetailsViewController
                controller.title = movieTitles[indexPath.row]
                controller.movieTitle = movieTitles[indexPath.row]
                controller.moviePoster = moviePosters[indexPath.row]
//                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem
//                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
        
        //let movieDetailsViewController = segue.destination
        //let indexPath = self.tableView.indexPathsForSelectedRows
        
    }
 

}
