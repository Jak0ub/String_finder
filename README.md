# 🔎 String Finder (Only for Unix-based systems)

## ⬇️ Download and setup
```bash
wget https://raw.githubusercontent.com/jak0ub/String_finder/main/main.sh
chmod +x main.sh
```

## ✅ SHA256 checksum
```
b0973627f4d6f380237fca4fd61692377f7403c5859fb82b8dcc6eb6809363c2
```

---

## 💬 Description
This tool allows you to **easily search for all files containing a specified string** in a given directory and its subdirectories.

> ℹ️ **Parameters:**  
> - **`-h`** &nbsp; Show help menu  
> - **`-s`** &nbsp; String you want to search for  
> - **`-p /path/to/search`** &nbsp; Path to scan (including subdirectories)

---

## 💡 Example usage
```bash
./main.sh -p / -s "any given string" 
```
- `-p /` — scans the **root directory** `/` and all its subdirectories.
- `-s "any given string"` — specifies the string to search for inside files.
---

