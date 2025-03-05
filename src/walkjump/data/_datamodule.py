from dataclasses import dataclass, field
from typing import Literal

import pandas as pd
from lightning.pytorch import LightningDataModule
from sklearn.preprocessing import LabelEncoder
from torch.utils.data import DataLoader

from walkjump.constants import ALPHABET_AHO

from ._batch import AbBatch
from ._dataset import AbDataset

# TOTRACK
#@dataclass
#class AbDataModule(LightningDataModule):
#    csv_data_path: str
#    batch_size: int = 64
#    num_workers: int = 1
#
#    dataset: pd.DataFrame = field(init=False)
#    alphabet: LabelEncoder = field(init=False, default=ALPHABET_AHO)
#
#    def setup(self, stage: str):
#        match stage:
#            case "fit" | "validate" | "test":
#                # TOTRACK
#                #self.dataset = pd.read_csv(self.csv_data_path, compression="gzip")
#                self.dataset = pd.read_csv(self.csv_data_path)
#
#            case _:
#                raise ValueError(f"Unreognized 'stage': {stage}")

@dataclass
class AbDataModule(LightningDataModule):
    csv_data_path: str
    batch_size: int = 64
    num_workers: int = 1

    dataset: pd.DataFrame = field(init=False)
    alphabet: LabelEncoder = field(init=False, default=ALPHABET_AHO)

    def __post_init__(self):
        super().__init__()  # Ensure LightningDataModule is properly initialized

    def setup(self, stage: str):
        match stage:
            case "fit" | "validate" | "test":
                self.dataset = pd.read_csv(self.csv_data_path)
            case _:
                raise ValueError(f"Unreognized 'stage': {stage}")
    def _make_dataloader(self, partition: Literal["train", "val", "test"]) -> DataLoader:
        # TOTRACK
        #df = self.dataset[self.dataset.partition == partition]
        # TODO: make sure that this doesn't create any issues where the test and val datsets become everything and suddenly you have an issue where the fit method performs weird because of that.
        df = self.dataset
        dataset = AbDataset(df, self.alphabet)
        return DataLoader(
            dataset,
            batch_size=self.batch_size,
            shuffle=partition == "train",
            num_workers=self.num_workers,
            collate_fn=AbBatch.from_tensor_pylist,
        )

    def train_dataloader(self) -> DataLoader:
        return self._make_dataloader("train")

    def val_dataloader(self) -> DataLoader:
        return self._make_dataloader("val")

    def test_dataloader(self) -> DataLoader:
        return self._make_dataloader("test")
