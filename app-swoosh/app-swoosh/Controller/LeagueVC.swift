//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Choi Joon on 2021/03/17.
//

import UIKit

class LeagueVC: UIViewController {

    var player : Player!
    @IBOutlet weak var nestBtn: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
        
    }
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType : String){
        player.desiredLeague = leagueType
        nestBtn.isEnabled = true
        
    }
    
    //이 함수는 도착 VC의 viewdidload호출이전에 실행된다.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //segue.destination의 자료형은 ui view controller
        //고로 as?를 써서 다운캐스팅(범위를 줄이기)
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = self.player
        }
    }
}
