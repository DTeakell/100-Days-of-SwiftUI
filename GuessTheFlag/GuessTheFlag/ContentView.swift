//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Dillon Teakell on 7/8/26.
//

import SwiftUI

@MainActor
struct ContentView: View {
    
    @State private var countries: [String] = ["Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    
    
    @State private var questionCount: Int = 0
    @State private var correctAnswer: Int = Int.random(in: 0...2)
    @State private var playerScore: Int = 0
    
    @State private var isShowingWrongAnswerAlert: Bool = false
    @State private var isShowingGameEndAlert: Bool = false
    @State private var alertTitle: String = ""
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.gray, Color.white],
                startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
            
            VStack {
                VStack {
                    Text("Tap the flag of:")
                        .font(.title2)
                        .padding(.bottom, 5)
                    Text("\(countries[correctAnswer])")
                        .font(.title.weight(.semibold))
                }
                
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                        
                    } label: {
                        Image("\(countries[number])")
                            .clipShape(.capsule)
                            .glassEffect()
                    }
                    .padding()
                }
                Text("Score: \(playerScore)")
                    .font(.title2)
                    .padding(.bottom, 5)
                
                Text("Question: \(questionCount) / 10")
                    .font(.title3)
            }
            .padding()
        }
        .alert(alertTitle, isPresented: $isShowingWrongAnswerAlert) {
            Button("Continue") {
                questionCount += 1
                askQuestion()
            }
        }
        
        .alert(alertTitle, isPresented: $isShowingGameEndAlert) {
            Button("Continue", action: newGame)
        } message: {
            Text("Your score: \(playerScore) / \(questionCount)")
        }
    }
    
    /// Creates a new game by resetting all metrics
    func newGame() {
        questionCount = 1
        playerScore = 0
        askQuestion()
    }
    
    /// Creates a new question by resetting the answer and shuffling the array of countries.
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    /// Handles game logic and shows an alert if the answer is incorrect.
    func flagTapped(_ number: Int) {
         if number == correctAnswer {
             if questionCount >= 10 {
                 alertTitle = "Finished!"
                 isShowingGameEndAlert = true
             } else {
                 playerScore += 1
                 questionCount += 1
             }
             askQuestion()
             
        } else {
            if questionCount >= 10 {
                alertTitle = "Finished!"
                isShowingGameEndAlert = true
            } else {
                alertTitle = "Incorrect"
                isShowingWrongAnswerAlert = true
            }
        }
    }
}

#Preview {
    ContentView()
}
