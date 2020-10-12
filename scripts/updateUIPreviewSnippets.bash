#!/bin/bash

# create if needed and update code snippets for ui's preview

mkdir -p $HOME/Library/Developer/Xcode/UserData/CodeSnippets
cp -R ../PreviewCodeSnippets/. $HOME/Library/Developer/Xcode/UserData/CodeSnippets/

# create if needed and update file's templates for ui's preview

mkdir -p $HOME/Library/Developer/Xcode/Templates
cp -R ../PreviewFileTemplates/UI\ Preview\ Supported\ Templates  $HOME/Library/Developer/Xcode/Templates/
