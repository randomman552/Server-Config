# GitLab
GitLab deployment with embedded services split out into their own containers.

This setup relies on traefik to work.

## Environment Variables
The following environment variables need to be provided to this compose setup (via .env or otherwise):

| Variable | Description | Example |
|:-:|:-:|:-:|
| GITLAB_HOME | Path to store GitLab files | /path/to/gitlab |
| GITLAB_HOST | The host gitlab is hosted on | gitlab.example.com |
| GITLAB_SSH_PORT | The SSH port gitlab will use | 22 |
| GITLAB_EMAIL_FROM | The email gitlab sends from | gitlab@example.com |
| GITLAB_EMAIL_TO | Address to handle incoming emails | incoming.gitlab@example.com |
| POSTGRES_USER | User for postgres database | gitlab |
| POSTGRES_PASSWORD | Password for postgres user | V3ryS3curePassw0rd |
| POSTGRES_DB | Database schema for GitLab to use | gitlab |
| SMTP_SERVER | The email server to use | smtp.example.com |
| SMTP_PORT | The port the of the email server to use | 587 |
| SMTP_PASSWORD | Password to authenticate SMTP with | V3ryS3curePassw0rd |
| SMTP_USERNAME | Username to authentication SMTP with | gitlab |