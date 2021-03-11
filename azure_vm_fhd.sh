sudo apt-get update

sudo apt install build-essential

if [ ! -d ~/repos ]; then
    sudo mkdir -m 777 ~/repos
fi

# scripts in pipeline_scripts expect this directory to exist
if [ ! -d ~/logs ]; then
    sudo mkdir -m 777 ~/logs
fi

cd repos

git clone https://github.com/EoRImaging/FHD.git

git clone https://github.com/EoRImaging/fhdps_utils.git

if [ ! -d pipeline_scripts ]; then
    git clone https://github.com/EoRImaging/pipeline_scripts.git
fi