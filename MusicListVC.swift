//
//  MusicListVCViewController.swift
//  SeguePractice
//
//  Created by Danny Luong on 6/26/17.
//  Copyright © 2017 dnylng. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Instead of segueing back to main, dismiss this VC
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "As If It's Your Last"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        if let destination = segue.destination as? PlaySongVC {
            
            // Pass the selected object to the new view controller.
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }

}
