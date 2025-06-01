# Cyclistic Bike Share – Customer Behavior Analysis

## Business Summary
Cyclistic is a leading bike-share company in Chicago, serving over 6 million users across more than 690 stations. Its users fall into two segments:
- Casual riders (single-ride or full-day pass users)
- Annual members (subscribers with annual plans)

## 🚨 Business Problem 
Cyclistic aims to grow it's revenue by converting casual riders into annual members. However, a lack of detailed behavioral insights into casual riders limits the company’s ability to design targeted, effective conversion strategies.

## 🎯 Objective
As a data analyst, I analyzed the behavioral differences between casual riders and annual members to inform marketing strategies aimed at increasing membership conversion and retention. Understanding these differences helps tailor communication and offers to better engage casual riders.

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
   - Casual riders take Longer trips compared to annual members - averaging 19.75 mins per ride, significantly longer than annual members at 11.72 mins. This suggests casual riders primarily use bikes for leisure and recreation, while annual members use them for shorter, practical trips.

![Image](https://github.com/user-attachments/assets/45da2264-74e8-49cd-ac73-9a779fbd6e5a)

**2. What time of day, days of the week, or season of the year are most popular for each rider group?**

![Image](https://github.com/user-attachments/assets/37c96d75-1c16-47aa-aa7e-c6c0bad5793e)

![Image](https://github.com/user-attachments/assets/8453a2be-9e3b-4f5f-823b-3b5bbd5ff855)

![Image](https://github.com/user-attachments/assets/ac5e0a89-c615-4d2e-b420-6a24b3ccfb2f)

   - Casual riders prefer to ride during weekends and summer Months – Their usage peaks around 4–5 PM, especially on weekends, and surges dramatically in the summer (10.4x more than in winter), highlighting a strong leisure and seasonal pattern.
     
   - Annual members on the other hand show usage peaks during weekday commute hours (around 8 AM and 4–6 PM) and maintain relatively consistent usage year-round, with only a 3.4x increase from winter to summer. This reflects a routine commuting behavior.

**3. What is the prefered route, start and end stations between both rider group and what does this imply?**

![Image](https://github.com/user-attachments/assets/7b2ef975-4f34-474f-9737-d417b1919d32)

![Image](https://github.com/user-attachments/assets/f3d9eaff-74e8-4951-a61b-b19fd570de2e)

   - Casual riders tend to start and end rides near tourist hotspots and recreational areas such as DuSable Lake Shore, Millennium Park, and Shedd Aquarium. This underscores their preference for sightseeing and leisure trips.
     
   - Annual Members Commute Between Work Hubs and Transit Points – Their most-used routes connect business districts, residential zones, and universities, suggesting a practical and routine-based commuting behavior.

## 🎯 Recommendations
**1. Target Casual Riders with Timed Membership Offers**
- Offer limited-time free or discounted trial memberships during weekends and summer months to capitalize on casual riders’ seasonal and leisure-driven usage, thereby increasing exposure to membership benefits and boosting conversions.

**2. Reframe Annual Membership Around Exploration and Value**
- Cyclistic marketing team should create a marketing campaign that showcases top recreational destinations, and flexible usage benefits of annual membership. During the campaign, it would be best to make use of visuals and testimonials to position the membership plan as a gateway to continuous discovery, not just commuting.

**3. Use Behavioral Data to Personalize Incentives**
- Cyclistic should offer custom incentives like discounts after a set number of long-duration leisure rides or bonus credits—based on casual riders’ actual behavior. All of these tailored rewards will increase perceived relevance and nudge conversion to annual plans.

## 🧑‍💻 View SQL Codes 
[Click here to view SQL codes](https://github.com/tos-in1/Case_Study-Cyclistic_Bike_Share/tree/master/SQL)

## 📊 View Presentation Slide
[Click here to view Presentation slide](https://www.canva.com/design/DAGndjK9rVo/dqVnQuEHYucn_N_ht108oA/view?utm_content=DAGndjK9rVo&utm_campaign=share_your_design&utm_medium=link2&utm_source=shareyourdesignpanel)

## 📝 View the entire process 
[Click here to view Medium Report](https://medium.com/@tosin.folorunso01/unlocking-membership-growth-converting-casual-riders-into-annual-members-1e305e2db007)

## 📊 View Dashboard
[Click here to view Tableau dashboard](https://public.tableau.com/views/CyclisticBikeShareDashboard_17471525247210/Dashboard1-When?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)






