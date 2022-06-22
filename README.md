# ecommerce_demo

A new Flutter project for completing the task of Qtech Solution Ltd.

## Project Structure

Here I used DDD (Domain Driven Design) architecture to make this app.

The folder structure for this project.
![image](https://user-images.githubusercontent.com/31488481/175040754-5b21d707-0abf-45ab-9dee-5b9f2bb0a7bc.png)

> Application Layer:

Consists of Business Logic Layer. Here I use flutter_bloc to handle the states. All the statemanagement processes are here.

> Domain Layer:

Here all the domain, such as Interface class,Extensions, value_objects, value_failures, value_validators exists.

> Infrastructure Layer:

All the network call, model class are here.

> Presentation Layer:

The UI is here.

## UI

<table>
  <tr>
    <td>Home Screen</td>
     <td>Increment/Decrement Item</td>
     <td>Search Validity check (Only accepts text)</td>
  </tr>
  <tr>
    <td><img src="https://user-images.githubusercontent.com/31488481/175040177-aef1aa0d-58fb-4c61-a382-cea993cae8d1.png" height=500, width=300></td>
    <td><img src="https://user-images.githubusercontent.com/31488481/175085750-bbf5455c-bbfd-4f3d-a587-ff9b4c7bd969.png" height=500, width=300></td>
    <td><img src="https://user-images.githubusercontent.com/31488481/175040199-c8914f9b-72e7-4d41-98f0-d125d3bc225a.png" height=500, width=300></td>
  </tr>
  <tr>
     <td>Search with empty string</td>
    <td>No product show</td>
    <td>Search Result page<td>
  </tr>
  <tr>
       <td><img src="https://user-images.githubusercontent.com/31488481/175040196-ba3a167b-574d-4db3-8f9e-a1871cb10641.png" height=500, width=300></td>
           <td><img src="https://user-images.githubusercontent.com/31488481/175040201-5e2c0b99-0771-4225-ac24-041a769b8d09.png" height=500, width=300></td>
    <td><img src="https://user-images.githubusercontent.com/31488481/175040210-6c952e80-fa98-4191-b3a2-ee02c5961888.png" height=500, width=300></td>

  </tr>
    <tr>
    <td>Infinite Scroll Loading</td>
     <td>Product Details Page</td>
      <td>Details Page Cart</td>
  </tr>
  <tr>
  <td><img src="https://user-images.githubusercontent.com/31488481/175082036-867ad11a-e3ca-40cc-907a-149be12b6357.png" height=500, width=300></td>  
    <td><img src="https://user-images.githubusercontent.com/31488481/175040206-2c69ce57-4910-4e04-aa67-7b5fbf80e2bd.png" height=500, width=300></td>   <td><img src="https://user-images.githubusercontent.com/31488481/175088897-eea24a1c-8071-48ad-9c03-19463c98051d.png" height=500, width=300></td>
    
 </table>


## Future Work

- Using reusable widget in search and home page! [updated 22 June, 2022]
