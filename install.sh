sudo apt update

sudo apt install direnv
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

echo "" >> ~/.bashrc
echo "# Direnv" >> ~/.bashrc
echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
echo "" >> ~/.bashrc

echo "# Activate" >> ~/.bashrc
echo "function activate {" >> ~/.bashrc
echo "    if [[ -d .env ]]; then" >> ~/.bashrc
echo "        source .env/bin/activate" >> ~/.bashrc
echo "    elif [[ -d .venv ]]; then" >> ~/.bashrc
echo "        source .venv/bin/activate" >> ~/.bashrc
echo "    elif [[ -d venv ]]; then" >> ~/.bashrc
echo "        source venv/bin/activate" >> ~/.bashrc
echo "    elif [[ -d build/virtualenv ]]; then" >> ~/.bashrc
echo "        source build/virtualenv/bin/activate" >> ~/.bashrc
echo "    fi" >> ~/.bashrc
echo "}" >> ~/.bashrc
echo "" >> ~/.bashrc