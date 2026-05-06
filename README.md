# Dotfiles

This repo manages my system configuration using Git + GNU Stow.
- My desktop config is the main source of truth
- My laptop specific config is on the laptop-dotfiles branch 

---

# Clone repo into dotfiles folder

` git clone git@github.com:conorharkin1/Dotfiles.git ~/dotfiles `

# Apply dotfiles
### Go to dotfiles folder and run
`
stow bash config hypr wayland
`

For laptop specific config check out the laptop-dotfiles branch

# Workflow for changes
## Desktop
- Make whatever changes to config in the dotfiles folder
- Commit and push them to master branch

## Laptop
Checkout the laptop-dotfiles branch (probably already is checked out)

```
git fetch origin
git merge origin/master
git push
```