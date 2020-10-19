# Reversing Python Installer Binaries

There are two major tools installed in the toolset: `pyinstxtractor` and
`uncompyle6`. The first one needs to be used to extract the content of the
pyinstaller-created executable, the second is used for decompilation.

Due to bazilion of potential issues, I made the setup pretty straightforward
for a single setup. Yet, it may work for other reversing too, perhaps.

```bash
objcopy --dump-section pydata=pydata.dump botnet_client
python3.5 ~/tools/pyinstxtractor/pyinstxtractor.py pydata.dump
~/.local/bin/uncompyle6 pydata.dump_extracted/botnet_client.pyc
```

