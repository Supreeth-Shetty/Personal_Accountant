echo [$(date)]: "START"
echo [$(date)]: "creating environment"
conda create --prefix ./env python=3.7 -y
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "installing requirements"
pip install -r requirements.txt
echo [$(date)]: "export conda environment"
conda env export > conda.yaml
echo [$(date)]: "add env to gitignore"
echo "env/" > .gitignore
# echo [$(date)]: "installing setup.py"
# pip install -e .
# pip freeze
echo [$(date)]: "initiall setup is done!!"