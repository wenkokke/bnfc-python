from typing import List


def test_bnfc_version() -> None:
    import bnfc

    assert bnfc.version() == bnfc.VERSION


def assert_bnfc_main(args: List[str], golden_output: str) -> None:
    import subprocess

    actual_output = subprocess.check_output(["bnfc", *args]).decode("utf-8").strip()
    assert actual_output == golden_output
