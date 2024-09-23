# Electronics E-Commerce Application

This is a full-fledged e-commerce platform developed for selling electronic devices. The application allows users to browse products, add items to the cart, complete purchases, and track their orders. Additionally, it includes a robust admin panel for managing products and orders efficiently.

## Features

### User-Side Functionality
- Browse Products: Users can view a list of available electronic devices, along with detailed information like price, specifications, and availability.
- Product Details: Each product has a dedicated page displaying its description, specifications, reviews, and more.
- Cart and Checkout: Users can add products to the cart, manage quantities, and proceed through the checkout process to place orders.
- Order Tracking: Users can view the status of their placed orders in real time.
- Authentication: JWT-based authentication ensures secure login and registration for customers.
- Responsive Design: Built using Thymeleaf, HTML, and CSS, the UI is fully responsive and mobile-friendly.

### Admin-Side Functionality
- Product Management: Admins can add, update, and delete products. Any changes made are immediately visible to users.
- Order Management: Admins can view customer orders, track their status, and update delivery progress.
  
## Tech Stack

- Backend: Spring Boot, Spring Data JPA
- Frontend: Thymeleaf, HTML, CSS
- Database: MySQL
- Security: JWT-based authentication for secure user login and admin access
- ORM: Hibernate
- Build Tool: Maven
 

## Screenshots
1. Sign Up Screen:  
   The sign-up page allows new users to create an account by providing their name, email, password, and other necessary details. The form includes validation to ensure accurate data entry, enabling users to securely register for the e-commerce platform.

 ![sign1](https://github.com/user-attachments/assets/a3c35cb0-1650-49b7-9986-0dc4106152c3)

![sign2](https://github.com/user-attachments/assets/5b2a4473-18dd-4fa6-ad0c-6f1593fc3620)


2. Login Screen:  
   The login page is where registered users can enter their credentials (email and password) to access their accounts. It includes password validation and JWT-based authentication for secure login. Users also have an option to reset their password if forgotten.

![logIn1](https://github.com/user-attachments/assets/3c45aada-cab3-4c86-8e24-8c0ebb62d399)

If the password is invalid it generates an error message


![logIn2](https://github.com/user-attachments/assets/5fefd769-5bd8-4f81-9dcd-8801589d6145)


3. Home Screen:  
   The home page showcases a list of electronic devices available for purchase. Each product is displayed with its image, price, and basic details. Users can browse the products and click on individual items for more detailed information.


![home222](https://github.com/user-attachments/assets/1a1dbc3a-51a3-4e59-a9a5-446e80c9f133)


4. Cart Screen:  
   The cart page allows users to view the products they have added for purchase. They can modify quantities, remove items, or proceed to checkout. The cart updates in real-time as users make changes, displaying the total price and estimated delivery time.


![afterhome](https://github.com/user-attachments/assets/dad8b8d8-7f2a-47d4-9887-5225664f78ef)


5. Checkout Process
   - Users can review their order summary before finalizing the purchase.
   - Secure payment options are integrated to ensure smooth transactions.
   - After checkout, users can track their orders in the order history section.


![aftercart](https://github.com/user-attachments/assets/99d78b51-47bd-432b-ab9d-8101e3d0eb86)


