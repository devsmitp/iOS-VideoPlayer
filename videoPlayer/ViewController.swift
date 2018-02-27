//
//  ViewController.swift
//  Video Player
//
//  Created by Smit Patel on 2/26/18.
//  Copyright © 2018 devsmitp. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    @IBAction func btnAction(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "SiaChandelier", ofType: "mp3")
        {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true, completion:
                {
                    video.play()
            })
        }
    }
    
    


    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }


    }

