using System;
using System.Linq;
using BaseLibrary;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TimeZoneUnitTests.BaseClasses;
using TimeZoneUnitTests.Traits;

namespace TimeZoneUnitTests
{
    [TestClass]
    public class TimeZoneBaseTests : TestBase
    {
        /// <summary>
        /// Validate expected row count of Time zones is returned
        /// </summary>
        [TestMethod]
        [TestTraits(Trait.TimeZones)]
        public void ValidateTimeZoneList()
        {
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

            var actualTimeZoneCount = TimeZoneCount();
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
    }
}
