sudo apt update

sudo apt install direnv

echo "# Direnv" >> ~/.bashrc
echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
echo "" >> ~/.bashrc