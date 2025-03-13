# Omnifood Auto Push & Refresh Scripts

This repository includes two automation scripts to streamline your development workflow:

- **auto_push.sh:** Automatically commits and pushes changes from your local repository to GitHub.
- **auto_refresh.py:** Opens your GitHub repository page in a web browser and refreshes it periodically to display the latest updates.

> **Note:** These scripts are designed to be used together or separately. Use them at your own risk and customize as needed.

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Setup Instructions](#setup-instructions)
- [Script Details](#script-details)
  - [auto_push.sh](#auto_pushsh)
  - [auto_refresh.py](#auto_refreshpy)
- [Running the Scripts in Parallel](#running-the-scripts-in-parallel)
- [Considerations and Best Practices](#considerations-and-best-practices)
- [Troubleshooting](#troubleshooting)
- [License](#license)
- [Contact](#contact)

## Overview

The goal of these scripts is to automate the process of:

- **Pushing Code:** Continuously monitoring your local repository, automatically staging, committing (with a timestamped message), and pushing changes to GitHub.
- **Refreshing GitHub:** Automatically refreshing your GitHub repository page so you can see updates in real time.

## Prerequisites

### General Requirements

- **Git:** Ensure Git is installed on your system. ([Download Git](https://git-scm.com/))
- **VSCode:** Or any preferred code editor.
- **GitHub Account:** Access to the repository.

### For auto_push.sh

- **Bash Environment:**
  - On Windows, you can use [Git Bash](https://gitforwindows.org/) or WSL.
  - On Linux/macOS, the default terminal works.
- Familiarity with basic Git commands.

### For auto_refresh.py

- **Python 3.6+**
- **Selenium:** Install via pip:
  ```bash
  pip install selenium
  ```
