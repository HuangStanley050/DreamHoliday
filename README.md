# Dream Holiday App

# **R7** _Identification of the problem you are trying to solve by building this particular marketplace app._

As with many marketplace applications, we are always faced with the same issues such as generating demands, creating supplies and increase matching probabilities between buys and sellers. With this DreamHoliday Rails application I am trying to solve these issues and provide sound solutions.

Generating demands is usually the first step in getting your products/marketplace app launched. We must do extensive market research and understand our audiences and what they need. After understanding the basic requirements we can then launch a campaign to make people more aware of the new products that we are selling.

The issue Creating supplies will also need to be solved before the application can be launched. Having a reliable supplier make the whole difference in how successful the business can be. Once you have successfully created the demand you must provided the supplies to grow the business and retain clients.

Matching buyers and sellers is another major issue that will need to be solved. The higher the match rate the more that it will benefit the business and both buyers and sellers.

# **R8** _Why is it a problem that needs solving?_

The problem that faced by marketplaces applications are numerous but with the right approaches we are able to clearly define the problems and come up with solutions to solve them. For my application the main issue that we are presented here is how to effectively build a platform that will benefit both the sellers and normal users. Solving this problem allow a more robust experience and will spark joy for both parties in terms of using the applications.

# **R9** _A link (URL) to your deployed app (i.e. website)_

> Link to live site: <https://frightful-hollow-65298.herokuapp.com/>

# **R10** _A link to your GitHub repository (repo)._

> Link to github repo: <https://github.com/HuangStanley050/DreamHoliday>

# **R11** _Description of your marketplace app (website), including:_

1. Purpose

The purpose of this application is to allow easy access for 2 way market place for both sellers and buyers. This application will allow people to sell and buy their own generated holidays.

2. Functionality

- Login/Register --->Authentication
- Uploading images to S3
- Processing payment with Stripe API
- Storing information in Postgres database
- Authorization and route guards for sensitive information
- Sorting price for the product catalogs
- CRUD ability for vendors

3. SiteMap

![ERD](/docs/siteMap.jpg)

4. **ScreenShots**

_Landing page_
![Landing](/docs/LandingPage.jpg)

_Catalog page_
![Cata](/docs/CatelogsPage.jpg)

_Purchase history page_
![History](/docs/PurchaseHistoryPage.jpg)

_Purchase Page_
![Purchase](/docs/PurchasePage.jpg)

_Vendor edit page_
![Edit](/docs/VendorCreateAndEditPage.jpg)

_Vendor dashboard_
![Dash](/docs/VendorDashBoard.jpg)

5. **Target Audience**

The main audiences that the application is targeting are people that want to go to amazing holidays with ease to use dashboard, simple and clean user interfaces along with people that might later on become interested to sell holidays to other users.

6. **Tech Stack**

   . _Ruby_

   . _Ruby on Rails_

   . _Bootstrap_

   . _Postgres_

   . _Heroku_

   . _Stripe API_

# **R12** _User stories for your app_

  <table style="width:100%">
    <tr>
      <th>User Stories</th>
      <th>Acceptance Criteria</th>
    </tr>
    <tr>
      <td>As a user I want to register to login to the website</td>
      <td>
        <ul>
           <li>
            See a register page
           </li>
           <li>
            Able to go to login page and get a link to register page
           </li>
           <li>
            Able to go to see invalid input on the registration page
           </li>
           <li>
            Login to the app after registration
           </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>As a user I want to choose what type of account on signup for myself</td>
      <td>
        <ul>
          <li>
            See a radio button on which type of user I want to be
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>As a user I want to buy a holiday regardless if I am a vendor or not</td>
      <td>
        <ul>
          <li>
            See a catelogue of holidays
          </li>
          <li>
            See a buy button
          </li>
          <li>
            click on buy button
          </li>
          <li>
            Get to a payment page to enter payment details
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>As a user I want to see a payment confirmation page</td>
      <td>
        <ul>
          <li>
            See a payment success page after inputting credit card details
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>As a user I want to see past purchases</td>
      <td>
        <ul>
          <li>
            See a link on the navbar to go to the past payments
          </li>
          <li>
            on the past payment page, can see the time, the amount and the holiday ordered in a table form
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>As a vendor I want to add products to my listing of products</td>
      <td>
        <ul>
          <li>
            See a link on the navbar to add holiday
          </li>
          <li>
            See a form to enter product/holiday details
          </li>
          <li>
            Submit the form to see if it's successful or not depend on validation
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>As a vendor I want to view holidays in my listing</td>
      <td>
        <ul>
          <li>
            See a link on the navbar to see all products/holidays
          </li>
          <li>
            See the page with a picture, description, price and title of products
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>As a vendor I want edit my listings</td>
      <td>
        <ul>
          <li>
            See a edit button on the listing page for a specific product
          </li>
          <li>
            click on edit button to an edit form to edit the product
          </li>
          <li>
            see a successful edit page afterwards
          </li>
        </ul>
      </td>
    </tr>
  </table>

# **R13** _Wireframes for your app_

Landing

![landing](/docs/LandingPageWireFrame.jpg)

Vendor edit

![edit](/docs/VendorEditWireFrame.jpg)

Purchase page

![purchase](/docs/PurchasePage.WireFrame.jpg)

Catalog Page

![catalog](/docs/CatelogWireFrame.jpg)

Auth Page

![auth](/docs/AuthPageWireFrame.jpg)

# **R14** _An ERD for your app_

![ERD](/docs/ERD.jpg)

# **R15** _Explain the different high-level components (abstractions) in your app_

With my application I followed the basic MVC style architecture utilizing Rails. In my applications the high-level components are Model, View, Controller, Routing and Rail web server.

1. **Model**

In Rails app, the interaction between database and the app is assisted by Active Record which is a very useful layer to allow us to write ruby code instead of writing raw SQL queries. We are assisted with Model to better define and understand the relationships between different tables. In a way Active Record is our API to communicate with our databases.

Duties:

- Represent models and their data.
- Represent foreign key association between tables.
- Represent inheritance hierarchies.
- Validate data. before they are saved to tables.
- Perform and use object orientated method with database operations.

2. **Rail Web Server**

This is the actual program that listen to http requests and make correct routing base on the route configuration file.

3. **Routing**

This is responsible for forwarding the routes used in the app to the correct controller so they can handle and finish the requests appropriately.

The routes are placed in a file called routes.rb and for paths like GET, POST, PUT, DELETE, we need assign the correct controller to handle the routes to produce the correct outcomes.

4. **Views**

After the request that is sent Views are responsible of what contents are to be sent back to the browser. Most importantly views are relying on the data provided by the Controller which gets the data from Model.

5. **Controller**

Once the Routing has determined the routes the Controller need to decide and make the correct output. In Rails the Controller are set up to make intelligent decisions and help us out with conventions over much dreaded login and code duplication.

Duties:

- Connect to model
- Fetch correct views
- Provide data for views
- Perform RESTful operation like GET, POST, PUT or DELETE.

# **R16** _Detail any third party services that your app will use_

1.  AWS S3:

    AWS S3 storage service is made for storing blob files and assist in scaling web applications. Storing blob files is not efficient for database as they are not indexable, searchable and not quite made for Relational Database to handle plus backing up the blob files can be quite an expensive operation for the database to perform. Amazon offer a solution for this by offering the S3 service.

    The service offered by S3 bucket means that web developers can store, retrieve any amount of data at any given time. It is highly scalable, fast and reliable. Most notable uses of S3 are Netflix, reddit and Dropbox.

    Rails have its own builtin solution to integrate with S3, which is called the Active Storage. It attaches the files to those stored in Active Record. Along with these amazing features, it come with many helpful methods to help developers such as retrieving the public download url for the blob file to S3 or getting extra information.

2.  Stripe payment API:

    Stripe API allows the developers to use Stripe's infrastructure for processing invoices, accepting payment, managing billing and account information without implementing any backend server codes.

    What makes Stripe stood out when it first launched was its security feature, users' creditcards details were never sent to your own server but it's sent to Stripe instead. It automatically qualify you for PCI compliance because you don't handle any sensitive information, even if your server got breached you won't lose any important client data.

    Stripe is also known to be very developer friendly with clean documentation and ease of use.

3.  Heroku:

    Heroku is a PaaS which allows web app hosting and supports many different languages. It is favored by many developers because

    - Easy to deploy
    - Easy to scale
    - Free accounts is very generous
    - Allows developers to focus on the code rather than thinking about the infrastructure, server or hardwares.

# **R17** _Describe your projects models in terms of the relationships (active record associations) they have with each other_

**Models**

- User
- Holiday
- Order

User has relationships with the model Holiday and Order. User can have many orders and this is specified with the has_many attribute defined in ERD, also when user is a vendor, they can have many holidays which they store as their products to sell, that's also specified with has_many

Order has relationships with both Holiday and User as well. Each order would belong to a User or a Holiday and that is specified as belongs_to in ERD.

Holiday again have multiple relationships as specified in the ERD with both User and Order. It can have many Order associated with it using has_many attribute and it only belong to one User whom has created it in the first place which is specified with belongs_to.

# **R18** _Discuss the database relations to be implemented in your application_

**User model** has relations with Order and Holiday tables. The way they are implemented are one to many for both tables.

```ruby
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :holidays
  has_many :orders
end
```

User is able to use the following to check what's associated with his "holidays" and "orders".

```ruby
   @user = User.find(10)
   holidays = user.holidays.all
   orders = user.orders.all

```

Also because the relations are set up, we are able to implement authorization so only the authorized person can access or edit data

In example below we check if a particular holiday is actually a holiday that associated with the user

```ruby
if user.holidays.find_by_id(params[:id]).nil?
```

In this example, we check if user is vendor then would show the page accordingly

```ruby
if user.vendor == false
```

**Holiday** has relations with User and Order tables. With ERD design it has a belong to User relation and it has a has many relation with Order

```ruby
class Holiday < ApplicationRecord
  validates :title, :description, :pictureUrl, :price, presence: true
  validates :price, numericality: { only_integer: true, greater_than: 0 }
  belongs_to :user
  has_many :orders
  has_one_attached :pictureUrl
end
```

Finding the user that created the Holiday can be implemented as below:

```ruby
  Holiday.find(24).user
```

Finding the Order that associated with Holiday:

```ruby
  Holiday.find(24).orders
```

**Order** model has relations with both User and Holiday base on ERD design. It belongs to User as well as Holiday.

```ruby
class Order < ApplicationRecord
  belongs_to :user
  belongs_to :holiday
end

```

You can find which user the order belongs to like below:

```ruby
Order.find(9).user
```

Finding out information about Holiday that it assocated to like below:

```ruby
Order.find(9).holiday
Order.find(9).holiday.title etc....
```

# **R19** _Provide your database schema design_

**User Schema**

```ruby
create_table "users", force: :cascade do |t|
  t.string "email", default: "", null: false
  t.string "encrypted_password", default: "", null: false
  t.string "reset_password_token"
  t.datetime "reset_password_sent_at"
  t.datetime "remember_created_at"
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
  t.string "name"
  t.boolean "admin"
  t.boolean "vendor"
  t.index ["email"], name: "index_users_on_email", unique: true
  t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
end

```

Most of the fields in User schema is already pre-made by Devise gem. The extra fields I have added for my app are: name, admin and vendor.

Name is a simple text field with string as the data type for normal names entry.

Admin is a Boolean field indicate whether or not if user is an admin user.

Vendor is a Boolean field indicate whether or not if user is a vendor user.

**Holiday Schema**

```ruby
create_table "holidays", force: :cascade do |t|
  t.string "title"
  t.string "description"
  t.string "pictureUrl"
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
  t.decimal "price"
  t.bigint "user_id"
  t.index ["user_id"], name: "index_holidays_on_user_id"
end
```

String data type is used for the main data for title, description and pictureUrl. I have decided to use decimal for price as the money that comes in will not always be whole number so need a way to handle it.

User_id the foreign key that link to the User model for the one to many relationships.

**Order Schema**

```ruby
create_table "orders", force: :cascade do |t|
  t.decimal "priceTotal"
  t.date "date"
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
  t.bigint "holiday_id"
  t.bigint "user_id"
  t.index ["holiday_id"], name: "index_orders_on_holiday_id"
  t.index ["user_id"], name: "index_orders_on_user_id"
end
```

PriceTotal is used as decimal as the transaction is not always in whole number and the date field is used as date data type for the time the purchase is made.

User_id the foreign key that link to the User model for the one to many relationships.

Holiday_id the foreign key that link to the Holiday model for the one to many relationships.

# **R20** _Describe the way tasks are allocated and tracked in your project_

I utilize Trello for my planning and implementation and most tasks are divided into smaller components that fit within a day that is shown here on the Trello board:

![Board](/docs/TaskPlanning.jpg)

With each day marked on the board, I also used a table to define each task giving a mini time frame.

Below is an example of the table:

## Model Database setup for 10-30-2019

- Design ERD
- Make relationships
- Install Devise, migrate Devise to database
- Make migration to Postgres
- Rails console to test table manipulation
- Make Custom Devise registration controller

|                    Task                    | Duration | Deadline   | Priority |
| :----------------------------------------: | -------- | ---------- | -------- |
|                 Design ERD                 | 30mins   | 2019-10-28 | High     |
|             Make Relationships             | 30mins   | 2019-10-28 | High     |
| Install Devise, migrate Devise to database | 60mins   | 2019-10-28 | Medium   |
|        Make migrations to Postgres         | 120mins  | 2019-10-28 | High     |
|  rails console to test table manipulation  | 180mins  | 2019-10-28 | low      |
