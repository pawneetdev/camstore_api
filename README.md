**List Products**
----

* **URL**

  /v1/products

* **Method:**

  `GET`

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `[
    {
        "id": 1,
        "category": {
            "name": "Nikon",
            "category_type": "point and shoot",
            "model": 2019
        },
        "description": "10x Zoom",
        "price": 123.34,
        "make": 2019
    }
]`
    
    
**List Categories**
----

* **URL**

  /v1/categories

* **Method:**

  `GET`
  
* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `[
    {
        "id": 1,
        "name": "Nikon",
        "category_type": "point and shoot",
        "model": 2019
    }
]`



**List Products for a Specific Category**
----

* **URL**

  /v1/products/:category

* **Method:**

  `GET`

* **Params**
 
  **Required:**
 
   `category=[string]`

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `[
    {
        "id": 1,
        "description": "10x zoom",
        "price": 120.23,
        "make": 2019
    }
]`



**User Login**
----

* **URL**

  /v1/sessions

* **Method:**

  `POST`


* **Params**
 
  **Required:**
 
   `email=[string]`<br />
   `password=[string]`

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{
    "email": "rubalps@gmail.com",
    "authentication_token": "nKsGzXPK2xawGzS7Vfc8"
}`

* **Sample Data:**

  `email=rubalps@gmail.com`<br />
  `password=12345678`
  
  
**User Sign Out**
----

* **URL**

  /v1/sessions

* **Method:**

  `DELETE`

* **Headers**

  `X-User-Email=[string]`<br />
  `X-User-Token=[string]`

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{
    "email": "rubalps@gmail.com",
    "authentication_token": "nKsGzXPK2xawGzS7Vfc8"
}`

* **Sample Data:**

  `X-User-Email=rubalps@gmail.com`<br />
  `X-User-Token=7G_KvhxsoyZnHGNJNxsd`
