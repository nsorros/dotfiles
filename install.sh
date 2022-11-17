apt update

apt install direnv

echo "# Direnv" >> ~/.bashrc
echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
echo "" >> ~/.bashrc