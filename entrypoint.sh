#!/bin/sh

echo "Markdown to Confluence"

python $SCRIPT_DIRECTORY/markdown-to-confluence.py \
  --api_url $CONFLUENCE_API_URL \
  --username $CONFLUENCE_USER \
  --password $CONFLUENCE_PASSWORD \
  --ancestor_id $CONFLUENCE_ANCESTOR_ID \
  --space $CONFLUENCE_SPACE \
  $MARKDOWN_FILE