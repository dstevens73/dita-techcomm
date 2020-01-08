<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Programming Domain                           -->
<!--  VERSION:   2.0                                               -->
<!--  DATE:      [[[Release date]]]                                     -->
<!--  PURPOSE:   Declaring the elements and specialization         -->
<!--             attributes for the Programming Domain             -->
<!--                                                               -->
<!-- ============================================================= -->
<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an  -->
<!--       appropriate system identifier                           -->
<!-- PUBLIC "-//OASIS//ELEMENTS DITA 2.0 Programming Domain//EN"       -->
<!--       Delivered as file "programmingDomain.mod"                    -->
<!-- ============================================================= -->
<!--             (C) Copyright OASIS Open 2005, 2009.              -->
<!--             (C) Copyright IBM Corporation 2001, 2004.         -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % codeph      "codeph"                                      >
<!ENTITY % codeblock   "codeblock"                                   >
<!ENTITY % coderef     "coderef"                                     >
<!ENTITY % option      "option"                                      >
<!ENTITY % var         "var"                                         >
<!ENTITY % parmname    "parmname"                                    >
<!ENTITY % synph       "synph"                                       >
<!ENTITY % oper        "oper"                                        >
<!ENTITY % delim       "delim"                                       >
<!ENTITY % sep         "sep"                                         >
<!ENTITY % apiname     "apiname"                                     >
<!ENTITY % parml       "parml"                                       >
<!ENTITY % plentry     "plentry"                                     >
<!ENTITY % pt          "pt"                                          >
<!ENTITY % pd          "pd"                                          >
<!ENTITY % syntaxdiagram
                       "syntaxdiagram"                               >
<!ENTITY % synblk      "synblk"                                      >
<!ENTITY % groupseq    "groupseq"                                    >
<!ENTITY % groupchoice "groupchoice"                                 >
<!ENTITY % groupcomp   "groupcomp"                                   >
<!ENTITY % fragment    "fragment"                                    >
<!ENTITY % fragref     "fragref"                                     >
<!ENTITY % synnote     "synnote"                                     >
<!ENTITY % synnoteref  "synnoteref"                                  >
<!ENTITY % repsep      "repsep"                                      >
<!ENTITY % kwd         "kwd"                                         >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % univ-atts-no-importance
              "base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;
               %id-atts;
               %filter-atts;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED
               rev
                          CDATA
                                    #IMPLIED
               status
                          (new |
                           changed |
                           deleted |
                           unchanged |
                           -dita-use-conref-target)
                                    #IMPLIED"
>
<!--                    LONG NAME: Code Phrase                     -->
<!ENTITY % codeph.content
                       "(#PCDATA |
                         %basic.ph.notm; |
                         %data.elements.incl; |
                         %draft-comment; |
                         %foreign.unknown.incl; |
                         %required-cleanup;)*"
>
<!ENTITY % codeph.attributes
              "%univ-atts;"
>
<!ELEMENT  codeph %codeph.content;>
<!ATTLIST  codeph %codeph.attributes;>


<!--                    LONG NAME: Code Block                      -->
<!ENTITY % codeblock.content
                       "(#PCDATA |
                         %basic.ph.notm; |
                         %coderef; |
                         %data.elements.incl; |
                         %foreign.unknown.incl; |
                         %txt.incl;)*"
>
<!ENTITY % codeblock.attributes
              "%display-atts;
               spectitle
                          CDATA
                                    #IMPLIED
               xml:space
                          (preserve)
                                    #FIXED 
                                    'preserve'
               %univ-atts;"
>
<!ELEMENT  codeblock %codeblock.content;>
<!ATTLIST  codeblock %codeblock.attributes;>


<!--                    LONG NAME: Literal code reference          -->
<!ENTITY % coderef.content
                       "(%fallback;)?"
>
<!ENTITY % coderef.attributes
              "href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               parse
                          CDATA
                                    'text'
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               encoding
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  coderef %coderef.content;>
<!ATTLIST  coderef %coderef.attributes;>


<!--                    LONG NAME: Option                          -->
<!ENTITY % option.content
                       "(#PCDATA |
                         %text;)*"
>
<!ENTITY % option.attributes
              "keyref
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  option %option.content;>
<!ATTLIST  option %option.attributes;>


<!--                    LONG NAME: Variable                        -->
<!ENTITY % var.content
                       "(%words.cnt;)*"
>
<!ENTITY % var.attributes
              "importance
                          (default |
                           optional |
                           required |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts-no-importance;"
>
<!ELEMENT  var %var.content;>
<!ATTLIST  var %var.attributes;>


<!--                    LONG NAME: Parameter Name                  -->
<!ENTITY % parmname.content
                       "(#PCDATA |
                         %text;)*"
>
<!ENTITY % parmname.attributes
              "keyref
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  parmname %parmname.content;>
<!ATTLIST  parmname %parmname.attributes;>


<!--                    LONG NAME: Syntax Phrase                   -->
<!ENTITY % synph.content
                       "(#PCDATA |
                         %codeph; |
                         %delim; |
                         %kwd; |
                         %oper; |
                         %option; |
                         %parmname; |
                         %sep; |
                         %synph; |
                         %text; |
                         %var;)*"
>
<!ENTITY % synph.attributes
              "%univ-atts;"
>
<!ELEMENT  synph %synph.content;>
<!ATTLIST  synph %synph.attributes;>


<!--                    LONG NAME: Operator                        -->
<!ENTITY % oper.content
                       "(%words.cnt;)*"
>
<!ENTITY % oper.attributes
              "importance
                          (default |
                           optional |
                           required |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts-no-importance;"
>
<!ELEMENT  oper %oper.content;>
<!ATTLIST  oper %oper.attributes;>


<!--                    LONG NAME: Delimiter                       -->
<!ENTITY % delim.content
                       "(%words.cnt;)*"
>
<!ENTITY % delim.attributes
              "importance
                          (optional |
                           required |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts-no-importance;"
>
<!ELEMENT  delim %delim.content;>
<!ATTLIST  delim %delim.attributes;>


<!--                    LONG NAME: Separator                       -->
<!ENTITY % sep.content
                       "(%words.cnt;)*"
>
<!ENTITY % sep.attributes
              "importance
                          (optional |
                           required |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts-no-importance;"
>
<!ELEMENT  sep %sep.content;>
<!ATTLIST  sep %sep.attributes;>


<!--                    LONG NAME: API Name                        -->
<!ENTITY % apiname.content
                       "(#PCDATA |
                         %text;)*"
>
<!ENTITY % apiname.attributes
              "keyref
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  apiname %apiname.content;>
<!ATTLIST  apiname %apiname.attributes;>


<!--                    LONG NAME: Parameter List                  -->
<!ENTITY % parml.content
                       "((%data; |
                          %data-about;)*,
                         (%plentry;)+)"
>
<!ENTITY % parml.attributes
              "compact
                          (yes |
                           no |
                           -dita-use-conref-target)
                                    #IMPLIED
               spectitle
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  parml %parml.content;>
<!ATTLIST  parml %parml.attributes;>


<!--                    LONG NAME: Parameter List Entry            -->
<!ENTITY % plentry.content
                       "((%pt;)+,
                         (%pd;)+)"
>
<!ENTITY % plentry.attributes
              "%univ-atts;"
>
<!ELEMENT  plentry %plentry.content;>
<!ATTLIST  plentry %plentry.attributes;>


<!--                    LONG NAME: Parameter Term                  -->
<!ENTITY % pt.content
                       "(%term.cnt;)*"
>
<!ENTITY % pt.attributes
              "keyref
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  pt %pt.content;>
<!ATTLIST  pt %pt.attributes;>


<!--                    LONG NAME: Parameter Description           -->
<!ENTITY % pd.content
                       "(%defn.cnt;)*"
>
<!ENTITY % pd.attributes
              "%univ-atts;"
>
<!ELEMENT  pd %pd.content;>
<!ATTLIST  pd %pd.attributes;>


<!--                    LONG NAME: Syntax Diagram                  -->
<!ENTITY % syntaxdiagram.content
                       "((%title;)?,
                         (%fragment; |
                          %fragref; |
                          %groupchoice; |
                          %groupcomp; |
                          %groupseq; |
                          %synblk; |
                          %synnote; |
                          %synnoteref;)*)"
>
<!ENTITY % syntaxdiagram.attributes
              "%display-atts;
               %univ-atts;"
>
<!ELEMENT  syntaxdiagram %syntaxdiagram.content;>
<!ATTLIST  syntaxdiagram %syntaxdiagram.attributes;>


<!--                    LONG NAME: Syntax Block                    -->
<!ENTITY % synblk.content
                       "((%title;)?,
                         (%fragment; |
                          %fragref; |
                          %groupchoice; |
                          %groupcomp; |
                          %groupseq; |
                          %synnote; |
                          %synnoteref;)*)"
>
<!ENTITY % synblk.attributes
              "%univ-atts;"
>
<!ELEMENT  synblk %synblk.content;>
<!ATTLIST  synblk %synblk.attributes;>


<!--                    LONG NAME: Sequence Group                  -->
<!ENTITY % groupseq.content
                       "((%title;)?,
                         (%repsep;)?,
                         (%delim; |
                          %fragref; |
                          %groupchoice; |
                          %groupcomp; |
                          %groupseq; |
                          %kwd; |
                          %oper; |
                          %sep; |
                          %synnote; |
                          %synnoteref; |
                          %var;)*)"
>
<!ENTITY % groupseq.attributes
              "importance
                          (default |
                           required |
                           optional |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts-no-importance;"
>
<!ELEMENT  groupseq %groupseq.content;>
<!ATTLIST  groupseq %groupseq.attributes;>


<!--                    LONG NAME: Choice Group                    -->
<!ENTITY % groupchoice.content
                       "((%title;)?,
                         (%repsep;)?,
                         (%delim; |
                          %fragref; |
                          %groupchoice; |
                          %groupcomp; |
                          %groupseq; |
                          %kwd; |
                          %oper; |
                          %sep; |
                          %synnote; |
                          %synnoteref; |
                          %var;)*)"
>
<!ENTITY % groupchoice.attributes
              "importance
                          (default |
                           required |
                           optional |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts-no-importance;"
>
<!ELEMENT  groupchoice %groupchoice.content;>
<!ATTLIST  groupchoice %groupchoice.attributes;>


<!--                    LONG NAME: Composite group                 -->
<!ENTITY % groupcomp.content
                       "((%title;)?,
                         (%repsep;)?,
                         (%delim; |
                          %fragref; |
                          %groupchoice; |
                          %groupcomp; |
                          %groupseq; |
                          %kwd; |
                          %oper; |
                          %sep; |
                          %synnote; |
                          %synnoteref; |
                          %var;)*)"
>
<!ENTITY % groupcomp.attributes
              "importance
                          (default |
                           required |
                           optional |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts-no-importance;"
>
<!ELEMENT  groupcomp %groupcomp.content;>
<!ATTLIST  groupcomp %groupcomp.attributes;>


<!--                    LONG NAME: Fragment                        -->
<!ENTITY % fragment.content
                       "((%title;)?,
                         (%fragref; |
                          %groupchoice; |
                          %groupcomp; |
                          %groupseq; |
                          %synnote; |
                          %synnoteref;)*)"
>
<!ENTITY % fragment.attributes
              "%univ-atts;"
>
<!ELEMENT  fragment %fragment.content;>
<!ATTLIST  fragment %fragment.attributes;>


<!--                    LONG NAME: Fragment Reference              -->
<!ENTITY % fragref.content
                       "(%xrefph.cnt;)*"
>
<!ENTITY % fragref.attributes
              "href
                          CDATA
                                    #IMPLIED
               importance
                          (optional |
                           required |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts-no-importance;"
>
<!ELEMENT  fragref %fragref.content;>
<!ATTLIST  fragref %fragref.attributes;>


<!--                    LONG NAME: Syntax Diagram Note             -->
<!ENTITY % synnote.content
                       "(#PCDATA |
                         %basic.ph;)*"
>
<!ENTITY % synnote.attributes
              "callout
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  synnote %synnote.content;>
<!ATTLIST  synnote %synnote.attributes;>


<!--                    LONG NAME: Syntax Note Reference           -->
<!ENTITY % synnoteref.content
                       "EMPTY"
>
<!ENTITY % synnoteref.attributes
              "href
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  synnoteref %synnoteref.content;>
<!ATTLIST  synnoteref %synnoteref.attributes;>


<!--                    LONG NAME: Repeat Separator                -->
<!ENTITY % repsep.content
                       "(%words.cnt;)*"
>
<!ENTITY % repsep.attributes
              "importance
                          (optional |
                           required |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts-no-importance;"
>
<!ELEMENT  repsep %repsep.content;>
<!ATTLIST  repsep %repsep.attributes;>


<!--                    LONG NAME: Syntax Keyword                  -->
<!ENTITY % kwd.content
                       "(#PCDATA |
                         %text;)*"
>
<!ENTITY % kwd.attributes
              "keyref
                          CDATA
                                    #IMPLIED
               importance
                          (default |
                           required |
                           optional |
                           -dita-use-conref-target)
                                    #IMPLIED
               %univ-atts-no-importance;"
>
<!ELEMENT  kwd %kwd.content;>
<!ATTLIST  kwd %kwd.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  apiname      class CDATA "+ topic/keyword pr-d/apiname ">
<!ATTLIST  codeblock    class CDATA "+ topic/pre pr-d/codeblock ">
<!ATTLIST  codeph       class CDATA "+ topic/ph pr-d/codeph ">
<!ATTLIST  coderef      class CDATA "+ topic/include pr-d/coderef ">
<!ATTLIST  delim        class CDATA "+ topic/ph pr-d/delim ">
<!ATTLIST  fragment     class CDATA "+ topic/figgroup pr-d/fragment ">
<!ATTLIST  fragref      class CDATA "+ topic/xref pr-d/fragref ">
<!ATTLIST  groupchoice  class CDATA "+ topic/figgroup pr-d/groupchoice ">
<!ATTLIST  groupcomp    class CDATA "+ topic/figgroup pr-d/groupcomp ">
<!ATTLIST  groupseq     class CDATA "+ topic/figgroup pr-d/groupseq ">
<!ATTLIST  kwd          class CDATA "+ topic/keyword pr-d/kwd ">
<!ATTLIST  oper         class CDATA "+ topic/ph pr-d/oper ">
<!ATTLIST  option       class CDATA "+ topic/keyword pr-d/option ">
<!ATTLIST  parml        class CDATA "+ topic/dl pr-d/parml ">
<!ATTLIST  parmname     class CDATA "+ topic/keyword pr-d/parmname ">
<!ATTLIST  pd           class CDATA "+ topic/dd pr-d/pd " >
<!ATTLIST  plentry      class CDATA "+ topic/dlentry pr-d/plentry ">
<!ATTLIST  pt           class CDATA "+ topic/dt pr-d/pt " >
<!ATTLIST  repsep       class CDATA "+ topic/ph pr-d/repsep ">
<!ATTLIST  sep          class CDATA "+ topic/ph pr-d/sep ">
<!ATTLIST  synblk       class CDATA "+ topic/figgroup pr-d/synblk ">
<!ATTLIST  synnote      class CDATA "+ topic/fn pr-d/synnote ">
<!ATTLIST  synnoteref   class CDATA "+ topic/xref pr-d/synnoteref ">
<!ATTLIST  synph        class CDATA "+ topic/ph pr-d/synph ">
<!ATTLIST  syntaxdiagram class CDATA "+ topic/fig pr-d/syntaxdiagram ">
<!ATTLIST  var          class CDATA "+ topic/ph pr-d/var ">

<!-- ================== End of DITA Programming Domain ==================== -->
 