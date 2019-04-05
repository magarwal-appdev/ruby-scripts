desc "Check if today is Friday"
task :tgif do
    if Date.today.friday? == true
       ap "today is friday"
    else 
       ap "Nope, net yet :/"
    end
end
