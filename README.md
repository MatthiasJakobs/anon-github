# anon-github
Simply use a anonymous github account for paper submissions

# How to
1. Create an anonymous github account
2. Create a ssh keypair, add public key to your new github account
3. Place `id_rsa` and `id_rsa.pub` into this folder
4. Create a file `env` and add your anonymous username like so: `GITHUB_USERNAME=yourusername`
5. Run `run.sh /path/to/your/repo`. Make sure that the repo is uninitialized
6. Inside the container, under `/root/repo`, you will find your repository. You can now `init`, `add`, `commit` and `push` using your anonymous account (vim and nano are shipped alongside the container for convenience)
