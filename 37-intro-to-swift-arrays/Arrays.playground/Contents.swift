import Cocoa

var myInts = [1,2,3]

for int in myInts {
  print(int)
}

myInts.append(99)
myInts.append(42)
myInts.sort()

myInts.isEmpty
myInts.count

myInts[2]
myInts[0]
//myInts[99]

struct LeaderboardEntry {
  let score: Int
  let date: Date
}

var leaderboardEntries: [LeaderboardEntry] = []

leaderboardEntries.append(LeaderboardEntry(score: 7, date: Date()))
leaderboardEntries.append(LeaderboardEntry(score: 99, date: Date()))
leaderboardEntries.append(LeaderboardEntry(score: 42, date: Date()))

leaderboardEntries.sort { entry1, entry2 in
  entry1.score > entry2.score
}
print(leaderboardEntries)
