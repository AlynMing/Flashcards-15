//
//  ViewController.swift
//  Flashcards
//
//  Created by chris on 2/15/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var btnOptionOne: UIButton!
    @IBOutlet weak var btnOptionTwo: UIButton!
    @IBOutlet weak var btnOptionThree: UIButton!
    
   
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
        /* Do any additional setup after loading the view. */
        
        //round and add shadow to card container
        card.layer.cornerRadius = 20.0
        card.clipsToBounds = false
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.2
        
        //round the corners of the labels
        //clip the bounds of the labels
        backLabel.layer.cornerRadius = 20.0
        backLabel.clipsToBounds = true
        frontLabel.layer.cornerRadius = 20.0
        frontLabel.clipsToBounds = true
        
        //round corners and change border width & color
        btnOptionOne.layer.cornerRadius = 20.0
        btnOptionOne.layer.borderWidth = 3.0
        btnOptionOne.layer.borderColor = #colorLiteral(red: 0.05625142902, green: 0.6208751798, blue: 0.4731128216, alpha: 1)
       
        
        btnOptionTwo.layer.cornerRadius = 20.0
        btnOptionTwo.layer.borderWidth = 3.0
        btnOptionTwo.layer.borderColor = #colorLiteral(red: 0.05161745101, green: 0.6191461086, blue: 0.4734094143, alpha: 1)
        
        btnOptionThree.layer.cornerRadius = 20.0
        btnOptionThree.layer.borderWidth = 3.0
        btnOptionThree.layer.borderColor = #colorLiteral(red: 0.05211611837, green: 0.6190879941, blue: 0.477820456, alpha: 1)
        
    }

    @IBAction func didTapOnFlashcard(_ sender: Any)
    {
        if frontLabel.isHidden != true
        {
            frontLabel.isHidden = true
        }
        else
        {
            frontLabel.isHidden = false
        }
    
    }
    
    @IBAction func didTapBtnOne(_ sender: Any)
    {
        btnOptionOne.isHidden = true
    }
    
    @IBAction func didTapBtnTwo(_ sender: Any)
    {
        frontLabel.isHidden = true
    }
    
    @IBAction func didTapBtnThree(_ sender: Any)
    {
        btnOptionThree.isHidden = true
    }
}
