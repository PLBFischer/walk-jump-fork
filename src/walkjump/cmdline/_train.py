# TOTRACK
#import dotenv
import torch

import hydra
import lightning.pytorch as pl
import wandb
from lightning.pytorch.utilities import rank_zero_only
from omegaconf import DictConfig, OmegaConf

from walkjump.cmdline.utils import instantiate_callbacks

# TOTRACK
#dotenv.load_dotenv(".env")


@hydra.main(version_base=None, config_path="../hydra_config", config_name="train")
def train(cfg: DictConfig) -> bool:
    log_cfg = OmegaConf.to_container(cfg, throw_on_missing=True, resolve=True)

    wandb.require("service")
    if rank_zero_only.rank == 0:
        print(OmegaConf.to_yaml(log_cfg))

    hydra.utils.instantiate(cfg.setup)

    datamodule = hydra.utils.instantiate(cfg.data)
    model = hydra.utils.instantiate(cfg.model, _recursive_=False)

    if not cfg.dryrun:
        logger = hydra.utils.instantiate(cfg.logger)
    else:
        logger = None

    callbacks = instantiate_callbacks(cfg.get("callbacks"))

    trainer = hydra.utils.instantiate(cfg.trainer, callbacks=callbacks, logger=logger)

    if rank_zero_only.rank == 0 and isinstance(trainer.logger, pl.loggers.WandbLogger):
        trainer.logger.experiment.config.update({"cfg": log_cfg})

    # TOTRACK
    #if not cfg.dryrun:
    #    trainer.fit(model, datamodule=datamodule, ckpt_path=cfg.get("ckpt_path"))
    trainer.fit(model, datamodule=datamodule)
    #IMPORTANT
    #trainer.save_checkpoint("/n/netscratch/mahadevan_lab/Everyone/pafischer/walk-jump-fork/checkpoints/running_checkpoint.ckpt")
    torch.save(model.state_dict(), "/n/netscratch/mahadevan_lab/Everyone/pafischer/walk-jump-fork/checkpoints/running_weights.ckpt")

    wandb.finish()
    return True
