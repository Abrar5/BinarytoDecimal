//
//  ViewController.swift
//  BinaryToDecimal
//
//  Created by user on 22/02/1442 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayedNumlbl: UILabel!
    
    @IBOutlet weak var userNumtxt: UITextField!
    @IBOutlet weak var decimalNum: UILabel!
    
    @IBOutlet weak var p00: UISwitch!
    @IBOutlet weak var p11: UISwitch!
    @IBOutlet weak var p22: UISwitch!
    @IBOutlet weak var p33: UISwitch!
    @IBOutlet weak var p44: UISwitch!
    @IBOutlet weak var p55: UISwitch!
    @IBOutlet weak var p66: UISwitch!
    @IBOutlet weak var p77: UISwitch!
    
    var binaryNum: String = "00000000"
    
    func decimalNumConverter (binaryString: String) -> Int
    {
        guard let number = Int(binaryString, radix: 2) else { return 0 }
    
        return number
    }
    
    func comparison ()
    {
        if userNumtxt.text == decimalNum.text
        {
            self.view.backgroundColor = UIColor .lightGray
    
        } else {
            self.view.backgroundColor = UIColor .white

        }
    }
    
    @IBAction func p00(_ sender: UISwitch) {
        if p00.isOn
        {
            
            binaryNum = (binaryNum.switchTrigger(using: "1", at: 7))
            displayedNumlbl.text = "\(binaryNum)"
            
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
 
            self.comparison ()
            
        }
        
        else
        {
            
            binaryNum = (binaryNum.switchTrigger(using: "0", at: 7))
            displayedNumlbl.text = "\(binaryNum)"
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
            
            self.comparison ()

        }
    }
    
    @IBAction func p11(_ sender: UISwitch) {
        if p11.isOn
        {
            
            binaryNum = (binaryNum.switchTrigger(using: "1", at: 6))
            displayedNumlbl.text = "\(binaryNum)"
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
            
            self.comparison ()

        }
        else {
            
            binaryNum = (binaryNum.switchTrigger(using: "0", at: 6))
            displayedNumlbl.text = "\(binaryNum)"
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
            
            self.comparison ()

        }
    }
    
    @IBAction func p22(_ sender: UISwitch) {
        if p22.isOn {
            
            binaryNum = (binaryNum.switchTrigger(using: "1", at: 5))
            displayedNumlbl.text = "\(binaryNum)"
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
            
            self.comparison ()

        }
        else {
            
            binaryNum = (binaryNum.switchTrigger(using: "0", at: 5))
            displayedNumlbl.text = "\(binaryNum)"
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
            
            self.comparison ()

        }
    }
    
    @IBAction func p33(_ sender: UISwitch) {
        if p33.isOn {
            
            binaryNum = (binaryNum.switchTrigger(using: "1", at: 4))
            displayedNumlbl.text = "\(binaryNum)"
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
            
            self.comparison ()

        }
        else {
            
            binaryNum = (binaryNum.switchTrigger(using: "0", at: 4))
            displayedNumlbl.text = "\(binaryNum)"
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
            
            self.comparison ()

        }
        
    }
    
    @IBAction func p44(_ sender: UISwitch) {
        if p44.isOn {
            
            binaryNum = (binaryNum.switchTrigger(using: "1", at: 3))
            displayedNumlbl.text = "\(binaryNum)"
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
            
            self.comparison ()

        }
        else {
            
            binaryNum = (binaryNum.switchTrigger(using: "0", at: 3))
            displayedNumlbl.text = "\(binaryNum)"
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
            
            self.comparison ()

        }
    }
    
    @IBAction func p55(_ sender: UISwitch) {
        if p55.isOn {
            
            binaryNum = (binaryNum.switchTrigger(using: "1", at: 2))
            displayedNumlbl.text = "\(binaryNum)"
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
            
            self.comparison ()

        }
        else {
            
            binaryNum = (binaryNum.switchTrigger(using: "0", at: 2))
            displayedNumlbl.text = "\(binaryNum)"
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
            
            self.comparison ()

        }
        
    }
    
    @IBAction func p66(_ sender: UISwitch) {
        if p66.isOn {
            
            binaryNum = (binaryNum.switchTrigger(using: "1", at: 1))
            displayedNumlbl.text = "\(binaryNum)"
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
            
            self.comparison ()

        }
        else {
            
            binaryNum = (binaryNum.switchTrigger(using: "0", at: 1))
            displayedNumlbl.text = "\(binaryNum)"
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
            
            self.comparison ()

        }
    }
    
    @IBAction func p77(_ sender: UISwitch) {
        if p77.isOn {
            binaryNum = (binaryNum.switchTrigger(using: "1", at: 0))
            displayedNumlbl.text = "\(binaryNum)"
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
            
            self.comparison ()

        }
        else {
            
            binaryNum = (binaryNum.switchTrigger(using: "0", at: 0))
            displayedNumlbl.text = "\(binaryNum)"
            
            decimalNum.text! = "\(decimalNumConverter(binaryString: binaryNum))"
            
            self.comparison ()

            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    
}

extension String
{
    func switchTrigger (using: String, at: Int) -> String
    {
        
        var binaryNum1 = String()
        
        for (index, char) in self.enumerated() {
            
            binaryNum1 += String((index == at) ? using : String(char))
            
        }
        
        
        return binaryNum1
    }
}

//extension UIColor {
//    convenience init(_ r: CGFloat,_ g: CGFloat,_ b: CGFloat,_ a: CGFloat) {
//        self.init(red: r/255, green: g/255, blue: b/255, alpha: a)
//    }
//}
