{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

pkgs.mkShell {

  # I use zsh as my default shell
  # So I need to set it explicitly
  # To get all the zsh features
  shell = "${pkgs.zsh}/bin/zsh";
  
  packages = with pkgs; [
    # --------- Networking ----------
    curl
    nmap
    wget
    wireshark

    # --- Exploitation & Scanning ---
    nikto
    sqlmap

    # ------------ Web --------------
    burpsuite
    ffuf
    gobuster
    subfinder

    # ---- Cracking & Reversing -----
    binwalk
    exiftool
    gdb
    ghidra
    hashcat
    john
    pngcheck
    radare2
    steghide
    zsteg

    # -------- Forensics -----------
    autopsy

    # --------- Utilities ----------
    wordlists
  ];
  
  shellHook = ''
    echo "================================================="
    echo "|             CTF Shell Environment             |"
    echo "================================================="
    
    # Source my zsh configuration
    if [ -f "$HOME/.zshrc" ]; then
      exec zsh -c "source $HOME/.zshrc; exec zsh"
    fi
  '';
}
