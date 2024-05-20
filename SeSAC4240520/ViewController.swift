//
//  ViewController.swift
//  SeSAC4240520
//
//  Created by jack on 5/20/24.
//

import UIKit
//
class ViewController: UIViewController {

    @IBOutlet var labelList: [UILabel]!
    
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
        designButtonUI(oneButton, titleColor: .red, title: "JACK")
        designButtonUI(oneButton, titleColor: .red, title: "BRAN")
        designButtonUI(oneButton, titleColor: .red, title: "DEN")
        //(): 함수 호출 연산자
        
    }
    
    //1. 어떤 버튼을 클릭했는 지 우찌 알죠?
    // -> currentTitle (옵셔널 조심, 버전 조심)
    // -> tag
    //2. 아웃렛 머 어떻게 못할까 => OutletCollection
    
    var count = [0, 0, 0]
    
    @IBAction func oneButtonClicked(_ sender: Any) {
        
        sender.currentTitle
        
        view.endEditing(true)
        
        count[sender.tag] = count[sender.tag] + 1
        
        labelList[sender.tag].text = "\(count[sender.tag])번"

    }
    
    //1. did end on exit
    //2. view.endEditing(true)
    @IBAction func keyboardDismiss(_ sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
        
    }
    
    @IBAction func imageViewTapped(_ sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
        
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

