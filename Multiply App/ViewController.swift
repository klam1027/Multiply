//
//  ViewController.swift
//  Multiply App
//
//  Created by VMassarelli on 9/11/15.
//  Copyright (c) 2015 VMassarelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var labelAnswer: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var SegmentController: UISegmentedControl!
    @IBOutlet weak var labelSign: UILabel!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        if SegmentController.selectedSegmentIndex == 0
        {
            labelSign.text = "-"
        }
        if SegmentController.selectedSegmentIndex == 1
        {
            labelSign.text = "+"
        }
        if SegmentController.selectedSegmentIndex == 2
        {
            labelSign.text = "X"
        }
        if SegmentController.selectedSegmentIndex == 3
        {
            labelSign.text = "/"
        }

    }
    
    @IBAction func SegControl(sender: AnyObject)
    {
        if SegmentController.selectedSegmentIndex == 0
        {
            labelSign.text = "-"
        }
        if SegmentController.selectedSegmentIndex == 1
        {
            labelSign.text = "+"
        }
        if SegmentController.selectedSegmentIndex == 2
        {
            labelSign.text = "x"
        }
        if SegmentController.selectedSegmentIndex == 3
        {
            labelSign.text = "/"
        }
    }
    @IBAction func calcButton(sender: AnyObject)
    {
    
        let multiply1 = (textField1.text! as NSString).doubleValue
        let multiply2 = (textField2.text! as NSString).doubleValue
        var finalAnswer = 0.00
       
        if SegmentController.selectedSegmentIndex == 0
        {
            finalAnswer = multiply1 - multiply2
            labelAnswer.text = "\(finalAnswer)"
        }
        if SegmentController.selectedSegmentIndex == 1
        {
            finalAnswer = multiply1 + multiply2
            labelAnswer.text = "\(finalAnswer)"

        }
        if SegmentController.selectedSegmentIndex == 2
        {
             finalAnswer = multiply1 * multiply2
            labelAnswer.text = "\(finalAnswer)"

        }
        if SegmentController.selectedSegmentIndex == 3
        {
            finalAnswer = multiply1 / multiply2
            labelAnswer.text = "\(finalAnswer)"

        }
        if(finalAnswer == 64)
        {
            ImageView.image = UIImage(named: "mario64sw.jpg")
        }
        else if (finalAnswer % 2 != 0)
        {
            ImageView.image = UIImage(named: "jesus_is_cool")
        }
        else
        {
            ImageView.image = UIImage(named: "funny-this-is-sparta")
        }
        if(finalAnswer % 1 == 0)
        {
            let newAnswer = Int(finalAnswer)
            labelAnswer.text = "\(newAnswer)"
        }
    }
}





