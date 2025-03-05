[rank: 0] Global seed set to 15855310
wandb: Currently logged in as: paolo-lb-fischer-harvard-university (use `wandb login --relogin` to force relogin)
wandb: wandb version 0.19.8 is available!  To upgrade, please run:
wandb:  $ pip install wandb --upgrade
wandb: Tracking run with wandb version 0.12.10
wandb: Syncing run pleasant-puddle-21
wandb: ⭐️ View project at https://wandb.ai/paolo-lb-fischer-harvard-university/walk-jump-fork
wandb: 🚀 View run at https://wandb.ai/paolo-lb-fischer-harvard-university/walk-jump-fork/runs/xbc4dpre
wandb: Run data is saved locally in ./wandb/run-20250305_095436-xbc4dpre
wandb: Run `wandb offline` to turn off syncing.
/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/fabric/plugins/environments/slurm.py:166: PossibleUserWarning: The `srun` command is available on your system but is not used. HINT: If your intention is to run Lightning on SLURM, prepend your python command with `srun` like so: srun python my_experiment.py ...
  rank_zero_warn(
GPU available: True (cuda), used: True
TPU available: False, using: 0 TPU cores
IPU available: False, using: 0 IPUs
HPU available: False, using: 0 HPUs
/n/home10/pafischer/.local/lib/python3.10/site-packages/lightning/pytorch/callbacks/model_checkpoint.py:612: UserWarning: Checkpoint directory checkpoints exists and is not empty.
  rank_zero_warn(f"Checkpoint directory {dirpath} exists and is not empty.")
LOCAL_RANK: 0 - CUDA_VISIBLE_DEVICES: [MIG-c09c7c27-9b0d-56f0-abdb-5d89f9c5b36c]

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
Epoch 0, global step 1: 'val_loss' reached 0.33304 (best 0.33304), saving model to 'checkpoints/epoch=0-step=1-val_loss=0.3330-v2.ckpt' as top 1
Epoch 1, global step 2: 'val_loss' reached 0.22313 (best 0.22313), saving model to 'checkpoints/epoch=1-step=2-val_loss=0.2231-v1.ckpt' as top 2
Epoch 2, global step 3: 'val_loss' reached 0.17752 (best 0.17752), saving model to 'checkpoints/epoch=2-step=3-val_loss=0.1775-v2.ckpt' as top 3
Epoch 3, global step 4: 'val_loss' reached 0.15622 (best 0.15622), saving model to 'checkpoints/epoch=3-step=4-val_loss=0.1562-v1.ckpt' as top 4
Epoch 4, global step 5: 'val_loss' reached 0.14260 (best 0.14260), saving model to 'checkpoints/epoch=4-step=5-val_loss=0.1426-v2.ckpt' as top 5
Epoch 5, global step 6: 'val_loss' reached 0.13190 (best 0.13190), saving model to 'checkpoints/epoch=5-step=6-val_loss=0.1319-v4.ckpt' as top 6
Epoch 6, global step 7: 'val_loss' reached 0.11697 (best 0.11697), saving model to 'checkpoints/epoch=6-step=7-val_loss=0.1170-v2.ckpt' as top 7
Epoch 7, global step 8: 'val_loss' reached 0.10318 (best 0.10318), saving model to 'checkpoints/epoch=7-step=8-val_loss=0.1032-v1.ckpt' as top 8
Epoch 8, global step 9: 'val_loss' reached 0.09329 (best 0.09329), saving model to 'checkpoints/epoch=8-step=9-val_loss=0.0933.ckpt' as top 9
Epoch 9, global step 10: 'val_loss' reached 0.08490 (best 0.08490), saving model to 'checkpoints/epoch=9-step=10-val_loss=0.0849-v2.ckpt' as top 10
Epoch 10, global step 11: 'val_loss' reached 0.07779 (best 0.07779), saving model to 'checkpoints/epoch=10-step=11-val_loss=0.0778-v3.ckpt' as top 11
Epoch 11, global step 12: 'val_loss' reached 0.07341 (best 0.07341), saving model to 'checkpoints/epoch=11-step=12-val_loss=0.0734-v2.ckpt' as top 12
Epoch 12, global step 13: 'val_loss' reached 0.06827 (best 0.06827), saving model to 'checkpoints/epoch=12-step=13-val_loss=0.0683-v7.ckpt' as top 13
Epoch 13, global step 14: 'val_loss' reached 0.06604 (best 0.06604), saving model to 'checkpoints/epoch=13-step=14-val_loss=0.0660-v6.ckpt' as top 14
Epoch 14, global step 15: 'val_loss' reached 0.06357 (best 0.06357), saving model to 'checkpoints/epoch=14-step=15-val_loss=0.0636.ckpt' as top 15
Epoch 15, global step 16: 'val_loss' reached 0.06123 (best 0.06123), saving model to 'checkpoints/epoch=15-step=16-val_loss=0.0612-v1.ckpt' as top 16
Epoch 16, global step 17: 'val_loss' reached 0.06071 (best 0.06071), saving model to 'checkpoints/epoch=16-step=17-val_loss=0.0607-v4.ckpt' as top 17
Epoch 17, global step 18: 'val_loss' reached 0.05917 (best 0.05917), saving model to 'checkpoints/epoch=17-step=18-val_loss=0.0592-v3.ckpt' as top 18
Epoch 18, global step 19: 'val_loss' reached 0.05821 (best 0.05821), saving model to 'checkpoints/epoch=18-step=19-val_loss=0.0582-v1.ckpt' as top 19
Epoch 19, global step 20: 'val_loss' reached 0.05733 (best 0.05733), saving model to 'checkpoints/epoch=19-step=20-val_loss=0.0573-v4.ckpt' as top 20
`Trainer.fit` stopped: `max_epochs=20` reached.
wandb: Waiting for W&B process to finish, PID None... (success).
wandb: - 0.00MB of 0.00MB uploaded (0.00MB deduped)wandb: \ 0.00MB of 0.00MB uploaded (0.00MB deduped)wandb: | 0.00MB of 0.01MB uploaded (0.00MB deduped)wandb: / 0.00MB of 0.02MB uploaded (0.00MB deduped)wandb: - 0.00MB of 0.02MB uploaded (0.00MB deduped)wandb: \ 0.02MB of 0.02MB uploaded (0.00MB deduped)wandb: | 0.02MB of 0.02MB uploaded (0.00MB deduped)wandb: / 0.02MB of 0.02MB uploaded (0.00MB deduped)wandb: - 0.02MB of 0.02MB uploaded (0.00MB deduped)wandb: \ 0.02MB of 0.02MB uploaded (0.00MB deduped)wandb: | 0.02MB of 0.02MB uploaded (0.00MB deduped)wandb: / 0.02MB of 0.02MB uploaded (0.00MB deduped)wandb:                                                                                
wandb: Run history:
wandb:                 epoch ▁▁▂▂▂▃▃▄▄▄▅▅▅▆▆▇▇▇██
wandb:   trainer/global_step ▁▁▂▂▂▃▃▄▄▄▅▅▅▆▆▇▇▇██
wandb:              val_loss █▅▄▄▃▃▃▂▂▂▂▁▁▁▁▁▁▁▁▁
wandb: 
wandb: Run summary:
wandb:                 epoch 19
wandb:   trainer/global_step 19
wandb:              val_loss 0.05733
wandb: 
wandb: Synced 6 W&B file(s), 0 media file(s), 0 artifact file(s) and 0 other file(s)
wandb: Synced pleasant-puddle-21: https://wandb.ai/paolo-lb-fischer-harvard-university/walk-jump-fork/runs/xbc4dpre
wandb: Find logs at: ./wandb/run-20250305_095436-xbc4dpre/logs/debug.log
wandb: 
[rank: 0] Global seed set to 15855310
Sachs, et al:   0%|          | 0/20 [00:00<?, ?it/s]Sachs, et al:  40%|████      | 8/20 [00:00<00:00, 73.42it/s]Sachs, et al:  85%|████████▌ | 17/20 [00:00<00:00, 78.89it/s]                                                             Sachs, et al:   0%|          | 0/20 [00:00<?, ?it/s]Sachs, et al:  45%|████▌     | 9/20 [00:00<00:00, 82.83it/s]Sachs, et al:  90%|█████████ | 18/20 [00:00<00:00, 83.01it/s]                                                             Sachs, et al:   0%|          | 0/20 [00:00<?, ?it/s]Sachs, et al:  45%|████▌     | 9/20 [00:00<00:00, 83.09it/s]Sachs, et al:  90%|█████████ | 18/20 [00:00<00:00, 83.16it/s]                                                             Sachs, et al:   0%|          | 0/20 [00:00<?, ?it/s]Sachs, et al:  45%|████▌     | 9/20 [00:00<00:00, 82.98it/s]Sachs, et al:  90%|█████████ | 18/20 [00:00<00:00, 82.98it/s]                                                             Sachs, et al:   0%|          | 0/20 [00:00<?, ?it/s]Sachs, et al:  45%|████▌     | 9/20 [00:00<00:00, 83.04it/s]Sachs, et al:  90%|█████████ | 18/20 [00:00<00:00, 82.95it/s]                                                             