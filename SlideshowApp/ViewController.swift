//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 八重樫裕太 on 2021/04/26.
//

import UIKit

class ViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
    }

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    // 配列に指定するindex番号を宣言
        var nowIndex:Int = 0

        // スライドショーに使用するタイマーを宣言
        var timer: Timer!

        // スライドショーさせる画像の配列を宣言
        var imageArray:[UIImage] = [
            UIImage(named: "no1")!,
            UIImage(named: "no2")!,
            UIImage(named: "no3")!,
            
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // indexの画像をstoryboardの画像にセットする
        image.image = imageArray[nowIndex]

    }
    
    // 再生ボタンを押した時の処理
      
    @IBAction func slideshowButton(_ sender: Any) {
    
    // 再生中か停止しているかを判定
            if (timer == nil) {
                // 再生時の処理を実装

                // タイマーをセットする
                timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)

                // ボタンの名前を停止に変える
                startButton.setTitle("停止", for: .normal)
                
                //進むボタンを非表示にする
                nextButton.isHidden = true
                
                //戻るボタンを非表示にする
                backButton.isHidden = true

            } else {
                // 停止時の処理を実装
                // タイマーを停止する
                timer.invalidate()

                // タイマーを削除しておく(timer.invalidateだけだとtimerがnilにならないため
                timer = nil

                           // ボタンの名前を再生に直しておく
                           startButton.setTitle("再生", for: .normal)
                
                //進むボタンを表示する
                nextButton.isHidden = false
                
                //戻るボタンを表示する
                backButton.isHidden = false
                       }
                   }
    @objc func changeImage() {
        
       

            // indexを増やして表示する画像を切り替える
            nowIndex += 1

            // indexが表示予定の画像の数と同じ場合
            if (nowIndex == imageArray.count) {
                // indexを一番最初の数字に戻す
                nowIndex = 0
            }
        // indexの画像をstoryboardの画像にセットする
        image.image = imageArray[nowIndex]
        }
 //進むボタンを押したときの処理
    @IBAction func nextButton(_ sender: Any) {
        
      

            // indexを増やして表示する画像を切り替える
            nowIndex += 1

            // indexが表示予定の画像の数と同じ場合
        if (nowIndex == imageArray.count) {
                // indexを一番最初の数字に戻す
                nowIndex = 0
            }
        // indexの画像をstoryboardの画像にセットする
        image.image = imageArray[nowIndex]
        
    }
    @IBAction func backButton(_ sender: Any) {
       
        // 表示されている画像が先頭の時
        if (nowIndex == 0) {
            // indexを一番最後の数字に戻す
            nowIndex = imageArray.count
        }
            // indexを減らして表示する画像を切り替える
            nowIndex -= 1

           
        // indexの画像をstoryboardの画像にセットする
        image.image = imageArray[nowIndex]
        
    }
    
    @IBAction func tappAction(_ sender: Any) {
    }
    
   
    //遷移先から戻ってきた時のアクション
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        }
    
}

