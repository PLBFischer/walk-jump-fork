[rank: 0] Global seed set to 15855310
wandb: Currently logged in as: paolo-lb-fischer-harvard-university (use `wandb login --relogin` to force relogin)
wandb: wandb version 0.19.8 is available!  To upgrade, please run:
wandb:  $ pip install wandb --upgrade
wandb: Tracking run with wandb version 0.12.10
wandb: Syncing run eternal-star-11
wandb: ⭐️ View project at https://wandb.ai/paolo-lb-fischer-harvard-university/walk-jump-fork
wandb: 🚀 View run at https://wandb.ai/paolo-lb-fischer-harvard-university/walk-jump-fork/runs/gn18rrwq
wandb: Run data is saved locally in ./wandb/run-20250305_065707-gn18rrwq
wandb: Run `wandb offline` to turn off syncing.
/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/fabric/plugins/environments/slurm.py:166: PossibleUserWarning: The `srun` command is available on your system but is not used. HINT: If your intention is to run Lightning on SLURM, prepend your python command with `srun` like so: srun python my_experiment.py ...
  rank_zero_warn(
GPU available: True (cuda), used: True
TPU available: False, using: 0 TPU cores
IPU available: False, using: 0 IPUs
HPU available: False, using: 0 HPUs
/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/callbacks/model_checkpoint.py:612: UserWarning: Checkpoint directory checkpoints exists and is not empty.
  rank_zero_warn(f"Checkpoint directory {dirpath} exists and is not empty.")
LOCAL_RANK: 0 - CUDA_VISIBLE_DEVICES: [MIG-c520cbb9-133b-5a16-81a3-2b18e3f38047]

  | Name  | Type        | Params
--------------------------------------
0 | model | ByteNetArch | 1.0 M 
--------------------------------------
1.0 M     Trainable params
0         Non-trainable params
1.0 M     Total params
4.104     Total estimated model params size (MB)
/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/trainer/connectors/data_connector.py:224: PossibleUserWarning: The dataloader, val_dataloader 0, does not have many workers which may be a bottleneck. Consider increasing the value of the `num_workers` argument` (try 64 which is the number of cpus on this machine) in the `DataLoader` init to improve performance.
  rank_zero_warn(
/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/trainer/connectors/data_connector.py:224: PossibleUserWarning: The dataloader, train_dataloader, does not have many workers which may be a bottleneck. Consider increasing the value of the `num_workers` argument` (try 64 which is the number of cpus on this machine) in the `DataLoader` init to improve performance.
  rank_zero_warn(
/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/trainer/trainer.py:1600: PossibleUserWarning: The number of training batches (1) is smaller than the logging interval Trainer(log_every_n_steps=50). Set a lower value for log_every_n_steps if you want to see logs for the training epoch.
  rank_zero_warn(
Epoch 0, global step 1: 'val_loss' reached 0.33322 (best 0.33322), saving model to 'checkpoints/epoch=0-step=1-val_loss=0.3332.ckpt' as top 1
Epoch 1, global step 2: 'val_loss' reached 0.22187 (best 0.22187), saving model to 'checkpoints/epoch=1-step=2-val_loss=0.2219.ckpt' as top 2
Epoch 2, global step 3: 'val_loss' reached 0.17744 (best 0.17744), saving model to 'checkpoints/epoch=2-step=3-val_loss=0.1774-v1.ckpt' as top 3
Epoch 3, global step 4: 'val_loss' reached 0.15712 (best 0.15712), saving model to 'checkpoints/epoch=3-step=4-val_loss=0.1571.ckpt' as top 4
Epoch 4, global step 5: 'val_loss' reached 0.14244 (best 0.14244), saving model to 'checkpoints/epoch=4-step=5-val_loss=0.1424.ckpt' as top 5
Epoch 5, global step 6: 'val_loss' reached 0.13193 (best 0.13193), saving model to 'checkpoints/epoch=5-step=6-val_loss=0.1319.ckpt' as top 6
Epoch 6, global step 7: 'val_loss' reached 0.11719 (best 0.11719), saving model to 'checkpoints/epoch=6-step=7-val_loss=0.1172.ckpt' as top 7
Epoch 7, global step 8: 'val_loss' reached 0.10351 (best 0.10351), saving model to 'checkpoints/epoch=7-step=8-val_loss=0.1035.ckpt' as top 8
Epoch 8, global step 9: 'val_loss' reached 0.09299 (best 0.09299), saving model to 'checkpoints/epoch=8-step=9-val_loss=0.0930-v1.ckpt' as top 9
Epoch 9, global step 10: 'val_loss' reached 0.08509 (best 0.08509), saving model to 'checkpoints/epoch=9-step=10-val_loss=0.0851-v3.ckpt' as top 10
Epoch 10, global step 11: 'val_loss' reached 0.07777 (best 0.07777), saving model to 'checkpoints/epoch=10-step=11-val_loss=0.0778-v1.ckpt' as top 11
Epoch 11, global step 12: 'val_loss' reached 0.07313 (best 0.07313), saving model to 'checkpoints/epoch=11-step=12-val_loss=0.0731.ckpt' as top 12
Epoch 12, global step 13: 'val_loss' reached 0.06836 (best 0.06836), saving model to 'checkpoints/epoch=12-step=13-val_loss=0.0684-v2.ckpt' as top 13
Epoch 13, global step 14: 'val_loss' reached 0.06600 (best 0.06600), saving model to 'checkpoints/epoch=13-step=14-val_loss=0.0660-v1.ckpt' as top 14
Epoch 14, global step 15: 'val_loss' reached 0.06335 (best 0.06335), saving model to 'checkpoints/epoch=14-step=15-val_loss=0.0633-v1.ckpt' as top 15
Epoch 15, global step 16: 'val_loss' reached 0.06112 (best 0.06112), saving model to 'checkpoints/epoch=15-step=16-val_loss=0.0611-v3.ckpt' as top 16
Epoch 16, global step 17: 'val_loss' reached 0.06061 (best 0.06061), saving model to 'checkpoints/epoch=16-step=17-val_loss=0.0606-v2.ckpt' as top 17
Epoch 17, global step 18: 'val_loss' reached 0.05902 (best 0.05902), saving model to 'checkpoints/epoch=17-step=18-val_loss=0.0590-v1.ckpt' as top 18
Epoch 18, global step 19: 'val_loss' reached 0.05798 (best 0.05798), saving model to 'checkpoints/epoch=18-step=19-val_loss=0.0580-v1.ckpt' as top 19
Epoch 19, global step 20: 'val_loss' reached 0.05727 (best 0.05727), saving model to 'checkpoints/epoch=19-step=20-val_loss=0.0573-v1.ckpt' as top 20
`Trainer.fit` stopped: `max_epochs=20` reached.
wandb: Waiting for W&B process to finish, PID None... (success).
wandb: - 0.00MB of 0.00MB uploaded (0.00MB deduped)wandb: \ 0.00MB of 0.00MB uploaded (0.00MB deduped)wandb: | 0.00MB of 0.02MB uploaded (0.00MB deduped)wandb: / 0.00MB of 0.02MB uploaded (0.00MB deduped)wandb: - 0.00MB of 0.02MB uploaded (0.00MB deduped)wandb: \ 0.02MB of 0.02MB uploaded (0.00MB deduped)wandb: | 0.02MB of 0.02MB uploaded (0.00MB deduped)wandb: / 0.02MB of 0.02MB uploaded (0.00MB deduped)wandb: - 0.02MB of 0.02MB uploaded (0.00MB deduped)wandb: \ 0.02MB of 0.02MB uploaded (0.00MB deduped)wandb: | 0.02MB of 0.02MB uploaded (0.00MB deduped)wandb:                                                                                
wandb: Run history:
wandb:                 epoch ▁▁▂▂▂▃▃▄▄▄▅▅▅▆▆▇▇▇██
wandb:   trainer/global_step ▁▁▂▂▂▃▃▄▄▄▅▅▅▆▆▇▇▇██
wandb:              val_loss █▅▄▄▃▃▃▂▂▂▂▁▁▁▁▁▁▁▁▁
wandb: 
wandb: Run summary:
wandb:                 epoch 19
wandb:   trainer/global_step 19
wandb:              val_loss 0.05727
wandb: 
wandb: Synced 6 W&B file(s), 0 media file(s), 0 artifact file(s) and 0 other file(s)
wandb: Synced eternal-star-11: https://wandb.ai/paolo-lb-fischer-harvard-university/walk-jump-fork/runs/gn18rrwq
wandb: Find logs at: ./wandb/run-20250305_065707-gn18rrwq/logs/debug.log
wandb: 
[rank: 0] Global seed set to 15855310
Error executing job with overrides: []
Error in call to target 'walkjump.cmdline.utils.instantiate_model_for_sample_mode':
TypeError("instantiate_model_for_sample_mode() got an unexpected keyword argument 'model_type'")
full_key: model

Set the environment variable HYDRA_FULL_ERROR=1 for a complete stack trace.
