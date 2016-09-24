# Jorge’s dotfiles

## Installation

### Using Git

You can clone the repository wherever you want.

```bash
git clone https://github.com/jorgemudry/dotfiles.git
```

To install all the apps and set up your Mac, `cd` into your local `dotfiles` repository and then:

```bash
source install.sh [computer's name]
```

* You need to specify your computer's name. The script will set up your Mac with that name.

The `install.sh` script will update your macos system, install brew, install all the apps set in `brew.sh` script and finally execute the `.macos` script to set up all the defaults configuration for your Mac (including its name.)