//
//  ViewController.swift
//  SeSAC4240520
//
//  Created by jack on 5/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var oneButton: UIButton!
    @IBOutlet var twoButton: UIButton!
    @IBOutlet var threeButton: UIButton!
    
    @IBOutlet var oneLabel: UILabel!
    @IBOutlet var twoLabel: UILabel!
    @IBOutlet var threeLabel: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()

        //labelName: 매개변수(Parameter)
        //oneLabel, twoLabel.. : 전달인자(Argument)
        designLabelUI(oneLabel, thisIsTextColor: .red)
        designLabelUI(twoLabel, thisIsTextColor: .blue)
        designLabelUI(threeLabel, thisIsTextColor: .green)
        designButtonUI(oneButton, titleColor: .red, title: "234")
        //(): 함수 호출 연산자
        
    }
    
    @IBAction func oneButtonClicked(_ sender: UIButton) {
        oneLabel.text = "4567"
    }
    
    //매개변수(parameter)
    //외부 매개변수(Argument Label) ex. thisIsTextColor
    //내부 매개변수(Parameter Name) ex. jack
    //_: 와일드카드식별자
    func designLabelUI(_ a: UILabel,
                       thisIsTextColor jack: UIColor) {
        
        a.text = "0"
        a.textColor = jack
        a.font = .boldSystemFont(ofSize: 30)
        a.textAlignment = .center

    }
    
    func designButtonUI(_ button: UIButton,
                        titleColor: UIColor,
                        title: String) {
        button.setTitleColor(titleColor, for: .normal)
        button.setTitle(title, for: .normal)
    }


}

