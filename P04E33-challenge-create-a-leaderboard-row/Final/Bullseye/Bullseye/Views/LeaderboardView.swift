//
//  LeaderboardView.swift
//  Bullseye
//
//  Created by Ray Wenderlich on 10/23/20.
//

import SwiftUI

struct LeaderboardView: View {
  var body: some View {
    RowView(index: 1, score: 10, date: Date())
  }
}

struct RowView: View {
  let index: Int
  let score: Int
  let date: Date

  var body: some View {
    HStack {
      RoundedTextView(text: String(index))
      Spacer()
      ScoreText(score: score)
        .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
      Spacer()
      DateText(date: date)
        .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
    }
    .background(
      RoundedRectangle(cornerRadius: .infinity)
        .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
    )
    .padding(.leading)
    .padding(.trailing)
    .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
  }
}

struct LeaderboardView_Previews: PreviewProvider {
  static var previews: some View {
    LeaderboardView()
    LeaderboardView()
      .previewLayout(.fixed(width: 568, height: 320))
    LeaderboardView()
      .preferredColorScheme(.dark)
    LeaderboardView()
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
