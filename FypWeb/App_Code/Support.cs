using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FypWeb.App_Code
{
    public static class Support
    {
        static Double venueCost;
        static Double foodCost;
        static Double entCost;
        static Double totalCost;

        public static double VenueCost
        {
            get
            {
                return venueCost;
            }

            set
            {
                venueCost = value;
            }
        }

        public static double FoodCost
        {
            get
            {
                return foodCost;
            }

            set
            {
                foodCost = value;
            }
        }

        public static double EntCost
        {
            get
            {
                return entCost;
            }

            set
            {
                entCost = value;
            }
        }

        public static double TotalCost
        {
            get
            {
                return totalCost;
            }

            set
            {
                totalCost = value;
            }
        }
    }
}