#!/bin/bash

TMPDIR=. bibtex2html -nodoc -d -r maigner.bib

cat > maigner-pub.html <<EOF
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Martin Aigner">

    <!-- Le styles -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
  </head>

<body>
EOF

cat maigner.html >> maigner-pub.html

cat >> maigner-pub.html <<EOF
</body>
EOF
