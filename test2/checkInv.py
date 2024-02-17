import psycopg2

conn = psycopg2.connect("postgresql://project_user:Password@localhost/midterm_project")
cur = conn.cursor()

while True:
    print("Please enter Store ID: (Options: 0,1,2)")
    user_store_id = int(input())
    print("Please enter Brand/Distributor ID: (Options: 0,1,2)")
    user_distributor_id = int(input())
    print("Please enter Item ID: (Options: 0,1,2)")
    user_inventory_id = int(input())
    
    cur.execute("SELECT quantity FROM master WHERE store_id = user_store_id AND user_distributor_id = distributor_id AND user_inventory_id = inventory_id")
    current_count = cur.fetchone()
    print("is this store quantity right? (testing):"+ current_count)
    
    print("how much woudl you like to add/remove?:")
    user_change = int(input())
    
    print("The new quantity is: (noscript yet just testing)+ (current_count + user_change) )
    
cur.close()
conn.close()