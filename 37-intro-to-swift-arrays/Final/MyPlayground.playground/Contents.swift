import UIKit

var myInts: [Int] = [1, 2, 3]
for int in myInts {
  print(int)
}
myInts.append(99)
myInts.append(42)
myInts.sort()
myInts.isEmpty
myInts.count
myInts[0]
myInts[1]
myInts[2]

struct LeaderboardEntry {
  let points: Int
  let date: Date
}
var leaderboardEntry: [LeaderboardEntry] = []
leaderboardEntry.append(LeaderboardEntry(points: 99, date: Date()))
leaderboardEntry.append(LeaderboardEntry(points: 42, date: Date()))
leaderboardEntry.sort { $0.points > $1.points }
print(leaderboardEntry)
