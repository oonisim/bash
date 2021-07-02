# Bash examples 

## Jupyter Bash kernei

* [bash kernel](https://pypi.org/project/bash_kernel)
>A Jupyter kernel for bash. This requires IPython 3.

## Virtual Environment
Python venv 
1. Run ./setup.sh.
```
./setup.sh
```

2. Activate the venv
```
source bashvenv/bin/activate
```

3. Install python packages
```
pip3 install -U -r requirements.txt
python3 -m bash_kernel.install
```

4. Activate jupyter bash kernel
```
jupyter notebook
#jupyter console --kernel bash
```