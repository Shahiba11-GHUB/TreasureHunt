
#  TreasureHunt - Online Auction Platform

TreasureHunt is a fully functional online auction system inspired by platforms like eBay. It allows users to list items, place bids, make offers, and complete purchases in a secure and interactive environment. Designed to modernize and digitize a traditional on-site auction experience.

---

##  Key Features

- **User Registration & Login**  
  Secure authentication with hashed passwords and session management.

- **Item Listing**  
  Registered users can post auction items with images, descriptions, prices, and durations.

- **Categorized Browsing**  
  Browse items grouped by categories (e.g., Electronics, Jewelry, Health & Beauty).

- **Live Auctions & Real-Time Bidding**  
  Includes current highest bid display and validation checks.

- **Buy Now & Make an Offer**  
  Instantly purchase or negotiate prices with sellers.

- **Guest Browsing**  
  Guests can view items but must register to buy or sell.

- **Admin Panel**  
  Admins can monitor users, items, and generate reports with analytics.

- **Responsive Design**  
  Mobile and desktop-friendly UI using HTML, CSS, and JavaScript.

- **Watchlist & Cart**  
  Add items to Watchlist or Cart for easy access.

---

##  Video Demo

Check out the working demo of TreasureHunt in action:

- [Click here to watch the video demo](https://kennesawedu-my.sharepoint.com/:v:/g/personal/sshamsha_students_kennesaw_edu/ERcwx7kPq2tHp-8vTbLS04IBY06e2WmRNREV5eccSOY8QQ?e=FEVbB8&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D)


---

## Screenshots

| Home Page | Auction Item Page |
|-----------|-------------------|
| ![Homepage](screenshots/homepage.png) | ![Item Page](screenshots/item-page.png) |

| Admin Panel | Mobile View |
|-------------|-------------|
| ![Admin Panel](screenshots/admin-panel.png) | ![Mobile View](screenshots/mobile-view.png) |

>  Place your screenshots in the `/screenshots/` folder in your repository.

---

##  Technical Stack

- **Frontend**: HTML5, CSS3, JavaScript  
- **Backend**: PHP 7+  
- **Database**: MySQL (via XAMPP) using PDO  
- **File Structure**: All `.php` and `.html` files located in `treasure_hunt/`  
- **Session Management**: PHP `$_SESSION`  
- **Security**:
  - Passwords hashed using `password_hash()`
  - Image uploads are sanitized
  - Admin sessions separated via `$_SESSION['is_admin']`

---

##  Database & Functional Mapping

| Feature | Implementation |
|--------|----------------|
| User Profiles | `Users` table: username, hashed password, address, shipping & card info |
| Guest Access | Guests can only browse items |
| Secure Login | 3 failed login attempts redirect to homepage |
| Auctions | `Items` table: start/end time, description, image |
| Categories | `Categories` table with item-category mapping |
| Bidding | `Bids` table: real-time validation |
| Grouped Listings | Displayed using PHP and JavaScript |
| Buy Now / Offer | Via `buy_now.php`, `make_offer.php` |
| Admin Interface | `AdminPanel.php` with stats, CSV export, and charts |
| Responsive UI | Styled with CSS3 and media queries |

---

##  How to Use

### 1. Run on Local Server
- Launch **XAMPP** and start Apache and MySQL.
- Place the project in the `htdocs/` directory.
- Open your browser and visit:  
  `http://localhost:8080/treasure_hunt/TreasureHunt.php`

### 2. Guest Access
- Browse auctions by category (Electronics, Jewelry, Fashion, etc.)
- View item details via `ViewItem.php`
- Attempting to bid or add to cart prompts registration

### 3. User Registration
- Register via `Register.php`
- On success, redirected to `Login.php`

### 4. Login
- Login with credentials via `Login.php`
- 3 failed attempts redirect to homepage
- Successful login leads to `UserDashboard.php`

### 5. Buy / Bid / Offer
- Navigate to item page via `ViewItem.php`
- Actions:
  - **Place Bid**: Must exceed current bid
  - **Buy Now**: Redirect to `ConfirmPurchase.php`
  - **Make Offer**: Sends message to seller
  - **Add to Watchlist**

### 6. Sell Items
- Use `SellItem.php` (visible after login)
- Submit via `ProcessSellItem.php`
- View your items in `MyListings.php`

### 7. Manage Account
- Profile: `UserDashboard.php`
- Notifications: View offer replies, bid updates
- Update Info: `ChangePassword.php`, `UpdateProfile.php`

### 8. Admin Features
- Login with AdminID
- Access `AdminPanel.php` to:
  - View statistics
  - Browse tables: Users, Items, Bids
  - Export data to CSV
  - Visual analytics with Chart.js

---

##  Folder Structure

```bash

treasure_hunt/
├── index.html
├── TreasureHunt.php
├── register.php
├── login.php
├── logout.php
├── UserDashboard.php
├── AdminLogin.html
├── admin_stats.php
├── category_sales_report.php
├── export_csv.php
├── ConfirmPurchase.php
├── ViewDetails.php
├── submit_bid.php
├── make_offer.php
├── add_to_watchlist.php
├── watchlist.php
├── MyPurchase.php
├── ChangePassword.php
├── process_add_item.php
├── process_ended_auctions.php
├── session_check.php
├── css/
│   └── Style.css
├── js/
│   └── view_items.js
├── assets/
│   └── going-on-a-treasure-hunt-free-photo.jpg
├── README.md
```

