using System;
using System.Collections.Generic;
using System.Linq;
using BaseLibrary;
using BaseLibrary.Classes;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TimeZoneUnitTests.BaseClasses;
using TimeZoneUnitTests.Traits;

namespace TimeZoneUnitTests
{
    [TestClass]
    public class TimeZoneBaseTests : TestBase
    {
        /// <summary>
        /// Validate expected row count of Time zones is returned.
        /// </summary>
        [TestMethod]
        [TestTraits(Trait.TimeZones)]
        public void ValidateTimeZoneList()
        {
            Tester();
            // arrange
            var actualTimeZoneCount = TimeZoneCount();
            var ops = new DataOperations();

            // act
            ops.GetTimeZones();
            var timeZoneListCount = ops.TimeZones.Count;

            // assert
            Assert.IsTrue(actualTimeZoneCount == timeZoneListCount,
                "Expected count to match");

        }
        /// <summary>
        /// Validate a specific time zone has places populated
        /// </summary>
        [TestMethod]
        [TestTraits(Trait.TimeZones)]
        public void ValidatePlacesForOneTimeZone()
        {
            // arrange
            var zoneName = "+08:00";
            var count = 8;
            
            var ops = new DataOperations();

            // act
            ops.GetTimeZones();
            var timeZoneList = ops.TimeZones;
            var zone = timeZoneList.FirstOrDefault(tz => tz.Name == zoneName);

            // assert
            // ReSharper disable once PossibleNullReferenceException
            Assert.IsTrue(zone.PlacesList.Count == count,
                $"Expected {count} places for '{zoneName}'");

        }
        /// <summary>
        /// Validate all time zones have places
        /// </summary>
        [TestMethod]
        [TestTraits(Trait.TimeZones)]
        public void ValidateTimeZonesHavePlaces()
        {
            // arrange
            var ops = new DataOperations();

            // act
            ops.GetTimeZones();
            var timeZoneList = ops.TimeZones;

            // assert
            Assert.IsFalse(timeZoneList.Any(tz => tz.PlacesList.Count == 0),
                "Expected all TimeZones to have places.");

        }
        [TestMethod]
        [TestTraits(Trait.TimeZones)]
        public void GetCurrentTimeZone() 
        {
            var localZone = System.TimeZone.CurrentTimeZone;
            Console.WriteLine(localZone.StandardName);
            //2012-08-23 18:37:50.9729477 -03:30

        }

        /// <summary>
        /// Demostrates using a SQL-Server Time zone table where each record for a time zone
        /// can have one or more time zones.
        /// </summary>
        [TestMethod]
        [TestTraits(Trait.DateTimeOptionsFromSqlServer)]
        public void GetDateTimeOffsetDateTimeFromSqlServerByTimeZone()
        {
            // arrange
            var ops = new DataOperations();
            var timeZone = "-07:00";
            var expectedLocations = new[] {"Arizona", "Denver", "Mountain Time (US & Canada)" };

            // act
            var records = ops.GetRecordByTimeZoneUsingTimeZoneTable(timeZone);

            // assert return count
            Assert.IsTrue(records.Count == 3, 
                $"Expected three records for '{expectedLocations}'");

            // assert all locations are the same
            var locations = records.Select(item => item.LocationsArray).ToArray();
            Assert.IsTrue(locations.Any(item => item.SequenceEqual(expectedLocations)),
                "Expected all places to be the same.");

        }
        /// <summary>
        /// No test, run it followed by viewing the output.
        /// </summary>
        [TestMethod]
        [TestTraits(Trait.DateTimeOptionsFromSqlServer)]
        public void Example1_DisplayCurrentTimeZoneAndOtherTimeZoneViewNoTest()
        {
            var (
                // ReSharper disable once InconsistentNaming
                CurrentLocalDateTimeOffset, 
                // ReSharper disable once InconsistentNaming
                CurrentLocalOffset, 
                // ReSharper disable once InconsistentNaming
                AnotherTimeZone, 
                // ReSharper disable once InconsistentNaming
                CurrentLocalDateTime) = Example1();

            Console.WriteLine($"{CurrentLocalDateTimeOffset}, " +
                                $"{CurrentLocalOffset}, " + 
                                $"{AnotherTimeZone}, " + 
                                $"{CurrentLocalDateTime}");
        }
        /// <summary>
        /// No test, run it followed by viewing the output.
        /// </summary>
        [TestMethod]
        [TestTraits(Trait.TimeZones)]
        public void Example2_GetAllTimeZonesViewNoTest()
        {
            GetAllTimeZonesFromTheFramework();
        }
        /// <summary>
        /// Demostrates obtaining offset of a DateTimeOffset from a SQL-Server table.
        /// See the output window for results.
        /// </summary>
        [TestMethod]
        [TestTraits(Trait.DateTimeOptionsFromCode)]
        public void Example3_GetDateTimeOffsetDateTimeFromWorkingWithDates()
        {
            // arrange
            var ops = new DataOperations();
            // act
            var records = ops.ReadAllRecords().Take(5);

            // act 
            var workingWithDateses = records as WorkingWithDates[] ?? records.ToArray();

            // assert
            Assert.IsTrue(workingWithDateses.Count() == 5,
                "Expected five rows");

            foreach (var record in workingWithDateses)
            {
                Console.WriteLine($"{record.SomeDateWithOffSet,-40}{record.Zone,-20}{record.SomeDate,-40}");
            }

        }
    }
}
