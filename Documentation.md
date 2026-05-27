# Project Changelog & Documentation

This document outlines the recent updates and enhancements made to the Rajasthan Procurement system (`Rajasthan_Procurement_NEW_26_may`), based on the recent Git commit history by **Vishav0710**.

## Recent Updates (Reverse Chronological Order)

### 1. `ID and Name SA changes` (Latest Commit)
- **Feature:** Enforced strict input validation for the `Name` and `ID` fields across the Mill, PC, and Warehouse modules for both the State Admin and District portals.
- **Client-Side Changes:** Added HTML5 regex pattern checks and JavaScript alerts to block invalid characters in forms before submission.
- **Server-Side Changes:** Implemented standard API checks using `preg_match` to secure endpoints against invalid inputs. 
- **Bulk Upload Security:** Added validation within the `Bulk*Data.php` files to ensure CSV imports are parsed safely line-by-line, blocking rows that contain illegal characters in IDs (spaces, special chars) or Names.

### 2. `Added Images`
- **Feature:** Updated the background aesthetics for the system's login pages.
- **Changes:** Integrated new slideshow background images (`Raj1.png`, `Raj2.png`, `Raj3.png`) with a rotating 10-second CSS `@keyframes` animation on:
  - Admin Login (`pds_admin_raj/AdminLogin.html`)
  - Main Login (`pds_admin_raj/Login.html`)
  - DFPD Login (`pds_dfpd_raj/Login.html`)
  - District Login (`pds_district_raj/Login.html`)

### 3. `Deleted Extra Files`
- **Maintenance:** Cleaned up the repository by removing redundant or unused files to streamline the codebase and improve repository hygiene.

### 4. `Add Distance_Initial_L2.xlsx via Git LFS`
- **Data Management:** Successfully tracked a large Excel file (`Distance_Initial_L2.xlsx`) using Git Large File Storage (LFS) to handle the data file efficiently without bloating the core Git repository.

### 5. `Remove large xlsx from tracking, update gitignore`
- **Optimization:** Prevented Git from natively tracking large `.xlsx` files, resolving potential push/pull performance issues. Updated the `.gitignore` rules accordingly to ignore the bloated binaries before migrating them to LFS.

### 6. `Rajasthan Commit`
- **Initialization:** Represents an early or foundational commit in this cycle specific to the Rajasthan Procurement portal deployment.

---
*Generated based on recent branch activity.*
