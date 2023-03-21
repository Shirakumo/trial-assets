# trial-assets
Assets for the Trial game engine.

You will need to have [Git LFS](https://git-lfs.github.com/) installed in order to access the resources in this repository.

After cloning the repository, run 'git lfs install', 'git lfs fetch' and 'git lfs checkout' to properly set up the data files and tracking.

To use assets from this, you'll probably want to use a local-nickname like `trial-assets` and then use the functions `//` and `asset`:

```commonlisp
(trial-assets:// :heart-in-the-sand)
```

These are analogous to Trial's versions, except that it automatically coerces the name to be within the trial-assets package and prefixing the `pool`, reducing redundancy.
