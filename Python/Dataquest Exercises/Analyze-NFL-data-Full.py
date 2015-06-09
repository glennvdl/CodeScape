#Reconstructed code from dataquest.io - Turning partials in a single comprehensive overview
import csv

#defining new class
class Team():
    def __init__(self, name):
        self.name = name
        f = open("nfl.csv", 'r')
        csvreader = csv.reader(f)
        self.nfl = list(csvreader)

#define count_total_wins attribute
    def count_total_wins(self):
        count = 0
        for row in self.nfl:
            if row[2] == self.name:
                count = count + 1
        return count

#define wins_by_year attribute
    def wins_by_year(self):
        wins = {}
        valid_years = ["2009", "2010", "2011", "2012","2013"]
        for year in valid_years:
            count = 0
            for row in self.nfl:
                if row[2] == self.name and row[0] == year:
                    count += 1
            wins[year] = count
        return wins

#example
SF49 = Team("San Francisco 49ers")
niners_wins_by_year = SF49.wins_by_year()