sudo apt-get update

sudo apt install build-essential

if [ ! -d ~/repos ]; then
    sudo mkdir -m 777 ~/repos
fi

# scripts in pipeline_scripts expect this directory to exist
if [ ! -d ~/logs ]; then
    sudo mkdir -m 777 ~/logs
fi

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

bash Miniconda3-latest-Linux-x86_64.sh

cd repos

if [ ! -d pipeline_scripts ]; then
    git clone https://github.com/EoRImaging/pipeline_scripts.git
fi

git clone https://github.com/mwilensky768/SSINS.git

git clone https://github.com/RadioAstronomySoftwareGroup/pyuvdata.git

echo 'export PATH=$PATH:$HOME/repos/pipeline_scripts/bash_scripts/azure' >> ~/.bashrc