[rank: 0] Global seed set to 15855310
wandb: Currently logged in as: paolo-lb-fischer-harvard-university (use `wandb login --relogin` to force relogin)
wandb: wandb version 0.19.8 is available!  To upgrade, please run:
wandb:  $ pip install wandb --upgrade
wandb: Tracking run with wandb version 0.12.10
wandb: Syncing run logical-music-4
wandb: ⭐️ View project at https://wandb.ai/paolo-lb-fischer-harvard-university/walk-jump-fork
wandb: 🚀 View run at https://wandb.ai/paolo-lb-fischer-harvard-university/walk-jump-fork/runs/0otm474y
wandb: Run data is saved locally in ./wandb/run-20250305_055340-0otm474y
wandb: Run `wandb offline` to turn off syncing.
/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/fabric/plugins/environments/slurm.py:166: PossibleUserWarning: The `srun` command is available on your system but is not used. HINT: If your intention is to run Lightning on SLURM, prepend your python command with `srun` like so: srun python my_experiment.py ...
  rank_zero_warn(
GPU available: True (cuda), used: True
TPU available: False, using: 0 TPU cores
IPU available: False, using: 0 IPUs
HPU available: False, using: 0 HPUs
LOCAL_RANK: 0 - CUDA_VISIBLE_DEVICES: [MIG-c520cbb9-133b-5a16-81a3-2b18e3f38047]

  | Name  | Type        | Params
--------------------------------------
0 | model | ByteNetArch | 1.0 M 
--------------------------------------
1.0 M     Trainable params
0         Non-trainable params
1.0 M     Total params
4.105     Total estimated model params size (MB)
/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/trainer/connectors/data_connector.py:224: PossibleUserWarning: The dataloader, val_dataloader 0, does not have many workers which may be a bottleneck. Consider increasing the value of the `num_workers` argument` (try 64 which is the number of cpus on this machine) in the `DataLoader` init to improve performance.
  rank_zero_warn(
Error executing job with overrides: []
Traceback (most recent call last):
  File "/n/netscratch/mahadevan_lab/Everyone/pafischer/walk-jump-fork/src/walkjump/cmdline/_train.py", line 41, in train
    trainer.fit(model, datamodule=datamodule, ckpt_path=cfg.get("ckpt_path"))
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/trainer/trainer.py", line 608, in fit
    call._call_and_handle_interrupt(
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/trainer/call.py", line 38, in _call_and_handle_interrupt
    return trainer_fn(*args, **kwargs)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/trainer/trainer.py", line 650, in _fit_impl
    self._run(model, ckpt_path=self.ckpt_path)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/trainer/trainer.py", line 1103, in _run
    results = self._run_stage()
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/trainer/trainer.py", line 1182, in _run_stage
    self._run_train()
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/trainer/trainer.py", line 1195, in _run_train
    self._run_sanity_check()
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/trainer/trainer.py", line 1267, in _run_sanity_check
    val_loop.run()
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/loops/loop.py", line 199, in run
    self.advance(*args, **kwargs)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/loops/dataloader/evaluation_loop.py", line 152, in advance
    dl_outputs = self.epoch_loop.run(self._data_fetcher, dl_max_batches, kwargs)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/loops/loop.py", line 199, in run
    self.advance(*args, **kwargs)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/loops/epoch/evaluation_epoch_loop.py", line 137, in advance
    output = self._evaluation_step(**kwargs)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/loops/epoch/evaluation_epoch_loop.py", line 234, in _evaluation_step
    output = self.trainer._call_strategy_hook(hook_name, *kwargs.values())
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/trainer/trainer.py", line 1485, in _call_strategy_hook
    output = fn(*args, **kwargs)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/strategies/strategy.py", line 390, in validation_step
    return self.model.validation_step(*args, **kwargs)
  File "/n/netscratch/mahadevan_lab/Everyone/pafischer/walk-jump-fork/src/walkjump/model/_base.py", line 61, in validation_step
    loss = self.compute_loss(batch)
  File "/n/netscratch/mahadevan_lab/Everyone/pafischer/walk-jump-fork/src/walkjump/model/_denoise.py", line 18, in compute_loss
    xhat = self.xhat(y)
  File "/n/netscratch/mahadevan_lab/Everyone/pafischer/walk-jump-fork/src/walkjump/model/_base.py", line 74, in xhat
    return y + self.score(y).mul(pow(self.sigma, 2))
  File "/n/netscratch/mahadevan_lab/Everyone/pafischer/walk-jump-fork/src/walkjump/model/_denoise.py", line 14, in score
    return (self.model(y) - y) / pow(self.sigma, 2)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/torch/nn/modules/module.py", line 1739, in _wrapped_call_impl
    return self._call_impl(*args, **kwargs)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/torch/nn/modules/module.py", line 1750, in _call_impl
    return forward_call(*args, **kwargs)
  File "/n/netscratch/mahadevan_lab/Everyone/pafischer/walk-jump-fork/src/walkjump/model/arch/_bytenet.py", line 211, in forward
    e = self.embedder(x, input_mask=input_mask)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/torch/nn/modules/module.py", line 1739, in _wrapped_call_impl
    return self._call_impl(*args, **kwargs)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/torch/nn/modules/module.py", line 1750, in _call_impl
    return forward_call(*args, **kwargs)
  File "/n/netscratch/mahadevan_lab/Everyone/pafischer/walk-jump-fork/src/walkjump/model/arch/_bytenet.py", line 168, in forward
    x = layer(x, input_mask=input_mask)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/torch/nn/modules/module.py", line 1739, in _wrapped_call_impl
    return self._call_impl(*args, **kwargs)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/torch/nn/modules/module.py", line 1750, in _call_impl
    return forward_call(*args, **kwargs)
  File "/n/netscratch/mahadevan_lab/Everyone/pafischer/walk-jump-fork/src/walkjump/model/arch/_bytenet.py", line 103, in forward
    rep = self.sequence2(self.conv(self.sequence1(x), input_mask=input_mask))
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/torch/nn/modules/module.py", line 1739, in _wrapped_call_impl
    return self._call_impl(*args, **kwargs)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/torch/nn/modules/module.py", line 1750, in _call_impl
    return forward_call(*args, **kwargs)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/torch/nn/modules/container.py", line 250, in forward
    input = module(input)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/torch/nn/modules/module.py", line 1739, in _wrapped_call_impl
    return self._call_impl(*args, **kwargs)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/torch/nn/modules/module.py", line 1750, in _call_impl
    return forward_call(*args, **kwargs)
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/torch/nn/modules/normalization.py", line 217, in forward
    return F.layer_norm(
  File "/n/home10/pafischer/.local/lib/python3.10/site-packages/torch/nn/functional.py", line 2910, in layer_norm
    return torch.layer_norm(
RuntimeError: Given normalized_shape=[21], expected input with shape [*, 21], but got input of size[10, 93, 20]

Set the environment variable HYDRA_FULL_ERROR=1 for a complete stack trace.
wandb: Finishing run: 0otm474y...
wandb: Done!
