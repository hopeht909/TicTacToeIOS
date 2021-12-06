//
//  ViewController.swift
//  TicTacToe
//
//  Created by ameera abduallah on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var box1: UIButton!
    @IBOutlet weak var box2: UIButton!
    
    @IBOutlet weak var box3: UIButton!
    @IBOutlet weak var box4: UIButton!
    
    @IBOutlet weak var box5: UIButton!
    @IBOutlet weak var box6: UIButton!
    
    @IBOutlet weak var box7: UIButton!
    @IBOutlet weak var box8: UIButton!
    @IBOutlet weak var box9: UIButton!
    
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    var player = 1
    var buttons = [UIButton] ()
    
    override func viewDidLoad() {
    super.viewDidLoad()
        buttons = [box1, box2, box3, box4, box5, box6, box7, box8, box9]
        for btn in buttons{
            btn.backgroundColor = .lightGray
        }
}
    
    @IBAction func action(_ sender: UIButton) {
        if player == 1 {
            sender.backgroundColor = .red
                   player = 2
        }
        else {
            sender.backgroundColor = .blue
                   player = 1
               }
        checkTheWinner()
        
    }
    
   
    
    @IBAction func resetPressed(_ sender: UIButton) {
       
        
        for btn in buttons{
            btn.backgroundColor = .lightGray
        }
               winnerLabel.text = ""
    }
    func draw(){
        for btn in buttons{
            if btn.backgroundColor == .lightGray {
                return
            }
        }
        winnerLabel.text = "darw"
              
    }
    
       func checkTheWinner()  {
   if (box1.backgroundColor == .red) && (box2.backgroundColor == .red) && (box3.backgroundColor == .red){
               winnerLabel.text = "Congrat Red Won"}
   else if (box4.backgroundColor == .red) && (box5.backgroundColor == .red) && (box6.backgroundColor == .red){
       winnerLabel.text = "Congrat Red Won"}
   else if (box7.backgroundColor == .red) && (box8.backgroundColor == .red) && (box9.backgroundColor == .red){
       winnerLabel.text = "Congrat Red Won"}
   else if (box1.backgroundColor == .red) && (box4.backgroundColor == .red) && (box7.backgroundColor == .red){
       winnerLabel.text = "Congrat Red Won"}
   else if (box2.backgroundColor == .red) && (box5.backgroundColor == .red) && (box8.backgroundColor == .red){
       winnerLabel.text = "Congrat Red Won"}
   else if (box3.backgroundColor == .red) && (box6.backgroundColor == .red) && (box9.backgroundColor == .red){
       winnerLabel.text = "Congrat Red Won"}
   else if (box1.backgroundColor == .red) && (box5.backgroundColor == .red) && (box9.backgroundColor == .red){
       winnerLabel.text = "Congrat Red Won"}
   else if (box3.backgroundColor == .red) && (box5.backgroundColor == .red) && (box7.backgroundColor == .red){
       winnerLabel.text = "Congrat Red Won"}
     // red won case ---------------------------------------
       else if (box1.backgroundColor == .blue) && (box2.backgroundColor == .blue) && (box3.backgroundColor == .blue){
                       winnerLabel.text = "Congrat blue Won"}
           else if (box4.backgroundColor == .blue) && (box5.backgroundColor == .blue) && (box6.backgroundColor == .blue){
               winnerLabel.text = "Congrat blue Won"}
           else if (box7.backgroundColor == .blue) && (box8.backgroundColor == .blue) && (box9.backgroundColor == .blue){
               winnerLabel.text = "Congrat blue Won"}
           else if (box1.backgroundColor == .blue) && (box4.backgroundColor == .blue) && (box7.backgroundColor == .blue){
               winnerLabel.text = "Congrat blue Won"}
           else if (box2.backgroundColor == .blue) && (box5.backgroundColor == .blue) && (box8.backgroundColor == .blue){
               winnerLabel.text = "Congrat blue Won"}
           else if (box3.backgroundColor == .blue) && (box6.backgroundColor == .blue) && (box9.backgroundColor == .blue){
               winnerLabel.text = "Congrat blue Won"}
           else if (box1.backgroundColor == .blue) && (box5.backgroundColor == .blue) && (box9.backgroundColor == .blue){
               winnerLabel.text = "Congrat blue Won"}
           else if (box3.backgroundColor == .blue) && (box5.backgroundColor == .blue) && (box7.backgroundColor == .blue){
               winnerLabel.text = "Congrat blue Won"}
             // blue won case ---------------------------------------
           draw()
       }
    
}

