import hydra
import torch
import wandb
from lightning.pytorch.utilities import rank_zero_only
from omegaconf import DictConfig, OmegaConf

from walkjump.cmdline.utils import instantiate_redesign_mask, instantiate_seeds
from walkjump.sampling import walkjump

import os
import csv
def write_list_to_csv(string_list, csv_path):
    # If the CSV file already exists, delete it
    if os.path.exists(csv_path):
        os.remove(csv_path)
    
    # Write the CSV file with a single column "sequence"
    with open(csv_path, mode='w', newline='') as csv_file:
        writer = csv.writer(csv_file)
        # Write header
        writer.writerow(['sequence'])
        # Write each string as a new row in the "sequence" column
        for item in string_list:
            writer.writerow([item])


@hydra.main(version_base=None, config_path="../hydra_config", config_name="sample")
def sample(cfg: DictConfig) -> bool:
    log_cfg = OmegaConf.to_container(cfg, throw_on_missing=True, resolve=True)

    wandb.require("service")
    if rank_zero_only.rank == 0:
        print(OmegaConf.to_yaml(log_cfg))

    hydra.utils.instantiate(cfg.setup)

    if cfg.device is None:
        device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    else:
        print(f"using device {cfg.device}")
        device = torch.device(cfg.device)

    mask_idxs = instantiate_redesign_mask(cfg.designs.redesign_regions or [])
    seeds = instantiate_seeds(cfg.designs)

    if not cfg.dryrun:
        model = hydra.utils.instantiate(cfg.model).to(device)
        sample_df = walkjump(
            seeds,
            model,
            delta=cfg.langevin.delta,
            lipschitz=cfg.langevin.lipschitz,
            friction=cfg.langevin.friction,
            steps=cfg.langevin.steps,
            num_samples=cfg.designs.num_samples,
            mask_idxs=mask_idxs,
            chunksize=cfg.designs.chunksize,
        )
        # TOTRACK
        #sample_df.drop_duplicates(subset=["fv_heavy_aho", "fv_light_aho"], inplace=True)
        print(f"Writing {len(sample_df)} samples to {cfg.designs.output_csv}")
        # TOTRACK
        #sample_df.to_csv(cfg.designs.output_csv, index=False)
        write_list_to_csv(sample_df,cfg.designs.output_csv)

    return True
