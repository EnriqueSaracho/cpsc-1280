#!/usr/bin/env python3
import sys
import os
import stat

def parsePermissions(permStr):
    mode = 0
    mapping = {'r': 4, 'w': 2, 'x': 1, '-': 0}
    permStr = permStr[1:]

    for i in range(len(permStr)):
        c = permStr[i]
        mode += mapping[c] << (8 - (i // 3) * 3)
    return mode

def processListing(destDir):
    currentDir = destDir
    inodeMap = {}

    # in case the destination directory doesn't exist
    if not os.path.exists(destDir):
        os.makedirs(destDir)

    for line in sys.stdin:
        line = line.strip()

        # for headers
        if line.endswith(':'):
            if line != '.':
                currentDir = os.path.join(destDir, line[2:-1])
                if not os.path.exists(currentDir):
                    os.makedirs(currentDir)
            continue

        # "total" lines
        if line.startswith('total'):
            continue

        # empty lines
        if not line:
            continue

        parts = line.split()
        if len(parts) < 9:
            continue

        inode = parts[0]
        perms = parts[1]
        filename = ' '.join(parts[8:])

        fullPath = os.path.join(currentDir, filename)

        # for directories
        if perms.startswith('d'):
            if not os.path.exists(fullPath):
                os.makedirs(fullPath)
            os.chmod(fullPath, parsePermissions(perms))

        # for regular files
        else:
            # hard link
            if inode in inodeMap:
                os.link(inodeMap[inode], fullPath)
            else:
                with open(fullPath, 'w') as f:
                    f.write("Test file")
                inodeMap[inode] = fullPath

            # permissions
            os.chmod(fullPath, parsePermissions(perms))

def main():
    if len(sys.argv) != 2:
        print("Usage: script.py destination_directory")
        sys.exit(1)

    destDir = sys.argv[1]
    processListing(destDir)

if __name__ == "__main__":
    main()
