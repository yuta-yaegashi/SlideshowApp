//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 八重樫裕太 on 2021/04/30.
//

import UIKit

class ResultViewController:UIViewController {


    @IBOutlet weak var imageView: UIImageView!
    
    var x : UIImage?
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = self.x
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
