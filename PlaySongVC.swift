//
//  PlaySongVC.swift
//  SeguePractice
//
//  Created by Danny Luong on 6/27/17.
//  Copyright © 2017 dnylng. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    // Reference to the song title in PlaySongVC view
    @IBOutlet weak var songLbl: UILabel!
    
    // Private variable referencing the selected song
    private var _selectedSong: String!
    
    // Getter/Setter for private var selectedSong
    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        songLbl.text = _selectedSong
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
