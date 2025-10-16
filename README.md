# NixOS Configuration for CTF Environment

Just a simple nix-shell environment tailored for Capture The Flag (CTF) competitions.

It includes a variety of tools commonly used in CTFs, such as **networking**, **web**, **cryptography**, **reversing**, and **forensics tools**.

You can enter the CTF environment by running:
```bash
nix-shell
```

This will drop you into a shell with all the specified tools available.

> [!WARNING]
> I use `zsh` as my default shell, so the environment is configured to use `zsh`. If you prefer another shell, you can modify the `shell` attribute in the `default.nix` file.