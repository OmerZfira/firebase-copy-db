# firebase-copy-db
Script to copy entire database from one firebase project to another
Useful when using different "firebase-projects" to simulate different enviorenments (staging, prod, etc), and need to copy the database from one env to the other 

# Usage
`./firebase-copy-db.sh [-h] <source_project> <target_project>`

Options:
        -h  show this help text

Uses /tmp/fb-db-copy.json as temp I/O file
