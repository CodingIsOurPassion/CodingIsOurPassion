from __future__ import annotations
import csv
import http.client
from urllib import request
from dataclasses import dataclass
from collections.abc import Iterable


@dataclass
class ReservoirDayData:
    """A Representation of a single row of data from waterdatafortexas for Canyon Lake

    Data is kept as `str` types to make it easier for export. Very little or no actual parsing of
    the data should be done.

    Attributes:
        date: YYYY-MM-DD, when the data was captured
        water_level: feet above vertical datum
        surface_area: water coverage of the lake in acres
        reservoir_storage: actual storage at measured lake elevation
        conservation_storage: reservoir storage - dead pool capacity (note: conservation storage is capped at conservation capacity)
        percent_full: 100 * conservation storage/conservation capacity
        conservation_capacity: storage at conservation pool elevation - dead pool capacity
        dead_pool_capacity: storage at dead pool elevation
    """

    date: str
    water_level: str | None
    surface_area: str | None
    reservoir_storage: str
    conservation_storage: str
    percent_full: str
    conservation_capacity: str
    dead_pool_capacity: str

    @classmethod
    def from_csv_data(cls, data: list[str]) -> Iterable[ReservoirDayData]:
        # Strip comment lines from CSV
        data = [row for row in data if not row.startswith("#")]
        for row in csv.DictReader(data, delimiter=",", strict=True):
            yield ReservoirDayData(**row)

    @classmethod
    def scrape(
        cls,
        url: str = "https://www.waterdatafortexas.org/reservoirs/individual/canyon.csv",
    ):
        data: http.client.HTTPResponse
        with request.urlopen(url) as data:
            return cls.from_csv_data([row.decode("utf-8") for row in data.readlines()])


if __name__ == "__main__":
    for row in ReservoirDayData.scrape():
        print(row)
