#!/usr/bin/env bash

# If you'd like to parallelize, do the following:
# * Create a .env file in this folder
# * Declare GITHUB_TOKENS=token1,token2,token3...
export GITHUB_TOKENS=$(gh auth token) 

python get_tasks_pipeline.py \
    --repos 'astropy/astropy', \
            'django/django', \
            'pallets/flask', \
            'matplotlib/matplotlib', \
            'pylint-dev/pylint', \
            'Pytest-dev/pytest', \
            'psf/requests', \
            'scikit-learn/scikit-learn', \
            'mwaskom/seaborn', \
            'sphinx-doc/sphinx', \
            'sympy/sympy', \
            'pydata/xarray', \
    --path_prs 'Q3/' \
    --path_tasks 'Q3/' \
    --cutoff_date '20240701'
    # --path_prs '<path to folder to save PRs to>' \
    # --path_tasks '<path to folder to save tasks to>'