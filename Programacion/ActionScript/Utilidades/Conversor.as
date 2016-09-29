package com.josliver.app.utils
{
	import flash.globalization.NumberFormatter;

	public class Conversor
	{
		public static const CHILE_LOCALE : String = "es-CL";
		
		public static function espDateToSqlDate(fecha : String) : String {
			var arr : Array = fecha.split("-");
			return arr[2] + "-" +arr[1] + "-" + arr[0];
		}
		
		
		public static function getGlobalNumberFormatter() : NumberFormatter {
			var nf : NumberFormatter = new NumberFormatter(Conversor.CHILE_LOCALE);
			
			nf.decimalSeparator  = ".";
			nf.leadingZero       = true;
			nf.trailingZeros     = true;
			nf.fractionalDigits  = 4;
			nf.groupingSeparator ="";
			
			return nf;
		}
	}
}