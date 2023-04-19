xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";
<h:ul>
{
for $x in doc("Tour Offers.xml")/Offers/tour
where $x/price>1000
order by $x/price
return<h:li>{data($x/price)}$, {data($x/duration)} days in {data($x/destination)}</h:li>
}
</h:ul>