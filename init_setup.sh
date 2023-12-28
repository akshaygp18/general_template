echo [$(date)]: "START"
export _VERSION_=3.7
echo [$(date)]: "creating environment with python ${_VERSION_}"
conda create --prefix ./env python=${_VERSION_} -y
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "install requirements"
pip install -r requirements.txt
echo [$(date)]: "installing pytorch 1.8.1"
pip install torch==2.0.0 --index-url https://download.pytorch.org/whl/cu118
echo [$(date)]: "END"
# to remove everything -
# rm -rf env/ .gitignore conda.yaml README.md .git/