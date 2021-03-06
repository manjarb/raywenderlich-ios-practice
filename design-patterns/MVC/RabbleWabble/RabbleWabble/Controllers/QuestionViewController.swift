//
//  ViewController.swift
//  RabbleWabble
//
//  Created by Varis Darasirikul on 6/11/21.
//

import UIKit

public class QuestionViewController: UIViewController {
    
    public var questionGroup = QuestionGroup.basicPhrases()
    public var questionIndex = 0

    public var correctCount = 0
    public var incorrectCount = 0

    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showQuestion()
    }

    public var questionView: QuestionView! {
      guard isViewLoaded else { return nil }
      return (view as! QuestionView)
    }
    
    private func showQuestion() {
      let question = questionGroup.questions[questionIndex]

      questionView.answerLabel.text = question.answer
      questionView.promptLabel.text = question.prompt
      questionView.hintLabel.text = question.hint

      questionView.answerLabel.isHidden = true
      questionView.hintLabel.isHidden = true
    }
    
    @IBAction func toggleAnswerLabels(_ sender: Any) {
      questionView.answerLabel.isHidden =
        !questionView.answerLabel.isHidden
      questionView.hintLabel.isHidden =
        !questionView.hintLabel.isHidden
    }
    
    // 1
    @IBAction func handleCorrect(_ sender: Any) {
      correctCount += 1
      questionView.correctCountLabel.text = "\(correctCount)"
      showNextQuestion()
    }

    // 2
    @IBAction func handleIncorrect(_ sender: Any) {
      incorrectCount += 1
      questionView.incorrectCountLabel.text = "\(incorrectCount)"
      showNextQuestion()
    }

    // 3
    private func showNextQuestion() {
      questionIndex += 1
      guard questionIndex < questionGroup.questions.count else {
        // TODO: - Handle this...!
        return
      }
      showQuestion()
    }
}


