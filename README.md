# Unsharp_Masking, Min-Project 3

# English

Question)

1- Using an average 3 × 3 smoothing filter of Box Filter type, apply unsharp masking to the Im132 image.

2- Implement unsharp masking with Weighted Average of 3*3 average and compare the result with the previous result.

3-vRepeat the experience of part (1) with larger filters of 5 × 5, 7 × 7 and 9 × 9. What is the effect of enlarging the filter on the result? Discuss it.

4- What is the result if we use the median filter as a smoothing filter in unsharp masking?

5- 1/16 Consider the following stereotype as Laplacein stereotype:

<img width="135" alt="Screen Shot 2022-02-18 at 11 46 51 am" src="https://user-images.githubusercontent.com/89314766/154644646-49b48aef-526f-4e0d-bcd7-8bf87c3b64fc.png">

Using this cliché, the following relation can sharpen the image:

<img width="254" alt="Screen Shot 2022-02-18 at 11 47 15 am" src="https://user-images.githubusercontent.com/89314766/154644835-d7501f27-a0ea-45e9-9cf5-1d9fc2419ef2.png">

The above stereotype can be considered 1/16 of the total stereotypes

<img width="735" alt="Screen Shot 2022-02-18 at 11 50 56 am" src="https://user-images.githubusercontent.com/89314766/154645067-6372a3a3-4357-4ea4-9276-afe23e90f39f.png">

According to these clichés, an adaptive sharpening can be implemented in such a way that we apply all these clichés to any point of the source image and add the result of all filters that are larger than a threshold. Finally, we add the result to the main image.
Accordingly, apply the image sharpening in both non-horizontal and adaptive shapes to the images Im132 to Im134 and compare the result.

# Persian:
سوال)

1-	به کمک استفاده از یک فیلتر هموارساز میانگین 3×3 از نوع Box Filter، نقاب‌گذاری غیرتیز را به تصویر Im132 اعمال کنید.

2-	نقاب‌گذاری غیرتیز را با فیلتر هموار ساز میانگین  3×3 از نوع Weighted Average پیاده‌سازی کرده نتیجه را با نتیجه قبل مقایسه کنید

3-	تجربه قسمت (1) را با فیلترهای با اندازه بزرگتر 5×5، 7×7 و 9×9 تکرار کنید.بزرگ کردن فیلتر چه تاثیری بر نتیجه دارد؟ بر روی آن بحث کنید.

4-	اگر در نقاب‌گذاری غیرتیز فیلتر میانه را به عنوان فیلتر هموارساز استفاده کنیم چه نتیجه‌ای حاصل می‌شود؟

5-	1/16 کلیشه زیر را به عنوان کلیشه لاپلاسین در نظر بگیرید:

<img width="135" alt="Screen Shot 2022-02-18 at 11 46 51 am" src="https://user-images.githubusercontent.com/89314766/154644646-49b48aef-526f-4e0d-bcd7-8bf87c3b64fc.png">

با استفاده از این کلیشه رابطه زیر می‌تواند موجب تیزشدن تصویر شود

<img width="254" alt="Screen Shot 2022-02-18 at 11 47 15 am" src="https://user-images.githubusercontent.com/89314766/154644835-d7501f27-a0ea-45e9-9cf5-1d9fc2419ef2.png">

کلیشه فوق را می‌توان 1/16 مجموع کلیشه‌های زیر در نظر گرفت

<img width="735" alt="Screen Shot 2022-02-18 at 11 50 56 am" src="https://user-images.githubusercontent.com/89314766/154645067-6372a3a3-4357-4ea4-9276-afe23e90f39f.png">

با توجه به این کلیشه‌ها می‌توان یک تیزکردن وفقی را به این ترتیب پیاده‌سازی کرد که به هر نقطه از تصویر مبدا تمام این کلیشه‌ها را اعمال کرده و حاصل تمام فیلترهایی که از یک آستانه بزرگتر باشند را با هم جمع می‌کنیم. در آخر حاصل را به تصویر اصلی اضافه می‌کنیم.
بر این اساس، تیزکردن تصویر به دو شکل غیروفقی و وفقی را بر روی تصاویر Im132 تا Im134 اعمال کرده و نتیجه را با هم مقایسه کنید.


Hesamoddin
