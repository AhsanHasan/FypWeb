using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FypWeb.App_Code
{
    public static class Cart
    {
        static string venue;
        static string username;
        static int userid;
        static long budget;
        static int guest;
        static int price;
        static float venuebudget;
        static float foodbudget;
        static List<string> foodItem = new List<string>();
        static List<string> entertainers = new List<string>();


        public static int getGuest()
        {
            return guest;
        }
        public static void setVenue(int g)
        {
            guest = g;
        }
        public static string getVenue()
        {
            return venue;
        }
        public static void setVenue(string v)
        {
            venue = v;
        }
        public static float getVenueBudget()
        {
            return venuebudget;
        }
        public static void setVenueBudget(float vb)
        {
            venuebudget = vb;
        }

        public static float getFoodBudget()
        {
            return foodbudget;
        }
        public static void setFoodBudget(float fd)
        {
            foodbudget = fd;
        }
        public static string getUsername()
        {
            return username;
        }
        public static void setUsername(string name)
        {
            username = name;
        }
        public static int getId()
        {
            return userid;
        }
        public static void setId(int id)
        {
            userid = id;
        }
        public static long getBudget()
        {
            return budget;
        }
        public static void setBudget(long b)
        {
            budget = b;
        }
        public static int getPrice()
        {
            return price;
        }
        public static void setPrice(int p)
        {
            price = p;
        }

        public static List<string> getFoodItem()
        {
            return foodItem;
        }
        public static void setFoodItem(string fd)
        {
            foodItem.Add(fd);
        }

    }
}