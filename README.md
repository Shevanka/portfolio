# Shevanka Kurniawan — Technical Portfolio & Engineering Dossier

[![Live Demo](https://img.shields.io/badge/Live%20Demo-GitHub%20Pages-blue?style=flat-square&logo=github)](https://shevanka.github.io/portfolio/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](LICENSE)
[![Institution: PENS](https://img.shields.io/badge/Institution-PENS%20Surabaya-red?style=flat-square)](https://www.pens.ac.id)
[![Target: KRTI 2027](https://img.shields.io/badge/Target-KRTI%20PENS%20EFRISA-darkgreen?style=flat-square)](#)

Interactive web portfolio and 6-page editorial engineering dossier of **Shevanka Bagus Dwiyudi Kurniawan**, D4 Informatics Engineering student at **Politeknik Elektronika Negeri Surabaya (PENS)**.

The dossier bridges low-level systems programming, deterministic network protocol engineering, and defensive cybersecurity through verifiable empirical test suites, threat models, and architectural blueprints.

---

## 📑 Dossier Structure

The portfolio is structured as a 6-page engineering dossier designed for both high-fidelity web viewing and pixel-perfect A4 PDF export:

| Section | Topic | Key Focus & Deliverables |
|---|---|---|
| **Page 01** | **Executive Profile** | Candidate positioning for KRTI PENS EFRISA Division, academic specs (GPA: 3.62 / 4.00), coordinates matrix, and core competencies. |
| **Page 02** | **Technical Skills Matrix** | 4-Domain capability matrix covering Systems/C, Networking (RFCs), Security (OWASP/AD), and Toolchains without arbitrary percentage bars. |
| **Page 03** | **Featured Case 01: API Security** | Vulnerability isolation, 12-point automated regression test suite, and BOLA/IDOR (OWASP API1:2023 / CWE-639) remediation on Node.js REST API. |
| **Page 04** | **Featured Case 02: Network Engineering** | RFC 791/1071/1624 one's complement checksum algorithms, TTL decrement deltas, CoPP / RTBH mitigation, and 88.28% VLSM efficiency. |
| **Page 05** | **Featured Case 03: Identity & Hardening** | VirtualBox host-only Windows Server 2022 domain, Tiered OU model (T0/T1/T2), LAPS, SMB signing, and LLMNR deprecation. |
| **Page 06** | **Software Systems & Honors** | Embedded Lua 5.4 C runtime, Drift/Riverpod Budget Tracker, SI-KAYA PWA, BIONIX 3rd Place, and campus leadership records. |

---

## 🔬 Featured Case Studies

### 1. [Student Project API Security Research & BOLA Audit](https://github.com/Shevanka/student-project-api)
- **Threat Class:** OWASP API1:2023 · CWE-639 / CWE-284 (CVSS v3.1: 7.5 High).
- **Core Challenge:** Flaw in `GET /api/notes/:id` validating JWT authentication but neglecting resource-level authorization checks.
- **Remediation:** Object-level policy enforcement (`note.user_id === req.user.id || req.user.role === 'admin'`) verified with Supertest end-to-end regression tests (12/12 passing in 218 ms).

### 2. [Computer Network Concepts & Protocol Simulation](https://github.com/Shevanka/konsep-jaringan)
- **Standards:** RFC 791, RFC 1071, RFC 1624.
- **Core Algorithms:** 16-bit one's complement addition over IPv4 header frames and single-cycle O(1) incremental checksum updates (`HC' = ~(~HC + ~m + m')`) after TTL decrement.
- **Network Design:** Hierarchical Variable Length Subnet Masking (VLSM) from `/12` to `/30` achieving **88.28% address utilization**.

### 3. [Windows Domain Security & Hardening Lab](https://github.com/Shevanka/windows-domain-security-lab)
- **Infrastructure:** Windows Server 2022 AD DS Domain Controller + Windows 11 Enterprise in an isolated VirtualBox host-only subnet (`192.168.56.0/24`).
- **Defensive Hardening:** Tiered OU architecture (Tier-0, Tier-1, Tier-2), LAPS dynamic local admin passwords, broadcast poisoning mitigation (LLMNR/NBT-NS disabled), SMBv1 removal, and PowerShell ScriptBlock logging (Event ID 4104).

---

## 🛠️ Technology Stack

- **Markup & Styling:** Semantic HTML5, CSS3 Custom Properties (Modern Grid, Flexbox, Print CSS `@media print`, SVG Graphics).
- **Zero Heavy Dependencies:** Native CSS styling, instant loading with zero runtime overhead or external framework bundle baggage.
- **Print / PDF Engine:** Tailored A4 print layout stylesheet compatible with Google Chrome Headless and `wkhtmltopdf`.

---

## 🚀 Quick Start & Local Preview

Clone the repository:

```bash
git clone https://github.com/Shevanka/portfolio.git
cd portfolio
```

### Preview Locally

Since this is a lightweight static web project, you can open `index.html` directly in your browser:

```bash
# On Windows (PowerShell)
Start-Process index.html

# Or run with Python local HTTP server
python -m http.server 8000
```

Then visit [http://localhost:8000](http://localhost:8000).

---

## 🖨️ PDF Export

To generate or re-export the PDF dossier (`Portfolio.pdf`):

### Option A: Via Browser
1. Open `index.html` in Chrome / Chromium.
2. Click the **"Print / PDF Export"** button in the top navigation bar (or press `Ctrl + P`).
3. Set **Destination** to `Save as PDF`.
4. Ensure **Layout** is set to `Portrait`, **Paper size** to `A4`, and **Margins** to `None` (or `Default` with Background graphics enabled).

### Option B: Automated Headless Chrome Script
Run the included build script:

```bash
# Bash / Git Bash
./build.sh
```

---

## 📁 Repository Structure

```text
portfolio/
├── assets/                          # Architectural SVGs, audit screenshots & profile photo
│   ├── 00-npm-test.png
│   ├── 01-auth-login-alice.png
│   ├── 02-bola-idor-exploit-note42.png
│   ├── 03-put-forbidden-control.png
│   ├── 04a-rbac-admin-users.png
│   ├── 04b-rbac-admin-users.png
│   ├── 05-automated-test-run.png
│   ├── diagram-active-directory.svg
│   ├── diagram-network-pipeline.svg
│   └── shevanka-profile.png
├── .gitignore                       # Git ignore patterns for OS & editors
├── build.sh                         # Headless Chrome PDF export script
├── index.html                       # Main portfolio markup & dossier pages (Pages 01–06)
├── LICENSE                          # MIT License
├── Portfolio.pdf                    # Pre-rendered 6-page A4 engineering dossier PDF
├── README.md                        # Project documentation
└── style.css                        # Dossier styles, grid systems, and print media rules
```

---

## 📬 Contact & Verification

- **Author:** Shevanka Bagus Dwiyudi Kurniawan
- **Institution:** Politeknik Elektronika Negeri Surabaya (PENS)
- **Major:** D4 Informatics Engineering (Teknik Informatika)
- **GitHub:** [@Shevanka](https://github.com/Shevanka)
- **LinkedIn:** [shevanka-kurniawan](https://linkedin.com/in/shevanka-kurniawan)
- **Email:** [shevanka.kurniawan@gmail.com](mailto:shevanka.kurniawan@gmail.com)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).
