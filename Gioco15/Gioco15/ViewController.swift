//
//  ViewController.swift
//  mp-GiocoDel15
//
//  Created by  PATRICK MARTINI on 23/10/2019.
//  Copyright © 2019 PATRICK MARTINI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtMos: UITextField!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn13: UIButton!
    @IBOutlet weak var btn14: UIButton!
    @IBOutlet weak var btn15: UIButton!
    @IBOutlet weak var btnSposto: UIButton!
    
    var arrMobile : [Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,0]
    let arrRandom : [Int] = [1,-1,4,-4]
    var spost = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.mischia()
    }
    
    func lock()
    {
        btn1.isUserInteractionEnabled = false
        btn2.isUserInteractionEnabled = false
        btn3.isUserInteractionEnabled = false
        btn4.isUserInteractionEnabled = false
        btn5.isUserInteractionEnabled = false
        btn6.isUserInteractionEnabled = false
        btn7.isUserInteractionEnabled = false
        btn8.isUserInteractionEnabled = false
        btn9.isUserInteractionEnabled = false
        btn10.isUserInteractionEnabled = false
        btn11.isUserInteractionEnabled = false
        btn12.isUserInteractionEnabled = false
        btn13.isUserInteractionEnabled = false
        btn14.isUserInteractionEnabled = false
        btn15.isUserInteractionEnabled = false
    }
    
    func unlock()
    {
        btn1.isUserInteractionEnabled = true
        btn2.isUserInteractionEnabled = true
        btn3.isUserInteractionEnabled = true
        btn4.isUserInteractionEnabled = true
        btn5.isUserInteractionEnabled = true
        btn6.isUserInteractionEnabled = true
        btn7.isUserInteractionEnabled = true
        btn8.isUserInteractionEnabled = true
        btn9.isUserInteractionEnabled = true
        btn10.isUserInteractionEnabled = true
        btn11.isUserInteractionEnabled = true
        btn12.isUserInteractionEnabled = true
        btn13.isUserInteractionEnabled = true
        btn14.isUserInteractionEnabled = true
        btn15.isUserInteractionEnabled = true
        

    }
    
    func mischia()
    {
        let tent = 5//varia in base all'utente quanti tentativi vuole
        for _ in 1 ... tent
        {
            var b = arrRandom.randomElement()
            var x = arrMobile.firstIndex(of: 0)
            var y = x! + b!

            while(y < 0 && y > 15)
            {
                b = arrRandom.randomElement()
                x = arrMobile.firstIndex(of: 0)
                y = x! + b!
            }
            arrMobile.swapAt(x!, y)
        }
        print(arrMobile)
    }
    
    func grafica(){
        btn1.setTitle(String(arrMobile[0]),for: .normal)
        btn2.setTitle(String(arrMobile[1]),for: .normal)
        btn3.setTitle(String(arrMobile[2]),for: .normal)
        btn4.setTitle(String(arrMobile[3]),for: .normal)
        btn5.setTitle(String(arrMobile[4]),for: .normal)
        btn6.setTitle(String(arrMobile[5]),for: .normal)
        btn7.setTitle(String(arrMobile[6]),for: .normal)
        btn8.setTitle(String(arrMobile[7]),for: .normal)
        btn9.setTitle(String(arrMobile[8]),for: .normal)
        btn10.setTitle(String(arrMobile[9]),for: .normal)
        btn11.setTitle(String(arrMobile[10]),for: .normal)
        btn12.setTitle(String(arrMobile[11]),for: .normal)
        btn13.setTitle(String(arrMobile[12]),for: .normal)
        btn14.setTitle(String(arrMobile[13]),for: .normal)
        btn15.setTitle(String(arrMobile[14]),for: .normal)
        btnSposto.setTitle(String(arrMobile[15]),for: .normal)
    }
    
    @IBAction func btnSx(_ sender: Any) {
        spost = arrRandom[1]
    }
    
    @IBAction func btnDx(_ sender: Any) {
        spost = arrRandom[0]
    }
    
    @IBAction func btnUp(_ sender: Any) {
        spost = arrRandom[3]
    }
    
    @IBAction func btnDown(_ sender: Any) {
        spost = arrRandom[2]
    }
    
    func scambia()
    {
        let x = arrMobile.firstIndex(of: 0)
        arrMobile.swapAt(x!, x! + spost)
    }
    
}

