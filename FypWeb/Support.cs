namespace FypWeb
{
    internal static class Support
    {
        static double venueCost;
        static double foodCost;
        static double entCost;
        static double totalCost;
        static int guest;
        static int orderID;

        public static double getVenueCost()
        {
            return venueCost;
        }
        public static void setVenueCost(double vc)
        {
            venueCost = vc;
        }

        public static double getFoodCost()
        {
            return foodCost;
        }
        public static void setFoodCost(double fc)
        {
            foodCost = fc;
        }

        public static double getEntCost()
        {
            return entCost;
        }
        public static void setEntCost(double ec)
        {
            entCost = ec;
        }

        public static int getGuest()
        {
            return guest;
        }
        public static void setGuest(int g)
        {
            guest = g;
        }

        public static int getOrderID()
        {
            return orderID;
        }
        public static void setOrderID(int o)
        {
            orderID = o;
        }

        public static double getTotalCost()
        {
            return totalCost;
        }
        public static void setTotalCost(double tc)
        {
            totalCost = tc;
        }
    }
}