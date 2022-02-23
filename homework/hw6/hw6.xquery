declare default element namespace "urn:isbn:1-931666-22-9";

<files>
{for $x in collection("file:///c:/Users/sarah/Desktop/xquery-assignment?select*.xml")
order by count($x/ead/archdesc/controlaccess/controlaccess/list/item) descending 
return

<file>
<idno>{data($x/ead/eadheader/eadid)}</idno>
<title>{data($x/ead/frontmatter/titlepage/titleproper)}</title>
<coverage>{string-join(data($x/ead/eadheader/revisiondesc/change/date), ' - ')}</coverage>
<findAidAuthor>{data($x/ead/eadheader/filedesc/titlestmt/author)}</findAidAuthor>
<timesChanged>{count($x/ead/eadheader/revisiondesc/change)}</timesChanged>
<physicalExtent>{data($x/ead/archdesc/did/physdesc/extent)}</physicalExtent>
<restrictions>{string-join(data($x/ead/archdesc/accessrestrict/p), ' | ')}</restrictions>

<itemTerms>
<terms>{data($x/ead/archdesc/controlaccess/controlaccess/list/item/extref/corpname)}</terms>
</itemTerms>

<itemCount>{count($x/ead/archdesc/controlaccess/controlaccess/list/item)}</itemCount>

</file>

}
</files>

(:I took "in terms of volume" to mean number of items, which is why I had the order by items. I put it up top because that seemed like the best way to do it. :)