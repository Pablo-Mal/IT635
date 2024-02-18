import psycopg2

conn = psycopg2.connect("postgresql://project_user:Password@localhost/midterm_project")
cur = conn.cursor()
thing = True
while (thing==True):
    print("Please enter Store ID: (Options: 0,1,2)")
    user_store_id = int(input())
    
    print("You have selected location: ")
    select_stmt = "SELECT * FROM store_locations WHERE store_id = %(q)s"
    cur.execute(select_stmt, { 'q': user_store_id })
    print(cur.fetchone())
    print()
    
  # ----------------------
  
    print("Please enter Brand/Distributor ID: (Options: 0,1,2)")
    user_distributor_id = int(input())
    
    print("You have selected Brand/Distributor: ")
    select_stmt = "SELECT * FROM distributors WHERE distributor_id = %(q)s"
    cur.execute(select_stmt, { 'q': user_distributor_id })
    print(cur.fetchone())
    print()
    
    #----------------------
    
    print("Please enter Item ID: (Options: 0,1,2)")
    user_inventory_id = int(input())
    
    print("You have selected item: ")
    select_stmt = "SELECT * FROM inventory WHERE inventory_id = %(q)s"
    cur.execute(select_stmt, { 'q': user_inventory_id })
    print(cur.fetchone())
    print()
    
    #----------------------
    
    select_stmt = "SELECT quantity FROM master WHERE store_id = %(x)s AND distributor_id = %(y)s AND inventory_id = %(z)s"
    cur.execute(select_stmt, { 'x': user_store_id , 'y': user_distributor_id , 'z': user_inventory_id })
    
    current_count = cur.fetchone()
    
    print("how much would you like to add/remove? (use - for subtracing):")
    user_change = int(input())
    newCount = (current_count[0] + user_change)
    
    update_stmt = "UPDATE master SET quantity = %(a)s WHERE store_id = %(x)s AND distributor_id = %(y)s AND inventory_id = %(z)s"
    cur.execute(update_stmt, { 'a': newCount, 'x': user_store_id , 'y': user_distributor_id , 'z': user_inventory_id })
    
    print()
    
    print("The new quantity is:")
    print(newCount)
    conn.commit()
    thing = False;
    
cur.close()
conn.close()