import subprocess
from pathlib import Path


def test_inspect_profile():
    root = Path(__file__).resolve().parents[1]
    out = subprocess.check_output([str(root / "bin/finance-probe"), "--inspect"], text=True)
    assert "profile: default" in out
    assert "status: clean" in out
