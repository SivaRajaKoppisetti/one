<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · modern e‑commerce</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }
    :root {
      --bg: #f8faff;
      --primary: #0a2540;
      --accent: #0077be;
      --accent-light: #e1f0fa;
      --muted: #5e6f8d;
      --card: #ffffff;
      --shadow: 0 12px 30px rgba(0, 20, 40, 0.06);
      --radius: 20px;
      --container: 1240px;

    }
    html { scroll-behavior: smooth; }
    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
    }
    .container { max-width: var(--container); margin: 0 auto; padding: 0 24px; }

    /* header */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255,255,255,0.85);
      backdrop-filter: blur(14px);
      -webkit-backdrop-filter: blur(14px);
      border-bottom: 1px solid rgba(10,37,64,0.04);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 12px 0;
      flex-wrap: wrap;
    }
    .brand {
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 22px;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .brand .accent { color: var(--accent); }
    .search-wrap {
      flex: 1 1 240px;
      display: flex;
      align-items: center;
      background: white;
      border-radius: 60px;
      padding: 4px 4px 4px 18px;
      border: 1px solid #e6edf7;
      transition: 0.2s;
      box-shadow: 0 2px 8px rgba(0,0,0,0.02);
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 4px 14px rgba(0,119,190,0.10);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      padding: 10px 0;
      font-size: 14px;
      width: 100%;
      outline: none;
    }
    .search-wrap button {
      background: var(--accent);
      border: 0;
      color: white;
      width: 44px;
      height: 44px;
      border-radius: 60px;
      cursor: pointer;
      transition: 0.15s;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }
    .search-wrap button:hover { background: #005f99; }
    .nav-links {
      display: flex;
      align-items: center;
      gap: 4px;
      list-style: none;
    }
    .nav-links a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 500;
      color: var(--primary);
      transition: 0.15s;
      font-size: 14px;
    }
    .nav-links a:hover, .nav-links a:focus {
      background: var(--accent-light);
      color: var(--accent);
    }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .icon-btn {
      background: transparent;
      border: 0;
      font-size: 18px;
      color: var(--primary);
      padding: 8px 12px;
      border-radius: 40px;
      cursor: pointer;
      transition: 0.15s;
    }
    .icon-btn:hover { background: var(--accent-light); color: var(--accent); }
    .cart {
      position: relative;
      display: inline-flex;
      align-items: center;
      gap: 6px;
      padding: 8px 16px 8px 12px;
      border-radius: 40px;
      background: var(--accent-light);
      font-weight: 500;
    }
    .cart-count {
      background: var(--accent);
      color: white;
      font-size: 12px;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 30px;
      display: inline-grid;
      place-items: center;
      margin-left: 2px;
    }
    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 24px;
      cursor: pointer;
      padding: 0 4px;
    }
    #mobileMenu {
      display: none;
      background: white;
      border-top: 1px solid #eef3fc;
      padding: 16px 24px;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 12px;
      padding: 0;
    }
    #mobileMenu ul a {
      font-weight: 500;
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 8px 0;
    }

    /* hero */
    .hero {
      background: linear-gradient(145deg, #0a2540 0%, #1b3b5c 100%);
      color: white;
      padding: 56px 20px;
      border-radius: 0 0 40px 40px;
      margin-bottom: 16px;
      position: relative;
      overflow: hidden;
    }
    .hero::after {
      content: '';
      position: absolute;
      top: -20%;
      right: -5%;
      width: 400px;
      height: 400px;
      background: radial-gradient(circle, rgba(0,119,190,0.20), transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .hero-content { position: relative; z-index: 2; max-width: 680px; }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 38px;
      line-height: 1.2;
      margin-bottom: 12px;
    }
    .hero p {
      font-size: 18px;
      opacity: 0.85;
      margin-bottom: 24px;
    }
    .btn-group { display: flex; flex-wrap: wrap; gap: 14px; }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 30px;
      border-radius: 60px;
      font-weight: 600;
      border: 0;
      cursor: pointer;
      transition: 0.2s;
      font-size: 15px;
    }
    .btn-primary {
      background: var(--accent);
      color: white;
    }
    .btn-primary:hover { background: #005f99; transform: scale(1.01); }
    .btn-outline-light {
      background: transparent;
      border: 2px solid rgba(255,255,255,0.25);
      color: white;
    }
    .btn-outline-light:hover { background: rgba(255,255,255,0.06); border-color: rgba(255,255,255,0.5); }

    /* sections */
    .section { padding: 40px 0; }
    .section-title {
      font-size: 28px;
      font-weight: 600;
      font-family: 'Poppins', sans-serif;
      margin-bottom: 4px;
    }
    .section-sub { color: var(--muted); margin-bottom: 24px; }

    .grid-categories {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 18px;
    }
    .cat-card {
      background: white;
      border-radius: var(--radius);
      padding: 24px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: all 0.2s;
      cursor: pointer;
      border: 1px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent);
      box-shadow: 0 18px 36px rgba(0,20,40,0.08);
    }
    .cat-card .icon { font-size: 32px; color: var(--accent); margin-bottom: 10px; }
    .cat-card h4 { font-size: 15px; font-weight: 600; }

    .grid-products {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: 0.2s;
      display: flex;
      flex-direction: column;
      border: 1px solid #f0f4fd;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 20px 40px rgba(0,20,40,0.08);
    }
    .product-card img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      background: #f5f9ff;
      display: block;
    }
    .product-body { padding: 16px 16px 8px; flex: 1; }
    .product-body h5 { font-weight: 600; font-size: 16px; margin-bottom: 4px; }
    .product-meta { font-size: 13px; color: var(--muted); text-transform: capitalize; margin-bottom: 8px; }
    .price-row {
      display: flex;
      align-items: center;
      flex-wrap: wrap;
      gap: 8px 12px;
      margin: 6px 0 8px;
    }
    .price-current { font-weight: 700; font-size: 18px; }
    .price-old { color: var(--muted); text-decoration: line-through; font-size: 14px; }
    .rating { color: #f7b731; font-size: 14px; }
    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 10px;
      align-items: center;
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: 0;
      padding: 12px 8px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 14px;
      cursor: pointer;
      transition: 0.15s;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .add-btn:hover { background: #123a5e; }
    .wish-btn {
      background: transparent;
      border: 1px solid #e3eaf5;
      padding: 10px 14px;
      border-radius: 40px;
      cursor: pointer;
      transition: 0.15s;
      color: var(--muted);
    }
    .wish-btn:hover { background: #fff0f0; border-color: #ffb3b3; color: #d44; }

    .deal-block {
      display: flex;
      flex-wrap: wrap;
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      margin-top: 10px;
    }
    .deal-block img {
      width: 100%;
      max-width: 380px;
      object-fit: cover;
      min-height: 220px;
      background: #eaf0f9;
    }
    .deal-content { padding: 32px 28px; flex: 1; }
    .timer {
      display: flex;
      gap: 14px;
      margin: 16px 0 20px;
      flex-wrap: wrap;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 14px;
      border-radius: 12px;
      text-align: center;
      min-width: 64px;
    }
    .time-box span { font-size: 20px; font-weight: 700; display: block; }
    .time-box small { font-size: 11px; opacity: 0.7; }
    .discount-badge {
      background: #ff4757;
      color: white;
      padding: 6px 14px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 14px;
    }

    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
    }
    .testimonial-card {
      min-width: 270px;
      background: white;
      padding: 20px;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      flex-shrink: 0;
    }
    .testimonial-card .rating { margin-bottom: 6px; }
    .testimonial-card p { font-size: 15px; margin: 8px 0 12px; color: #1e2f44; }
    .avatar-row {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .avatar-row img {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      object-fit: cover;
      background: #dbe4f0;
    }

    .newsletter-box {
      background: var(--primary);
      color: white;
      border-radius: var(--radius);
      padding: 40px 32px;
      text-align: center;
    }
    .newsletter-box h3 { font-family: 'Poppins', sans-serif; font-size: 26px; margin-bottom: 6px; }
    .newsletter-form {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 10px;
      margin-top: 18px;
    }
    .newsletter-form input {
      padding: 14px 20px;
      border-radius: 60px;
      border: 0;
      width: 300px;
      max-width: 100%;
      font-size: 15px;
    }
    .newsletter-form button {
      background: var(--accent);
      border: 0;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 700;
      color: white;
      cursor: pointer;
      transition: 0.15s;
    }
    .newsletter-form button:hover { background: #005f99; }

    footer {
      padding: 40px 0 20px;
      border-top: 1px solid #edf2fa;
      margin-top: 12px;
      color: var(--muted);
      font-size: 14px;
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 30px;
    }
    .footer-links {
      display: flex;
      gap: 48px;
      flex-wrap: wrap;
    }
    .footer-links div { line-height: 1.9; }
    .footer-links strong { color: var(--primary); display: block; margin-bottom: 4px; }

    @media (max-width: 900px) {
      .nav-links { display: none; }
      .mobile-toggle { display: inline-block; }
      .header-inner { flex-wrap: wrap; }
      .search-wrap { order: 10; flex-basis: 100%; }
      .hero h1 { font-size: 30px; }
    }
    @media (max-width: 640px) {
      .deal-block img { max-width: 100%; }
      .grid-products { grid-template-columns: 1fr 1fr; }
      .grid-categories { grid-template-columns: 1fr 1fr; }
      .hero { padding: 40px 16px; }
      .hero h1 { font-size: 26px; }
    }
    @media (max-width: 440px) {
      .grid-products { grid-template-columns: 1fr; }
      .grid-categories { grid-template-columns: 1fr 1fr; }
    }
    .muted { color: var(--muted); }
    .toast {
      position: fixed;
      bottom: 30px;
      left: 50%;
      transform: translateX(-50%);
      background: #0a2540;
      color: white;
      padding: 14px 28px;
      border-radius: 60px;
      font-weight: 500;
      box-shadow: 0 8px 24px rgba(0,0,0,0.20);
      z-index: 999;
      opacity: 0;
      transition: opacity 0.3s ease, transform 0.2s;
      pointer-events: none;
    }
    .toast.show {
      opacity: 1;
      transform: translateX(-50%) translateY(0);
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#">Nexus<span class="accent">Shop</span></a>
    </div>
    <ul class="nav-links" id="mainNav">
      <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
      <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
      <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
    </ul>
    <div class="header-actions">
      <a class="icon-btn" href="#" aria-label="Account"><i class="far fa-user"></i></a>
      <a class="icon-btn" href="#" aria-label="Wishlist"><i class="far fa-heart"></i></a>
      <a class="cart" href="#" id="cartBtn">
        <i class="fas fa-shopping-cart"></i>
        <span class="cart-count" id="cartCount">0</span>
      </a>
    </div>
  </div>

  <div id="mobileMenu">
    <ul>
      <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
      <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
      <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      <li><a href="#"><i class="fas fa-user"></i> Account</a></li>
    </ul>
  </div>

  <div class="container" style="padding-bottom:12px;">
    <div class="search-wrap" role="search">
      <input type="text" id="searchInput" placeholder="Search for products, brands..." aria-label="Search">
      <button id="searchBtn" aria-label="Submit search"><i class="fas fa-arrow-right"></i></button>
    </div>
  </div>
</header>

<main>
  <section class="hero">
    <div class="container hero-content">
      <h1>New arrivals · winter collection</h1>
      <p>Discover premium electronics, fashion & accessories — curated for you.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNow">Shop now <i class="fas fa-arrow-right"></i></button>
        <button class="btn btn-outline-light" id="exploreDeals">Explore deals</button>
      </div>
    </div>
  </section>

  <section class="section container" id="categories">
    <h2 class="section-title">Shop by category</h2>
    <p class="section-sub">Browse curated collections</p>
    <div class="grid-categories" id="categoriesGrid"></div>
  </section>

  <section class="section container" id="products">
    <h2 class="section-title">Trending now</h2>
    <p class="section-sub">Popular picks based on recent activity</p>
    <div class="grid-products" id="productsGrid"></div>
  </section>

  <section class="section container" id="deals">
    <h2 class="section-title">Flash sale</h2>
    <p class="section-sub">Limited time offers</p>
    <div class="deal-block">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted">Thin, light, and powerful — now with M2 performance.</p>
        <div class="timer" id="dealTimer">
          <div class="time-box"><span id="dealDays">0</span><small>days</small></div>
          <div class="time-box"><span id="dealHours">00</span><small>hrs</small></div>
          <div class="time-box"><span id="dealMinutes">00</span><small>min</small></div>
          <div class="time-box"><span id="dealSeconds">00</span><small>sec</small></div>
        </div>
        <div style="display:flex; align-items:center; gap:16px; flex-wrap:wrap;">
          <span style="font-size:28px; font-weight:700;">$999</span>
          <span style="font-size:16px; color:var(--muted); text-decoration:line-through;">$1,199</span>
          <span class="discount-badge">-17%</span>
        </div>
        <p style="margin:12px 0 0;"><strong>Only 12</strong> items left at this price</p>
        <button class="btn btn-primary" id="buyDeal" style="margin-top:18px;"><i class="fas fa-bolt"></i> Buy now</button>
      </div>
    </div>
  </section>

  <section class="section container" id="testimonials">
    <h2 class="section-title">What customers say</h2>
    <p class="section-sub">Real reviews from verified buyers</p>
    <div class="testimonials-scroll" id="testimonialsContainer">
      <div class="testimonial-card">
        <div class="rating">★★★★★</div>
        <p>"Fast shipping, great quality. The packaging was beautiful!"</p>
        <div class="avatar-row">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava" loading="lazy">
          <div><strong>Ava Martin</strong><div class="muted" style="font-size:13px;">Verified buyer</div></div>
        </div>
      </div>
      <div class="testimonial-card">
        <div class="rating">★★★★☆</div>
        <p>"Easy checkout and the product exceeded expectations. Will order again."</p>
        <div class="avatar-row">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael" loading="lazy">
          <div><strong>Michael Lee</strong><div class="muted" style="font-size:13px;">Frequent buyer</div></div>
        </div>
      </div>
      <div class="testimonial-card">
        <div class="rating">★★★★★</div>
        <p>"Super responsive support and the deals are unbeatable."</p>
        <div class="avatar-row">
          <img src="https://images.unsplash.com/photo-1580489944761-15a19d654956?auto=format&fit=crop&w=80&q=80" alt="Sophia" loading="lazy">
          <div><strong>Sophia Chen</strong><div class="muted" style="font-size:13px;">Top reviewer</div></div>
        </div>
      </div>
    </div>
  </section>

  <section class="section container">
    <div class="newsletter-box">
      <h3>Stay in the loop</h3>
      <p>Subscribe for exclusive offers &amp; first access</p>
      <form class="newsletter-form" id="newsletterForm">
        <input type="email" id="newsletterEmail" placeholder="Your email address" required>
        <button type="submit">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:12px; font-size:15px; display:none;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div>
      <div style="font-weight:700; font-size:20px;">NexusShop</div>
      <p class="muted" style="max-width:260px; margin-top:8px;">Modern e‑commerce demo · built with care.</p>
      <div style="display:flex; gap:12px; margin-top:12px;">
        <a href="#" class="icon-btn"><i class="fab fa-facebook"></i></a>
        <a href="#" class="icon-btn"><i class="fab fa-twitter"></i></a>
        <a href="#" class="icon-btn"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div class="footer-links">
      <div><strong>Company</strong> About<br>Careers<br>Press</div>
      <div><strong>Support</strong> Help Center<br>Shipping &amp; returns<br>Contact</div>
    </div>
  </div>
  <div style="text-align:center; margin-top:28px; color:var(--muted); font-size:13px;">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<div class="toast" id="toast"></div>

<script>
  // ----- data -----
  const CATEGORIES = [
    { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
  ];

  const PRODUCTS = [
    { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
      img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones' },
    { id: 2, title: 'MacBook Pro 14"', price: 1999, oldPrice: null, rating: 4, reviews: 86, badge: null,
      img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
    { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%',
      img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
    { id: 4, title: 'Nike Air Max 270', price: 150, oldPrice: null, rating: 4, reviews: 53, badge: null,
      img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
    { id: 5, title: 'Sony A7 IV Camera', price: 2499, oldPrice: null, rating: 5, reviews: 42, badge: null,
      img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
    { id: 6, title: 'Chanel No. 5', price: 120, oldPrice: null, rating: 5, reviews: 189, badge: null,
      img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
    { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
      img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
    { id: 8, title: 'Sony WH-1000XM5', price: 399, oldPrice: null, rating: 5, reviews: 156, badge: null,
      img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'gadgets' }
  ];

  // ----- state -----
  let cartCount = 0;
  const cartEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
  const productsGrid = document.getElementById('productsGrid');
  const categoriesGrid = document.getElementById('categoriesGrid');
  const toast = document.getElementById('toast');

  function showToast(msg) {
    toast.textContent = msg;
    toast.classList.add('show');
    clearTimeout(toast._hide);
    toast._hide = setTimeout(() => toast.classList.remove('show'), 2200);
  }

  // ----- render -----
  function renderCategories() {
    categoriesGrid.innerHTML = '';
    CATEGORIES.forEach(c => {
      const div = document.createElement('div');
      div.className = 'cat-card';
      div.innerHTML = `<div class="icon"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4>`;
      div.addEventListener('click', () => {
        searchInput.value = c.name;
        filterProducts(c.name);
        document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
      });
      categoriesGrid.appendChild(div);
    });
  }

  function renderProducts(list) {
    productsGrid.innerHTML = '';
    list.forEach(p => {
      const card = document.createElement('div');
      card.className = 'product-card';
      const badgeHtml = p.badge ? `<span style="background:${p.badge.startsWith('-') ? '#ff4757' : '#28a745'}; color:white; padding:4px 12px; border-radius:40px; font-size:12px; font-weight:700; display:inline-block; margin-bottom:6px;">${p.badge}</span>` : '';
      const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
      card.innerHTML = `
        <img src="${p.img}" alt="${p.title}" loading="lazy">
        <div class="product-body">
          <h5>${p.title}</h5>
          <div class="product-meta">${p.category}</div>
          ${badgeHtml}
          <div class="price-row">
            <span class="price-current">$${p.price.toLocaleString()}</span>
            ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
            <span class="rating">${stars} <span style="color:var(--muted); font-size:12px;">(${p.reviews})</span></span>
          </div>
        </div>
        <div class="product-footer">
          <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
          <button class="wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        </div>
      `;
      productsGrid.appendChild(card);
    });

    document.querySelectorAll('.add-btn').forEach(btn => {
      btn.addEventListener('click', () => {
        const id = Number(btn.dataset.id);
        addToCart(id, btn);
      });
    });
  }

  function filterProducts(query) {
    const q = query.trim().toLowerCase();
    if (!q) { renderProducts(PRODUCTS); return; }
    const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
    renderProducts(filtered);
  }

  // ----- cart -----
  function addToCart(id, btn) {
    const product = PRODUCTS.find(p => p.id === id);
    if (!product) return;
    cartCount++;
    cartEl.textContent = cartCount;
    if (btn) {
      const orig = btn.innerHTML;
      btn.innerHTML = '<i class="fas fa-check"></i> Added';
      btn.style.background = '#28a745';
      setTimeout(() => {
        btn.innerHTML = orig;
        btn.style.background = '';
      }, 1200);
    }
    showToast(`🛒 ${product.title} added to cart`);
  }
