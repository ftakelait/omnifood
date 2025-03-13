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
- **WebDriver:** Download and install the appropriate WebDriver for your browser (e.g., [ChromeDriver](https://sites.google.com/chromium.org/driver/) for Google Chrome) and ensure it’s in your PATH.

## Setup Instructions

1. **Clone the Repository:**

   ```bash
   git clone git@github.com:ftakelait/omnifood.git
   cd omnifood
   ```

2. **Place the Scripts:**
   Ensure that `auto_push.sh` and `auto_refresh.py` are in the repository root (or your preferred directory).

## Script Details

### auto_push.sh

This Bash script continuously monitors your repository for changes. When changes are detected, it stages all files, commits them with a timestamp, and pushes to the specified branch on GitHub.

**Key Features:**

- Monitors the repository directory.
- Uses `git add .` to stage changes.
- Checks for changes using `git diff-index`.
- Commits with a message that includes the current date and time.
- Pushes changes to a specific branch (update the branch name as necessary).
- Waits for 60 seconds before repeating.

**How to Run:**

1. Open a Bash terminal (e.g., Git Bash).
2. Navigate to your repository directory:
   ```bash
   cd /c/Users/ftake/Documents/GitHub/omnifood
   ```
3. Make the script executable:
   ```bash
   chmod +x auto_push.sh
   ```
4. Run the script:
   ```bash
   ./auto_push.sh
   ```
5. Stop the script anytime with `Ctrl+C`.

### auto_refresh.py

This Python script uses Selenium to open your GitHub repository page in a web browser and refresh it periodically (default is every 60 seconds).

**Key Features:**

- Launches a web browser using Selenium.
- Opens the GitHub repository page.
- Refreshes the page every 60 seconds.
- Runs indefinitely until stopped.

**How to Run:**

1. Ensure you have Selenium installed:
   ```bash
   pip install selenium
   ```
2. Verify that your WebDriver (e.g., ChromeDriver) is installed and in your PATH.
3. Run the script:
   ```bash
   python auto_refresh.py
   ```
4. Stop the script anytime with `Ctrl+C`.

## Running the Scripts in Parallel

You can run both scripts concurrently using one of the following options:

### Option 1: Separate Terminals

- Open one terminal and run:
  ```bash
  ./auto_push.sh
  ```
- Open a second terminal and run:
  ```bash
  python auto_refresh.py
  ```

### Option 2: Master Script

Create a master shell script (e.g., `run_both.sh`) that launches both scripts in parallel:

```bash
#!/bin/bash
# Change to your repository directory
cd /c/Users/ftake/Documents/GitHub/omnifood

# Start auto_push.sh in the background
./auto_push.sh &

# Start auto_refresh.py in the background
python auto_refresh.py &

# Wait for both processes (use Ctrl+C to stop them)
wait
```

Make it executable:

```bash
chmod +x run_both.sh
```

Run it:

```bash
./run_both.sh
```

## Considerations and Best Practices

- **Commit Clutter:** Automatic commits for every change can result in many small commits. Adjust the commit criteria or message format as needed.
- **Branch Name:** Verify the branch name (e.g., `main` or `master`) in your scripts.
- **Testing:** Test these scripts in a controlled environment before deploying them in your main workflow.
- **Security:** Use caution when automatically pushing changes. Ensure no sensitive data is unintentionally pushed.
- **Logging:** Consider redirecting output to log files for troubleshooting and review.

## Troubleshooting

### auto_push.sh

- **No Changes Detected:** Ensure there are unstaged changes and that the repository path is correct.
- **Git Errors:** Verify your Git configuration and remote repository URL.

### auto_refresh.py

- **Browser Does Not Launch:** Confirm that Selenium and your WebDriver are installed correctly.
- **WebDriver Issues:** Check that your WebDriver is in your system’s PATH.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or issues, please contact [Fouzi Takelait](mailto:ftakelait@gmail.com).

---

Happy coding and automation!
