# 📦 extract.sh – Universal Archive Extractor

This Bash script provides an easy way to extract multiple archive formats automatically based on file extension.

---

## 🧰 Supported Formats

- `.tar.bz2`, `.tar.gz`, `.tar`, `.tbz2`, `.tgz`
- `.gz`, `.bz2`, `.Z`
- `.zip`, `.rar`, `.jar`

> ⚠️ Note: `rar` requires `rar` to be installed. `jar` requires `JDK`.

---

## 📄 Usage

Make the script executable:

```bash
chmod +x extract.sh
```
Example:
```
./extract.sh file1.zip file2.tar.gz file3.rar
```

