declare default element namespace "http://www.tei-c.org/ns/1.0";


<files>
{for $x in collection("file:///c:/Users/sarah/Desktop/vwwp_tei?select=*.xml")
order by count($x/TEI/text//pb) descending 
return
<file>
<idno>{data($x/TEI/@xml:id)}</idno>
<title>{string-join(data($x/TEI/teiHeader/fileDesc/titleStmt/title), '; ')}</title>\
<title-count>{count($x/TEI/teiHeader/fileDesc/titleStmt/title)}</title-count>
<author>{data($x/TEI/teiHeader/fileDesc/titleStmt/author)}</author>
<keywords>{string-join(data($x/TEI/teiHeader/profileDesc/textClass/keywords/list/item/term), '; ')}</keywords>
<keyword-count>{count($x/TEI/teiHeader/profileDesc/textClass/keyowrds/list/item/term)}</keyword-count>
<chapter-count>{count($x/TEI/text//div[@type='chapter'])}</chapter-count>
<paragraph-count>{count($x/TEI/text/body/div/p)}</paragraph-count>
<pb-count>{count($x/TEI/text//pb)}</pb-count>

<encoders>
{for $name in $x//respStatement/name
return
<name>{data($name)}</name>
}
</encoders>
</file>

}
</files>