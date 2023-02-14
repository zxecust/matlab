% a simple example to convert fahrenheit tempreature to equivalent tempreature.
temperatureConvertor();

function temperatureConvertor()
disp("press Enter to exit!");
while 1
    f = input("Fahrenheit temperature is: ");
    if isempty(f) == false
        c = 5 / 9 * ( f - 32 );
        disp(["equivalent temperature is: ", num2str(c,'%.2f')]);
    else
        break;
    end
end
end