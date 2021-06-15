#!/bin/sh

echo "Markdown to Confluence"

echo "Going to add $MARKDOWN_FILE to $CONFLUENCE_SPACE via url $CONFLUENCE_API_URL"
python $SCRIPT_DIRECTORY/markdown-to-confluence.py \
  --api_url $CONFLUENCE_API_URL \
  --username $CONFLUENCE_USER \
  --password $CONFLUENCE_PASSWORD \
  --ancestor_id $CONFLUENCE_ANCESTOR_ID \
  --space $CONFLUENCE_SPACE \
  $MARKDOWN_FILE