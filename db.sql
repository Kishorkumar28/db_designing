TABLE users{
  id int [primary key]
  user_name varchar
  user_phone number
  dob date
  address varchar
  city varchar
  state varchar
  Email_ID varchar
  bio_data varchar
}

TABLE product{
  id int [primary key]
  product_name varchar
  product_description varchar
  product_category varchar
  product_subcategory varchar
}

TABLE sales{
  id int [primary key]
  product_id int [note: "courses etc.."]
  customer_id int [note : "foreign key"]
  amount_id int
  payment_mode varchar
  payment_status boolean
}

TABLE dashboard{
  Activities varchar
  codekata varchar
  webkata varchar
}

TABLE TASKS{
  Task_id int [primary key]
  total_tasks int
  completed_tasks int
  pending_tasks int
  date_of_submission date

}

TABLE Queries{
  query_ID int [primary key]
  created_queries varchar
  query_status boolean
}
TABLE Syllabus{
  course_id int
  course_name varchar

}

TABLE Class{
  Class_id int [primary key]
  Class_name varchar
  roadmap int
  session_link varchar

}
Ref: users.id > sales.customer_id
Ref: users.id > product.id
Ref: sales.product_id > Syllabus.course_id
Ref: product.product_name > Syllabus.course_name