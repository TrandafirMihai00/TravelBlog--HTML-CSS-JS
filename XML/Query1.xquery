xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";
<h:ul>
{
for $x in doc("Tour Offers.xml")/Offers/tour
order by $x/destination
return<h:li>{data($x/destination)}, {data($x/duration)} days, for {data($x/price)} $ </h:li>
}
</h:ul>