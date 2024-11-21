# SSH

Check for existing keys: `ls -al ~/.ssh`

Generate new key: `ssh-keygen -t ed25519 -C "your_email@example.com"`

Start ssh-agent: `eval "$(ssh-agent -s)"`

Add private key to ssh-agent: `ssh-add ~/.ssh/id_ed25519`

## [Connecting to GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

### Setting up SSH authentication

[Add public key to GitHub account (Browser)](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account?tool=webui#adding-a-new-ssh-key-to-your-account), [(CLI)](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account?tool=cli#adding-a-new-ssh-key-to-your-account)

Test connection: `ssh -T git@github.com`

Switch remote URLs of repo: `git remote set-url origin git@github.com:OWNER/REPOSITORY.git`

### [Signing commits](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification#ssh-commit-signature-verification)

Add public key as signing key (through browser or CLI).

Tell Git about key:

`git config --global gpg.format ssh`, `git config --global user.signingkey /PATH/TO/.SSH/KEY.PUB`

Enable signing commits by default: `git config --global commit.gpgsign true`

Allowed signers: `git config --global gpg.ssh.allowedSignersFile "~/.git_allowed_signers"`

> Format: `your_email@example.com ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFZSV8LQpdNrwUrR4jB8eHnuH6ZKuqJwjdmis1UUBXG1`
