<a name="top"></a>

[<img src="https://user-images.githubusercontent.com/91146906/152112781-2de05074-70b1-436b-9bfb-860890cc1de1.svg" height="35"/>](../#OLAP)
<hr>

# Improv Comedy Clubs DB to DM
[<img src="https://user-images.githubusercontent.com/91146906/152239160-8f8c18a2-e724-4be7-863d-bc94151212ce.svg" height="35"/>](#ExecutiveSummary)
[<img src="https://user-images.githubusercontent.com/91146906/152279677-02eb9847-1863-4641-b59c-58a0e6cd2f24.svg" height="35"/>](#DataMartDesign)
[<img src="https://user-images.githubusercontent.com/91146906/152239510-6c631219-71bc-4281-9c8b-b9b1e805b3d8.svg" height="35"/>](#BuildScript)
[<img src="https://user-images.githubusercontent.com/91146906/152280042-228b216c-e76c-4f34-80f6-f456a15358b2.svg" height="35"/>](#ETL)
[<img src="https://user-images.githubusercontent.com/91146906/161397633-2e4d30dc-ba35-4fe9-b66d-9c8e91ba0f86.svg" height="35"/>](#PowerPivot)
[<img src="https://user-images.githubusercontent.com/91146906/161397549-071ca628-25fa-4c34-91d1-78274cafc9b8.svg" height="35"/>](#PowerBI)


## Executive Summary

My Database project will be based on the real business called Improv, which is a comedy club that contrary to its name is usually not usually a place to watch or do improv.  My family owns a few of these businesses which are throughout the major urban areas in Texas, (Addison, San Antonio, Dallas, Houston).  I have worked there before and have a general understanding of operations.  I will be majorly simplifying the business process for this project and will be only focusing on customers, the shows they attend, and comics working the shows.  For the sake of completeness, I will assume we are working on only the Addison Improv.  Shows will be conducted by one comic and will have many customers.  Shows will take place in the afternoon or at night from 3pm to 11pm.  Ticket prices will vary.  Shows will be able to seat 100 people for the sake of the project.
In this project we will not worry about things like shows with several comics, or special events/features.  Including all this would require a lot of extra dimensions that would be unnecessary, the same could be said for drink and food sales, late purchases, online bookings, etc.  Also, because the data will be generated, ticket prices will not adhere to some of the logical constraints that would be naturally in place with real data, (like consistency of prices between shows, and variation based on order time, where the order was conducted, and discounts and the like).
Some business questions this database should answer will be, what day performs the best, (according to attendance and sales)?  What comics have the highest sales?  What comics have the highest attendance?  What show performed the best?  What show performed the worst? What comic performed the worst? We can also ask questions related to comparing performance between demographic info of customers. Etc.  The focus of this project is to conduct the steps necessary to create and populate a data mart, and to demonstrate the ability to conduct analysis in a way that demonstrates ability in key data analysis programs.

<br>
<br>[<img src="https://user-images.githubusercontent.com/91146906/152072378-b0168a2d-e85c-47c6-a272-fcfb3f6a44ae.svg" height="35"/>](#top)

<a name="DataMartDesign"></a>
<hr>

## Data Mart Design
### Information Package

![image](https://github.com/wescast27/Wesley-Castillo/assets/162179914/75ca4f32-02d4-4bb2-aedb-a754fb00f2dc)

### Star Schema

![image](https://github.com/wescast27/Wesley-Castillo/assets/162179914/27fa02dd-18d1-4603-8773-18b18d390999)

<a name="BuildScript"></a>
<hr>
	
## Build Script

The ComedyCDB script creates the Comedy Club Data mart including all relevant tables, dimensions, and attributes.  The script is set up to delete the tables if they exist and create them again, meaning it should run without errors regardless of how many times you run it.

See "ComedyCDM Script - 1.sql in the Data Warehousing Project in my repository.
<br>
<br>[<img src="https://user-images.githubusercontent.com/91146906/152072378-b0168a2d-e85c-47c6-a272-fcfb3f6a44ae.svg" height="35"/>](#top)
	
<a name="ETL"></a>
<hr>


