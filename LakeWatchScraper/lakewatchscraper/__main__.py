import json
import dataclasses
from lakewatchscraper.waterdata import ReservoirDayData


def main():
    print("Scraping Water Data for Canyon Lake")
    print("===================================")
    for row in ReservoirDayData.scrape():
        print(json.dumps(dataclasses.asdict(row)))


if __name__ == "__main__":
    main()
