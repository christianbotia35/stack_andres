Deployment process:
1. Add helm and repo for argocd
2. helm update repo to get latest version
3. deploy in ns argocd after the creation
4. Get password from initial secret and verify access to the UI
5. Argocd is the spine of the whole project here is gonna be hosted all applications for us
6. create an application repo to contain all helm charts of important application
7. add our existing repository https://github.com/afos2000/stack.git