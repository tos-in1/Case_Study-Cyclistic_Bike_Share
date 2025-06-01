# Cyclistic Bike Share – Customer Behavior Analysis

## Business Summary
Cyclistic is a bike-share company in Chicago with over 6 million users across 690+ stations. Its users are categorized into two segments - Casual riders (Those who use single-ride or full-day passes) and Annual members (Those with annual subscriptions)

## 🚨 Business Problem 

Cyclistic aims to increase its overall revenue, and one of the most effective strategies is converting casual riders into annual members. However, the company currently lacks behavioral insights into why casual users are not making the switch — thereby creating a gap in its ability to develop targeted and effective conversion strategies.

## 🎯 Objective
As a data analyst, my task was to analyze and understand the behavioral differences between casual riders and annual members so as to inform marketing strategies and drive membership growth. By understanding the behavioral differences between these two rider groups, the marketing team can design targeted strategies to convert casual riders into loyal, paying annual members.

## 🔍 Key Business Questions
1. How do ride durations differ between casual riders and annual members?
2. What time of day, days of the week, or season of the year are most popular for each rider group?
3. What is the prefered route, start and end stations between both rider group and what does this imply?

## 🧰 Tools Used
- SQL (Google BigQuery)
- Tableau Public
- Canva / PowerPoint (Presentation Slide)

## 📁 Files
- `SQL/` – Contains all SQL queries used for cleaning and analysis.

## 🔍 Key Insights
**1. How do ride durations differ between casual riders and annual members?**
   - Casual Riders Take Longer Trips compared to annual members - averaging 19.75 mins per ride, significantly longer than annual members at 11.72 mins. This suggests casual users ride mostly for leisure, while members ride for short, practical trips.

![Image](https://github.com/user-attachments/assets/45da2264-74e8-49cd-ac73-9a779fbd6e5a)

**2. What time of day, days of the week, or season of the year are most popular for each rider group?**

![Image](https://github.com/user-attachments/assets/37c96d75-1c16-47aa-aa7e-c6c0bad5793e)

![Image](https://github.com/user-attachments/assets/8453a2be-9e3b-4f5f-823b-3b5bbd5ff855)

![Image](https://github.com/user-attachments/assets/ac5e0a89-c615-4d2e-b420-6a24b3ccfb2f)

   - Casual riders prefer to ride during weekends and summer Months – Their usage peaks around 4–5 PM, especially on weekends, and surges dramatically in the summer (10.4x more than in winter), highlighting a strong leisure and seasonal pattern.
     
   - Annual members on the other hand ride during commute hours and weekdays – They show clear peaks around 8 AM and 4–6 PM on weekdays, with consistent usage throughout the year (only 3.4x increase from winter to summer), indicating commuting and routine-based behavior.

**3. What is the prefered route, start and end stations between both rider group and what does this imply?**

![Image](https://github.com/user-attachments/assets/7b2ef975-4f34-474f-9737-d417b1919d32)

![Image](https://github.com/user-attachments/assets/f3d9eaff-74e8-4951-a61b-b19fd570de2e)

   - Casual Riders Start and End at Tourist Hotspots – Their top routes and stations cluster around attractions like Millennium Park and the Shedd Aquarium, highlighting a preference for using cyclistic bikes for sightseeing and recreation.
     
   - Annual Members Commute Between Work Hubs and Transit Points – Their most-used routes connect business districts, residential zones, and universities, suggesting a practical and routine-based commuting behavior.

## 🎯 Recommendations
1. Target Casual Riders with Timed Membership Offers
- Launch limited-time free or discounted trial memberships during the weekends and summer months. This leverages casual riders seasonal and leisure-driven behavior to increase exposure to the membership benefits and drive conversion.

2. Reframe Annual Membership Around Exploration and Value
- Cyclistic marketing team should create a marketing campaign that showcases top recreational destinations, and flexible usage benefits of annual membership. During the campaign, it would be best to make use of visuals and testimonials to position the membership plan as a gateway to continuous discovery, not just commuting.

3. Use Behavioral Data to Personalize Incentives
- Cyclistic should offer custom incentives like discounts after a set number of long-duration leisure rides or bonus credits—based on casual riders’ actual behavior. All of these tailored rewards will increase perceived relevance and nudge conversion to annual plans.

## 🧑‍💻 View SQL Codes 
[Click here to view SQL codes](https://github.com/tos-in1/Case_Study-Cyclistic_Bike_Share/tree/master/SQL)

## 📊 View Presentation Slide
[Click here to view Presentation slide](https://www.canva.com/design/DAGndjK9rVo/dqVnQuEHYucn_N_ht108oA/view?utm_content=DAGndjK9rVo&utm_campaign=share_your_design&utm_medium=link2&utm_source=shareyourdesignpanel)

## 📝 View the entire process 
[Click here to view Medium Report](https://medium.com/@tosin.folorunso01/unlocking-membership-growth-converting-casual-riders-into-annual-members-1e305e2db007)

## 📊 View Dashboard
[Click here to view Tableau dashboard](https://public.tableau.com/views/CyclisticBikeShareDashboard_17471525247210/Dashboard1-When?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)






