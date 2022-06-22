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
     <td>Searching with empty string</td>
     <td>Search Validity check (Only accepts text)</td>
  </tr>
  <tr>
    <td><img src="https://user-images.githubusercontent.com/31488481/175040177-aef1aa0d-58fb-4c61-a382-cea993cae8d1.png" height=500, width=300></td>
    <td><img src="https://user-images.githubusercontent.com/31488481/175040196-ba3a167b-574d-4db3-8f9e-a1871cb10641.png" height=500, width=300></td>
    <td><img src="https://user-images.githubusercontent.com/31488481/175040199-c8914f9b-72e7-4d41-98f0-d125d3bc225a.png" height=500, width=300></td>
  </tr>
  <tr>
     <td>No product show</td>
    <td>Search Result page</td>
    <td><td>
  </tr>
  <tr>
       <td><img src="https://user-images.githubusercontent.com/31488481/175040201-5e2c0b99-0771-4225-ac24-041a769b8d09.png" height=500, width=300></td>
           <td><img src="https://user-images.githubusercontent.com/31488481/175040210-6c952e80-fa98-4191-b3a2-ee02c5961888.png" height=500, width=300></td>
    <td><img src="https://user-images.githubusercontent.com/31488481/175040206-2c69ce57-4910-4e04-aa67-7b5fbf80e2bd.png" height=500, width=300></td>

  </tr>
    <tr>
    <td>Home Page</td>
     <td>Selected From Gallery & Recognized</td>
      <td>Scanning</td>
  </tr>
  <tr>
    <td><img src="https://user-images.githubusercontent.com/31488481/144754754-6379acf0-a1fc-4327-b8a8-1f65e7bdd4b8.jpg" height=500, width=300></td> <td><img src="https://user-images.githubusercontent.com/31488481/144754757-03a40cc3-9f13-4db2-9c37-1eefd20ea77d.jpg" height=500, width=300></td>     <td><img src="https://user-images.githubusercontent.com/31488481/144754759-fb3bfd09-9154-4a88-adb5-a00218c0defd.jpg" height=500, width=300></td>
    
  </tr> 
     <tr>
    <td>Data Loaded and View</td>
     <td>View Page</td>
       <td>NLP based data showing (future update)</td>
  </tr>
  <tr>
    <td><img src="https://user-images.githubusercontent.com/31488481/144754761-f2bfa352-aeec-40f4-b240-dfe174cc4763.jpg" height=500, width=300></td>
    <td><img src="https://user-images.githubusercontent.com/31488481/144754763-d50d07fa-db8b-4592-af4b-46b7b1936842.jpg" height=500, width=300></td>
    <td><img src="https://user-images.githubusercontent.com/31488481/144754765-c30b079e-b9b0-4323-b562-b5f379ddfa07.jpg" height=500, width=300></td>
  </tr>
 </table>
