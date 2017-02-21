//
//  BestMoviesDetailsViewController.swift
//  Combined View Controllers
//
//  Created by Sunny NG on 19/2/2017.
//  Copyright © 2017 Image Nation. All rights reserved.
//

import UIKit

class BestMoviesDetailsViewController: UIViewController {

    //@IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var moviePosterImageView: UIImageView!
    
    var movieTitle: String?
    var moviePoster: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let moviePoster = moviePoster {
            let image = UIImage(named: moviePoster)
            moviePosterImageView.image = image
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
