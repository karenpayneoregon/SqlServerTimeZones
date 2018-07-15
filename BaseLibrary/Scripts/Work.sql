

SELECT id
      ,Timezone
      ,Place
  FROM ForumExamples.dbo.Timezones ORDER BY  timezone, place


SELECT id,Place FROM dbo.Timezones WHERE timezone = '+08:00' ORDER BY Place
SELECT Place FROM dbo.Timezones WHERE timezone = '-08:00' ORDER BY Place

SELECT  Timezone FROM dbo.Timezones
SELECT DISTINCT COUNT(Timezone) FROM dbo.Timezones WHERE timezone = '+08:00'

  
SELECT COUNT(Timezone), Timezone FROM dbo.Timezones GROUP BY Timezone

SELECT DISTINCT COUNT(Timezone) FROM dbo.Timezones



SELECT DISTINCT Timezone FROM dbo.Timezones; SELECT @@ROWCOUNT


-------------------
SELECT  w.id ,
        SomeDate ,
        DATENAME(tz, SomeDate) AS Zone ,
        ( SELECT  REPLACE(SUBSTRING(( SELECT  ',' + Place AS 'data()'
                                      FROM    TimeZones AS t
                                      WHERE   Timezone = DATENAME(tz, SomeDate)
                                      FOR XML PATH('')
                                    ), 2, 6000), '&amp;', '&')
        ) AS Locations ,
        FirstName ,
        LastName
FROM    dbo.WorkingWithDates AS w ORDER BY Zone; 

SELECT id, SomeDate AS Zone FROM dbo.WorkingWithDates AS wwd ;
SELECT id, DATENAME(tz, SomeDate) AS Zone FROM dbo.WorkingWithDates AS wwd ;
SELECT id, DATENAME(tz, SomeDate) AS Zone FROM dbo.WorkingWithDates AS wwd WHERE DATENAME(tz, SomeDate) = '-09:00'

