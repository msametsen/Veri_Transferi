//
//  ViewController.swift
//  Veri Transferi Yaygın Yöntem
//
//  Created by Samet on 4.06.2023.
//  artık buttondan segue yapma VC dan yap ve kod kısmına gelip performSegue yazdır zaten kod otomatik çıkacaktır sonrasında verdiğin segue identifier çok önemli ona yazarak segue yi tamamla bu yol kullan button dan segue yaygın kullanılmaz ve önümüzdeki derslerde bunu kullanıcaz
//prapere fonksiyonu ise geçişin nerden nereye olduğunu okumak için yapılır

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girdiAlani: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gonderB(_ sender: Any) {
        
        let alinanVeri = girdiAlani.text!
        
        performSegue(withIdentifier: "aTob", sender: alinanVeri)
        
    }
    
    @IBAction func gonderC(_ sender: Any) {
        
        let alinanVeri = girdiAlani.text!
        
        performSegue(withIdentifier: "aToc", sender: alinanVeri)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "aTob" {
            print("a dan b ye geçiş")
            
            if let veri = sender as? String {
                
                let gidilecekVC = segue.destination as! ViewControllerB
                
                gidilecekVC.mesajB = veri
                
            }
            
        }
        
        if segue.identifier == "aToc" {
            print("a dan c ye geçiş")
            
            if let veri = sender as? String {
                
                let gidilecekVC = segue.destination as! ViewControllerC
                
                gidilecekVC.mesajC = veri
                
            }
            
        }
    }
}

