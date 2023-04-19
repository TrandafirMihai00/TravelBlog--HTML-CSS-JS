xquery version "1.0";
declare namespace h = "http://www.w3.org/1999/xhtml";

<h:ul>
{ for $tour as element(tour) in //tour
  let $price := $tour/price
  let $duration := $tour/duration
  let $destination as xs:string := string ($tour/destination)
  where $price <1000 
  order by $price descending
  return <h:li> { $price,"$ - ", $duration, " days in ", $destination } </h:li>
}
</h:ul> 