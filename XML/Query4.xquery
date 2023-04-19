xquery version "1.0";

declare namespace h="http://www.w3.org/1999/xhtml";
<h:ul>
{
for $x in doc("Tour Offers.xml")/Offers/tour
where $x/accommodation="No"
order by $x/accommodation
return<h:li>{data($x/destination)}-{data($x/accommodation)} accommodation</h:li>
}
</h:ul>