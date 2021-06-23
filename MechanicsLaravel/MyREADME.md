# My Project Description of the MechanicOnline_Dsie^7.0

-   1. NameDatabase: MechanicOnline_Dsie in PostgreSQL

-   2. Install Paypal in Laravel
-   https://www.youtube.com/watch?v=k0FSJ8Vxiww -

    # composer require paypal/rest-api-sdk-php

-   Note: agregue el campo imagen a database continue ahí, además estoy en el proceso de paypal

-   database
    INSERT INTO public.mechanics(
    image, name, lastname, document, phone, email, address, service, description, cost, rating)
    VALUES ('/images/p4.jpg', 'Pedro', 'Pérez', 1234, 4321, 'pedro@g.com', 'abc 23', 'Mecánica', 'bab abc abc cba abc cba', '125.25', '4.5');
    SELECT \* FROM mechanics
