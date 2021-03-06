module ApplicationHelper

    def get_season()
        # year day wday 0-6 yday 0 365 hour min sec zone

        time = Time.new


        if(time.month >= 3) && (time.month <= 5)
            "Yeah it is Spring"
        elsif(time.month > 5) && (time.month <= 8)
            "Everyone Loves Summer"
        elsif(time.month > 8) && (time.month <= 10)
            "Put on Your Coat its fall"
        else
            "Lovely Winter"
        end
    end

    def get_random_number(max_value = 10)
        rand(max_value)
    end

    def get_random_welcome()
        opening = ["What a beautiful day. ", "Welcome to our site. ",
                    "Thank you for stopping by. "]
        middle = ["What a beautiful day. ", "Welcome to our site. ",
                    "Thank you for stopping by. "]
        ending = ["What a beautiful day. ", "Welcome to our site. ",
                    "Thank you for stopping by. "]
        "#{opening[rand(3)]} #{middle[rand(3)]} #{ending[rand(3)]}"
    end

    def count_to_10()
        x = 2
        number_list = "1"

        loop do
            number_list = number_list + ", " + x.to_s
            x+=1
            break if x > 10
        end

        "#{number_list}"

    end



end
