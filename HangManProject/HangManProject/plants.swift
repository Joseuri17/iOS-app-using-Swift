//
//  plants.swift
//  HangManProject
//
//  Created by TX on 3/29/21.
//  Copyright © 2021 Jose Cruz. All rights reserved.
//
import UIKit

class space: UIViewController {
    
    
    @IBOutlet weak var Wordlabel: UILabel!
    
    @IBOutlet weak var infoImage: UIImageView!
    @IBOutlet weak var guessField: UITextField!
    
    @IBOutlet weak var HangmanImage: UIImageView!
    @IBOutlet weak var wrongLetters: UILabel!
    
    
    
    //These are the words people will try to guess
    var wordArray = ["SUNFLOWER", "GRASS", "TREES", "CHERRYBLOSSOM", "ROSE", "LILIES", "ANEMONE", "ANGELICA", "AZALEA", "BELLFLOWER", "BLEEDINGHEART", "BUTTERCUP", "CARDINAL", "CHIVES", "COSMOS","DAHLIA", "FENNEL", "HYACINTH", "IRIS", "LAVENDER"]
    
    //This is the chossen word from the wordArray
    var word = ""
    
    //This is where I store the incorrect guesses
    var wrongLettersArray = [Character]()
    
    //This is where I store the letters used in the word
    var lettersUsed = [Character]()
    
    //This is where I display letters and question marks of the word trying to be guessed
    var displayWordArray = [Character]()
    
    //This is the string I display for the user to guess
    var displayWords = ""
    
    //This is the character that the user guesses
    var guess: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        word = wordArray.randomElement()!
        lettersUsed = Array(word)
        
        for i in 1...word.count {
            
            displayWords += "-"
            
            Wordlabel.text = displayWords
            displayWordArray = Array(displayWords)
        }
        
    }
    
    
    @IBAction func guessButton(_ sender: Any) {
        guessField.resignFirstResponder()
        
        let guess0 = guessField.text
        
        if guess0 == "" {
            guessField.placeholder = "Input a single letter"
        } else if guess0!.count > 1 {
            guessField.placeholder = "Input a single letter"
        } else {
            guess = Character(guessField.text!.capitalized)
            checkLetter()
            displayWords = String(displayWordArray)
            Wordlabel.text = displayWords
            guessField.text = ""
            checkWin()
        }
        
        
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        guessField.text = ""
        HangmanImage.image = UIImage(contentsOfFile: "")
        infoImage.image = UIImage(contentsOfFile: "")
        wrongLettersArray = []
        wrongLetters.text = ""
        displayWords = ""
        
        word = wordArray.randomElement()!
        lettersUsed = Array(word)
        for i in 1...word.count {
            displayWords += "-"
            Wordlabel.text = displayWords
            displayWordArray = Array(displayWords)
            
            
            
        }
        
    }
    func checkLetter() {
        if lettersUsed.contains(guess){
            
            for i in 0...word.count-1 {
                if guess == lettersUsed[i]{
                    displayWordArray[i] = guess
                }
            }
            
        } else {
            wrongLettersArray.append(guess)
            wrongLetters.text = String(wrongLettersArray)
            inputImage()
        }
    }
    func inputImage(){
        let picture1 = UIImage(named: "p1")
        let picture2 = UIImage(named: "p2")
        let picture3 = UIImage(named: "p3")
        let picture4 = UIImage(named: "p4")
        let picture5 = UIImage(named: "p5")
        let picture6 = UIImage(named: "p6")
        let picture7 = UIImage(named: "p7")
        let picture8 = UIImage(named: "p8")
        let arrayImage = [picture1, picture2, picture3, picture4, picture5, picture6, picture7, picture8]
        
        HangmanImage.image = arrayImage[wrongLettersArray.count-1]
    }
    
    func checkWin(){
        if wrongLettersArray.count == 8 {
            infoImage.image = UIImage(named: "youLose")
        }
        else if displayWords.contains("-"){
            
            
        } else{
            infoImage.image = UIImage(named: "youWin")
        }
    }
}
