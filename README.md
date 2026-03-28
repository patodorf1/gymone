<p align="center">
  <img src="https://gymoneglobal.com/assets/img/text-color-logo.png" alt="GYM One Logo" width="320">
</p>

<h1 align="center">GYM One — Open Source Gym Management Software</h1>

<p align="center">
  <a href="https://github.com/mayerbalintdev/GYM-One/blob/main/LICENSE">
    <img src="https://img.shields.io/badge/license-Custom-blue.svg" alt="License">
  </a>
  <a href="https://github.com/mayerbalintdev/GYM-One/releases">
    <img src="https://img.shields.io/github/v/release/mayerbalintdev/GYM-One" alt="Latest Release">
  </a>
  <img src="https://img.shields.io/badge/PHP-%3E%3D8.1-777BB4?logo=php&logoColor=white" alt="PHP">
  <img src="https://img.shields.io/badge/MySQL-%3E%3D5.7-4479A1?logo=mysql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/Bootstrap-5-7952B3?logo=bootstrap&logoColor=white" alt="Bootstrap">
</p>

<p align="center">
  <b>Powerful. Open. Built for gyms.</b><br>
  GYM One is a fully-featured, open-source gym management platform designed for fitness centers, personal trainers, and sports clubs of all sizes.
</p>

---

## 📋 Table of Contents

1. [Features](#-features)
2. [Requirements](#-requirements)
3. [Installation](#-installation)
4. [Configuration](#-configuration)
5. [Usage](#-usage)
6. [Admin Panel](#-admin-panel)
7. [TV Showcase](#-tv-showcase)
8. [Database Structure](#-database-structure)
9. [Security](#-security)
10. [Contribution](#-contribution)
11. [Translations](#-translations)
12. [License](#-license)
13. [Contact](#-contact)

---

## ✨ Features

### 👥 Member Management
Easily add, edit, and remove members. Track membership status, expiration dates, attendance history, and personal details — all from one place.

### 🎫 Ticketing System
Manage a wide range of ticket types (day passes, monthly memberships, punch cards, etc.) with configurable pricing, benefits, and validity periods.

### 📅 Class Scheduling
Create and manage class schedules with ease. Members can sign up for classes online, and the system handles capacity limits and cancellations automatically.

### 💳 Payment Tracking
Record and monitor payments, generate financial reports, and get a clear overview of your gym's revenue at any time.

### 🔐 Access Control
Integrate with physical access control systems to manage and log entry/exit events based on active memberships.

### 📺 TV Showcase
Display real-time gym information on reception area televisions — class schedules, announcements, weather, and promotional content with dynamic content rotation.

### 📊 Analytics Dashboard
In-depth analytics on member activity, class attendance, revenue trends, and more — with interactive charts and exportable reports.

### 🔔 Notifications
Automated email notifications for membership renewals, class reminders, payment confirmations, and custom announcements.

### 🌍 Multi-language Support
Built-in internationalization support via Crowdin. Easily add or update translations to reach a global audience.

### 📱 Responsive Design
Built with Bootstrap 5 for a seamless experience across desktops, tablets, and mobile devices.

### 🛠️ Customizable
Modify the codebase, design, and branding to perfectly fit your gym's identity and workflows.

---

## ⚙️ Requirements

Before installing GYM One, make sure your environment meets the following requirements:

| Requirement | Minimum Version |
|---|---|
| PHP | 8.1 or higher |
| MySQL | 5.7 or higher |
| Web Server | Apache / Nginx |
| Composer | Latest stable |
| Node.js *(optional)* | 18+ for asset compilation |

> **Note:** PHP 8.1+ is strongly recommended. Full compatibility with PHP 7.4 is no longer guaranteed in newer releases.

---

## 🚀 Installation

### ⚠️ Use the Official GYM One Installer

To properly install and configure GYM One, **always use the official installer repository**:

👉 **[GYM One Installer Repository](https://github.com/mayerbalintdev/GYM-One-Installer)**

The installer handles:
- Dependency installation via Composer
- Database setup and migrations
- Environment configuration
- File permission setup
- Access to automatic updates

> Manual installation without the installer is not recommended and may result in misconfiguration.

---

## 🔧 Configuration

After installation, the following settings can be configured from the Admin Panel or the `.env` / config files:

### Email Notifications
Set up SMTP credentials to enable automated emails for:
- Membership renewal reminders
- Class sign-up confirmations
- Payment receipts
- Custom announcements

### Payment Gateway
Configure your preferred payment integration for accepting online transactions from members.

### Access Control
Connect GYM One to your physical access control hardware via the built-in integration layer.

### TV Showcase
Configure which content blocks appear on reception displays, set rotation intervals, and customize the visual theme to match your brand.

---

## 🖥️ Usage

### Dashboard

After logging in, the dashboard provides a real-time overview of:
- Active member count and recent sign-ups
- Today's class schedule and attendance
- Upcoming membership expirations
- Revenue summary and recent transactions

### Member Workflow

1. Register a new member with their personal details
2. Assign a ticket or membership type
3. Process payment and generate a receipt
4. Member gains access — tracked via the access control module

---

## 🛡️ Admin Panel

The admin panel is a comprehensive management interface for overseeing all gym operations:

- **User & Role Management** — Manage staff accounts with role-based access controls (admin, receptionist, trainer, etc.)
- **Member Management** — Full CRUD for members, photos, notes, and status
- **Ticket & Pricing Management** — Define and adjust ticket types, prices, and validity
- **Class Management** — Create recurring or one-off classes, assign trainers, set capacity limits
- **Reports & Analytics** — Membership sales, attendance rates, revenue breakdowns
- **System Settings** — Operating hours, branding, notification templates, integrations
- **Audit Log** — Track admin actions for accountability and troubleshooting

---

## 📺 TV Showcase

GYM One includes a dedicated TV display module designed for reception area screens. Features include:

- Real-time class schedule display
- Live weather widget
- Scrolling announcements and promotional banners
- Dynamic content rotation with configurable timing
- Clean, fullscreen layout optimized for large displays

Configure the TV Showcase from the Admin Panel under **Settings → TV Display**.

---

## 🗄️ Database Structure

GYM One uses a relational MySQL database. Key tables include:

| Table | Description |
|---|---|
| `members` | Member profiles and status |
| `tickets` | Ticket types and configurations |
| `memberships` | Active and historical member-ticket assignments |
| `classes` | Class definitions and schedules |
| `class_signups` | Member registrations for classes |
| `payments` | Payment records and transaction history |
| `access_log` | Entry/exit events from access control |
| `users` | Admin and staff accounts |
| `settings` | Application-wide configuration values |

Full schema documentation is available in the [`/docs`](./docs) directory.

---

## 🔒 Security

Security is taken seriously in GYM One. We encourage all deployers to:

- Keep the Software and its dependencies up to date
- Use HTTPS for all public-facing deployments
- Restrict database access to localhost or trusted IPs only
- Store sensitive credentials in environment variables, not in code
- Perform regular database backups

To report a security vulnerability, please contact us **privately** at **center@gymoneglobal.com** rather than opening a public GitHub issue.

---

## 🤝 Contribution

We welcome and appreciate contributions from the community! To get started:

1. **Fork** the repository
2. **Create a branch** for your feature or bug fix: `git checkout -b feature/my-feature`
3. **Commit** your changes with clear, descriptive messages
4. **Push** to your fork and open a **Pull Request**
5. Wait for review — maintainers aim to respond within a few business days

Please read the [Code of Conduct](./CODE_OF_CONDUCT.md) and [License](./LICENSE) before contributing.

### Reporting Bugs

Found a bug? Open a [GitHub Issue](https://github.com/mayerbalintdev/GYM-One/issues) with:
- Steps to reproduce
- Expected vs. actual behavior
- Your environment (PHP version, OS, browser)

---

## 🌍 Translations

GYM One uses **Crowdin** for community-driven translations. Help us make GYM One accessible to more people around the world:

👉 [Translate GYM One on Crowdin](https://crowdin.com)

All translation contributions are welcome — even partial ones!

---

## 📄 License

GYM One is open-source software licensed under the **GYM One Custom License**.

You are free to use, modify, and distribute this software, as long as:
- The original license is included with all distributions
- Proper attribution to GYM One is maintained

See the full [LICENSE](./LICENSE) file for details.

---

## 📬 Contact

Have questions, suggestions, or feedback? We'd love to hear from you:

- **Email:** [center@gymoneglobal.com](mailto:center@gymoneglobal.com)
- **Website:** [https://www.gymoneglobal.com](https://www.gymoneglobal.com)
- **GitHub:** [Mayer Bálint](https://github.com/mayerbalintdev)
- **Press:** [press@gymoneglobal.com](mailto:press@gymoneglobal.com)

---

<p align="center">
  Thank you for choosing GYM One! 💪<br>
  <i>Built with passion for the fitness community.</i>
</p>