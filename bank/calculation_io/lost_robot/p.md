یک ربات در جدول مختصات دو بعدی گم شده است. او می‌داند که در حال حاضر در نقطه (x1, y1) قرار دارد. همچنین می‌داند که راه نجات در نقطه (x2, y2) از جدول قرار گرفته است.
ربات به دلیل محدودیت‌های طراحی که دارد در هر مرحله تنها یکی از دو نوع حرکت مجاز را می‌تواند انجام دهد.
حرکت عمودی: در هر حرکت عمودی ربات می‌تواند حداکثر m نقطه در جهت بالا یا پایین حرکت کند.
به عنوان مثال اگر ربات ابتدا در نقطه (2 ,3-) قرار داشته باشد و مقدار m برابر 5 باشد. ربات می‌تواند با یک حرکت عمودی مقدار مختصات y خود را از 2 به هر یک از اعداد بازه [7 ,3-] تغییر دهد.(شامل دو سر بازه) همچنین در حرکت عمودی مقدار مختصات x تغییری نخواهد کرد.
حرکت افقی: درست مانند حرکت عمودی ربات می‌تواند حداکثر n نقطه در جهت چپ یا راست حرکت کند. به عنوان مثال اگر ربات ابتدا در نقطه (5- ,4) قرار داشته باشد. و مقدار n برابر 2 باشد. پس از هر حرکت افقی ربات می‌تواند مختصات x خود را از 4 به هر یک از اعداد بازه [6 ,2] تغییر دهد.(شامل دو سر بازه) بدیهی است که در حرکت افقی مقدار مختصات y تغییری نخواهد کرد.

توجه کنید ربات در هر مرحله تنها می‌تواند در مختصات صحیح از جدول قرار بگیرد همچنین مختصات ابتدایی و هدف نهایی ربات نیز صحیح خواهند بود.
متاسفانه شارژ ربات ما در حال اتمام است به همین دلیل ربات باید در کمترین تعداد حرکت ممکن به مقصد خود برسد در غیر این صورت برای همیشه در جدول گیر خواهد کرد. همچنین به علت فشار و استرس وارد شده به ربات او توان محاسبه خود را از دست داده است. به همین دلیل از شما می‌خواهیم با دریافت مختصات نقطه ابتدایی و انتهایی و همچین مقدار m و n کمترین تعداد حرکات لازم برای رسیدن ربات به مقصد را بگویید.
ورودی
ورودی تنها شامل یک خط است که در آن شش مقدار صحیح x1, y1, x2, y2, n, m به ترتیب از چپ به راست با یک فاصله از هم آمده اند

-1000000 ≤ x1, y1, x2, y2 ≤1000000

    1 ≤ n, m ≤ 1000

خروجی
تنها شامل یک عدد که نشان دهنده حداقل تعداد حرکات لازم برای رسیدن به مقصد می‌باشد.

ورودی نمونه ۱

    0 0 0 5 10 2

خروجی نمونه ۱

    3

ورودی نمونه ۲

    0 0 -3 4 3 4

خروجی نمونه ۲

    2
