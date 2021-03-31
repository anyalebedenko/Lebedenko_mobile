//
//  ViewController.swift
//  Lebedenko_mobile
//
//  Created by Anna Lebedenko on 31.03.2021.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var btnSamsung: UIButton!
    @IBOutlet weak var btnApple: UIButton!
    
    @IBOutlet weak var btnSmartphone: UIButton!
    @IBOutlet weak var btnPad: UIButton!
    @IBOutlet weak var btnNotebook: UIButton!
    
    @IBOutlet weak var resFirma: UILabel!
    @IBOutlet weak var resType: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BtnRadioAction_f1(_ sender: UIButton)
    {
        if sender.tag == 1
        {
            btnApple.isSelected = true
            btnSamsung.isSelected = false
            print("Apple is selected")
        }
        else if sender.tag == 2
        {
            btnApple.isSelected = false
            btnSamsung.isSelected = true
            print("Samsung is selected")
        }
    }
    
    @IBAction func BtnRadioAction_type(_ sender: UIButton)
    {
        if sender.tag == 3
        {
            btnSmartphone.isSelected = true
            btnPad.isSelected = false
            btnNotebook.isSelected = false
            print("Smartphone is selected")
        }
        else if sender.tag == 4
        {
            btnSmartphone.isSelected = false
            btnPad.isSelected = true
            btnNotebook.isSelected = false
            print("Pad is selected")
        }
        else if sender.tag == 5
        {
            btnSmartphone.isSelected = false
            btnPad.isSelected = false
            btnNotebook.isSelected = true
            print("Laptop is selected")
        }
    }
    
    @IBAction func OKbuttonAction(_ sender: Any)
    {
        if btnApple.isSelected == true
        {
            resFirma.text="Apple"
        }
        if btnSamsung.isSelected==true
        {
            resFirma.text="Samsung"
        }
        if btnSmartphone.isSelected==true
        {
            resType.text="Смартфон"
        }
        if btnPad.isSelected==true
        {
            resType.text="Планшет"
        }
        if btnNotebook.isSelected==true
        {
            resType.text="Ноутбук"
        }
    }
    
    @IBAction func CancelButtonAction(_ sender: Any)
    {
        resFirma.text="_"
        resType.text="_"
    }
}

