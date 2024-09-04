#!/bin/bash
python swebench/versioning/get_versions.py \
    --instances_path swebench/collect/Q3/flask-task-instances.jsonl \
    --retrieval_method build \
    --conda_env sweagent \
    --path_conda /Users/chrisrytting/miniconda3/ \
    --num_workers 1 \
    --output_dir swebench/collect/Q3_versioned/ \
    --testbed ./testbed