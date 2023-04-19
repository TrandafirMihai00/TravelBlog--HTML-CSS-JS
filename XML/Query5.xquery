xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";
<h:ul>
{
for $x in doc("Tour Offers.xml")/Offers/tour
where $x/duration>=10 and $x/price>2000 and $x/price<7000
order by $x/duration
return<h:li>{data($x/duration)} days- {data($x/price)}$-{data($x/destination)}</h:li>
}
</h:ul>