//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Choi Joon on 2021/03/17.
//

import UIKit

class SkillVC: UIViewController {
    
    var player : Player!
    @IBOutlet weak var BeginnerBtn: BorderButton!
    @IBOutlet weak var BallerBtn: BorderButton!
    @IBOutlet weak var NextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func BeginnerTapped(_ sender: Any) {
        SkillBtnSelected(SkillLevel: "Beginner")
    }
    @IBAction func BallerTapped(_ sender: Any) {
        SkillBtnSelected(SkillLevel: "Baller")
    }
    @IBAction func NextBtnTapped(_ sender: Any) {
        print("Your Desired League is \(player.desiredLeague!)")
        print("Your level is \(player.selectedSkillLevel!)")
    }
    func SkillBtnSelected(SkillLevel : String?){
        player.selectedSkillLevel = SkillLevel
        NextBtn.isEnabled = true
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
