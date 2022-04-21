sale = Sales.create([
  {
    :user_id => 1,
    :title => "Multi-Family Yardsale",
    :description => "Five family yardsale in the heart of Ravenswood! Baby clothes 6 mo - 18 mo, living room furniture, pet supplies and more!",
    :start_date => DateTime.strptime("06/04/22" 8:00, "%m/%d/%Y %H %M"),
    :end_date => DateTime.strptime("06/04/22" 16:00, "%m/%d/%Y %H %M"),
    :address => "6672 N Wolcott Avenue, Chicago, IL, 60640",
    :picture => "URL, update in Postico"
  },
  {
    :user_id => 2,
    :title => "Garage Sale",
    :description => "Moving sale, everything must go, rain or shine!",
    :start_date => DateTime.strptime("06/04/22" 7:00, "%m/%d/%Y %H %M"),
    :end_date => DateTime.strptime("06/04/22" 15:00, "%m/%d/%Y %H %M"),
    :address => "9872 N Western Avenue, Chicago, IL, 60640",
    :picture => "URL, update in Postico"
  },
  {
    :user_id => 3,
    :title => "Rummage",
    :description => "$1 bag sale: women's clothes sizes xs - xl, kitchenware, laptops, childrens shoes, art supplies",
    :start_date => DateTime.strptime("06/04/22" 9:00, "%m/%d/%Y %H %M"),
    :end_date => DateTime.strptime("06/04/22" 16:30, "%m/%d/%Y %H %M"),
    :address => "3524 N Clark Street, Chicago, IL 60657",
    :picture => "URL, update in Postico"
  }
])