//
//  ViewController.swift
//  SecondExample
//
//  Created by MacStudent on 2017-10-17.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class BasicViewController: UIViewController {

    @IBOutlet weak var segmentControlAnimals: UISegmentedControl!
    @IBOutlet weak var lblResultOutput: UILabel!
    @IBOutlet weak var imgAnimals: UIImageView!
    @IBOutlet weak var stepperControl: UIStepper!
    @IBOutlet weak var lblForStepper: UILabel!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var lblMyDatePicker: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.segmentControlAnimals.selectedSegmentIndex = 0;
        self.valueChangeSegmentClick(segmentControlAnimals);
        self.segmentControlAnimals.insertSegment(withTitle:"Penguin", at: 3, animated: true);
       
        imgAnimals.image = UIImage(named:"Lion")
        lblMyDatePicker.text = String(describing:Date());

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }

    @IBAction func valueChangeSegmentClick(_ sender: UISegmentedControl) {
        let value:Int = segmentControlAnimals.selectedSegmentIndex;
        switch value {
            case 0:
            lblResultOutput.text = "I am a LION!!!"
              imgAnimals.image = UIImage(named:"Lion")
            case 1:
            lblResultOutput.text = "I am a TIGER!!!"
              imgAnimals.image = UIImage(named:"Tiger")
            case 2:
             lblResultOutput.text = "I am a MONKEY!!!"
              imgAnimals.image = UIImage(named:"Monkey")
        case 3:
            lblResultOutput.text = "I am a Penguin!!!"
            imgAnimals.image = UIImage(named:"Penguin")
            default:
             lblResultOutput.text = "I am a LION!!!"
              imgAnimals.image = UIImage(named:"Penguin")
        }
       /* if sender.selectedSegmentIndex == 0 {
            lblResultOutput.text = "I am a LION!!!"
        }else  if sender.selectedSegmentIndex == 1 {
            lblResultOutput.text = "I am a TIGER!!!"
        }else  if sender.selectedSegmentIndex == 2 {
            lblResultOutput.text = "I am a MONKEY!!!"
        }*/
    }
    
    @IBAction func onClickMyStepper(_ sender: UIStepper) {
        lblForStepper.text = String (sender.value);
    }
    
    
    @IBAction func onClickDatePicker(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEE MMMM d yyyy"
        let formattedDate = dateFormatter.string(from: sender.date)
        lblMyDatePicker.text = String(describing: formattedDate)
    }
}

