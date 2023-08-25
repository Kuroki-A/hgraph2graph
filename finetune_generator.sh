
#!/bin/bash

#$ -q g.node.q
#$ -pe threads 1
#$ -V
#$ -N q_hgraph2graph
#$ -cwd

export CUDA_VISIBLE_DEVICES=0

python finetune_generator.py --train active_smiles.csv --vocab data/chembl/vocab.txt --generative_model ckpt/chembl-pretrained/model.ckpt --chemprop_model ../JETA_230817/models_c/ --nsample 200 --epoch 5 --threshold 6 --save_dir ckpt/finetune
