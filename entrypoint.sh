#!/bin/sh

echo "Markdown to Confluence"

python $SCRIPT_DIRECTORY/markdown-to-confluence.py \
  --api_url $CONFLUENCE_API_URL \
  --username $CONFLUENCE_USER \
  --password $CONFLUENCE_PASSWORD \
  --space $CONFLUENCE_SPACE \
  --ancestor_id $CONFLUIENCE_ANCESTOR_ID \
  $MARKDOWN_FILE