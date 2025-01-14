# CloudHustler File Uploader

The **CloudHustler File Uploader** project automates the process of uploading files to both Google Cloud Storage (GCS) and a public GitHub repository using GitHub Actions.

## Features

- Uploads all `.sh` (shell) files to a Google Cloud Storage bucket.
- Uploads `.md` (Markdown) and image files to a public GitHub repository.
- Uses GitHub repository secrets to securely manage authentication for GCS and GitHub.
  
## Requirements

- A Google Cloud Storage bucket (ensure the appropriate permissions are set for uploading).
- A public GitHub repository for uploading `.md` and image files.
- GitHub Actions configured in the repository.
- Repository secrets configured in GitHub for GCS credentials and other sensitive data.

## Setup

1. **Google Cloud Storage Configuration:**
   - Create a Google Cloud Storage bucket.
   - Set up service account credentials with appropriate permissions for the bucket.
   - Add the service account key as a GitHub secret (e.g., `GCS_CREDENTIALS`).

2. **GitHub Repository Configuration:**
   - Add a secret to the repository for the GCS credentials (e.g., `GCS_CREDENTIALS`).
   - Ensure your repository is set up with the correct GitHub Actions workflows for file upload.

3. **GitHub Actions Workflow:**
   - The project uses GitHub Actions to automate the file upload process. The workflow file is located in `.github/workflows/upload-files.yml`.

## Workflow Details

The GitHub Actions workflow is set to:

- Trigger on `push` events to the repository.
- Identify `.sh` files and upload them to the GCS bucket.
- Identify `.md` and image files (like `.jpg`, `.png`) and upload them to the public GitHub repository.

## Files and Folders

- `.github/workflows/upload-files.yml` – GitHub Actions workflow configuration.
- `upload.sh` – Script used for uploading files to GCS and GitHub.
  
## Usage

1. Push your changes to the repository.
2. GitHub Actions will automatically trigger and upload the appropriate files based on the configuration.

## License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

