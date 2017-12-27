# Daniel's Dotfiles

## What Is This?

Whenever I need to set up my Mac (basically when upgrading macOS) I just launch this scripts in order to install all the things (!) I need
for work and for fun. No more manually installing apps and tools!

### Setting up your Mac

If you did all this you may now follow these install instructions to setup a new Mac.

1. Update macOS to the latest version with the App Store
2. Install Xcode from the App Store, open it and accept the license agreement
3. Install macOS Command Line Tools by running `xcode-select --install`
4. Copy public and private SSH keys to `~/.ssh` and make sure they're set to `600`
5. Clone this repo to `~/.dotfiles`
6. Run `install.sh` to start the installation

Your Mac is now ready to use!