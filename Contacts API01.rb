#skills

#Name
#Level (expertise)
# => respMenu = 8
$glIndex = 0
$addressEntry = Hash.new
#while respMenu > 0 and respMenu < 6

def main_menu
    #addressIndex = 0
     
    puts "1. View contacts"
    puts "2. Add new contacts"
    puts "3. Modify contact"
    puts "4. Delete contact(s)"
    puts "5. Exit"
    print "Enter your selection: "

    respMenu = gets.to_i
            
    case respMenu
        when 1
            system "clear"
            view_all_entries
            main_menu
        when 2
            system "clear"
            create_entry
            main_menu
        when 3
            system "clear"
            modify_entry
            main_menu
        when 4
            system "clear"
            delete_entry
            main_menu
        when 5                    
            puts "Goodbye!"
            exit(0)
        else
            system "clear"
            puts "Sorry, that is not a valid input."
            main_menu
    end
end

def view_all_entries
    for j in 0..$glIndex - 1
        for i in 0..4
            print $addressEntry[[j, i]] + " ,"
        end
        puts ""
    end
end
    for j in 0..$glIndex - 1
        for i in 0..4
            print j + " : " +$addressEntry[[j, i]] + " "
        end
        puts ""
    end
    puts "Select which entry to modify (0 to" + j.to_s + ")"
end
def delete_entry
    for j in 0..$glIndex - 1
        for i in 0..4
            print j + " : " + $addressEntry[[j, i]] + " "
        end
        puts ""
    end
    puts "Select which entry to delete (0 to" + j.to_s + ")"
end

def create_entry
    #addressEntry = Array.new   
    system "clear"
    puts "New AddressBook Entry"
    print "Firstname: "
    #firstname = gets.chomp
    $addressEntry[[$glIndex,0]] = gets.chomp
    print "Lastname: "
    $addressEntry[[$glIndex,1]] = gets.chomp
    print "Address: "
    $addressEntry[[$glIndex,2]] = gets.chomp
    print "Email: "
    $addressEntry[[$glIndex,3]] = gets.chomp
    print "Phone number: "
    $addressEntry[[$glIndex,4]] = gets.chomp
    
    #unless email.include? "@"
    #    print "No"
    #    #break 
    #end
    
    
    #puts $addressEntry
    for j in 0..$glIndex
        for i in 0..4
            print $addressEntry[[j, i]] + " ,"
        end
        puts ""
    end
    $glIndex = $glIndex + 1
    system "clear"
    puts ""
    puts "New entry created"
end
#@address_book = AddressBook.new

main_menu
#puts "Yes"
