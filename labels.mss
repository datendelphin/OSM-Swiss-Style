/* LABELS.MSS CONTENTS:
 * - place names
 * - area labels
 * - waterway labels 
 */

/* Font sets are defined in palette.mss */

/* Mapnik does not yet support character-spacing adjustments for 
   labels placed along a line. We can fake this using the replace()
   function in the text-name parameter by replacing each character
   with itself followed by one or more spaces. */


/* ================================================================== */
/* ONE-WAY ARROWS
/* ================================================================== */

#motorway_label,
#mainroad_label,
#minorroad_label {
  [oneway!=''][oneway!='no'][zoom>=16] {
    marker-placement:line;
    marker-max-error: 0.5;
    marker-spacing: 200;
    marker-file: url(img/icon/oneway.svg);
    [oneway=-1] { marker-file: url(img/icon/oneway-reverse.svg); }
    [zoom=16] { marker-transform: "scale(0.5)"; }
    [zoom=17] { marker-transform: "scale(0.75)"; }
  }
}


/* ****************************************************************** */
