#!/bin/bash

# Corrected script that accurately handles file processing
# The issue was that the -type f option in find prevents directories from being listed.
# The "if [[ -d "$file" ]]" check was redundant and caused unexpected behavior if a file was accidently listed.

find . -maxdepth 1 -type f -print0 | while IFS= read -r -d $'\0' file; do
  echo "Processing: $file"
  # ... (file processing commands) ...
done
# No need for extra directory check because find filters by type.