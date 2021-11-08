//
//  DetailsVC.swift
//  Objective_Task
//
//  Created by Ravali on 11/5/21.
//

import UIKit
class DetailsVC: UIViewController {
    var detailTxtLabel : UILabel!
    @objc public var detailedText : String!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .red
        let rect = CGRect.init(x: 0, y: 0, width: 300, height: 40)
        detailTxtLabel = UILabel.init(frame: rect)
        self.view.addSubview(detailTxtLabel)
        detailTxtLabel.text = self.detailedText
        detailTxtLabel.backgroundColor = .white
        detailTxtLabel.textAlignment = .center
        detailTxtLabel.center = self.view.center
        
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
