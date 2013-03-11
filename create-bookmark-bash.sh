qdbus org.kde.kactivitymanagerd /ActivityManager LinkResourceToActivity "$1"
qdbus org.kde.NepomukStorage /datamanagement setProperty "$1" "http://www.w3.org/1999/02/22-rdf-syntax-ns#type" "http://www.semanticdesktop.org/ontologies/2007/03/22/nfo#Bookmark" shell
