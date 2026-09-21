from pathlib import Path


def test_sample_profile():
    data = (Path(__file__).resolve().parents[1] / "data/sample.csv").read_text()
    assert "period,amount" in data
