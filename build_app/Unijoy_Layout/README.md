# এপিকেটুল দিয়ে ইউনিজয় লেয়াউট বিল্ড - অ্যান্ড্রয়েড
###### টিউটোরিয়ালঃ যেভাবে সহজেই যে কোন অ্যান্ড্রয়েড এপিকেটুল দিয়ে [রিদ্মিক বোর্ড](https://github.com/AdroitAdorKhan/RidmikBoard)-এ ইউনিজয় লেয়াউট সংযুক্ত করে আপনি নিজেই বিল্ড দিয়ে নিতে পারবেন।

## প্রয়োজনীয় টুল এবং ফাইল - 
- রিদ্মিক বোর্ড [সর্বশেষ সংষ্করণ](https://github.com/AdroitAdorKhan/RidmikBoard/releases/latest) অথবা অবশ্যই ১.১০.১ বা তার উপরে হতে হবে যদি অন্য কোন সংষ্করণ ব্যবহার করতে চান।
- লেয়াউট **XML** ফাইল দুটো - [kbd_unijoy.xml](https://github.com/AdroitAdorKhan/RidmikBoard/raw/master/build_app/Unijoy_Layout/kbd_unijoy.xml) এবং [kbd_unijoy_shift.xml](https://github.com/AdroitAdorKhan/RidmikBoard/raw/master/build_app/Unijoy_Layout/kbd_unijoy_shift.xml)
- ভালো মানের এপিকেটুল অ্যাপ। (যেমন, [Apk Editor](https://play.google.com/store/apps/details?id=com.gmail.heagoo.apkeditor))

## কাজ অনুসরণ -
**কাজ - ০১:** Apk Editor থেকে আপনার নামানো ১.১০.১ বা তার উপরের রিদ্মিক বোর্ড APK টি সিলেক্ট করুন।

**কাজ - ০২:** এখন **Full Edit (RESOURCES RE-BUILD)** নির্ধারণ করুন।

**কাজ - ০৩:** APK এক্সট্রাক্ট হয়ে গেলে, নিচের নেভিগেশন বার থেকে **'Files'** সিলেক্ট করুন।

**কাজ - ০৪:** এবার **res** ফোল্ডারে যান, নিচে স্ক্রল করলে দেখবেন **xml** ফোল্ডার, এ ফোল্ডারটি ওপেন করুন।

**কাজ - ০৫:** যদি প্রভাত লেয়াউটের বদলে ইনিজয় দিতে চান তাহলে 'ক' অনুসরণ করুন। যদি জাতীয়ের বদলে দিতে চান তাহলে 'খ' অনুসরণ করুন।

**ক** **[গুরুত্বপূর্ণ]** এখন যদি আপনি **প্রভাত** লেয়াউটের বদলে **ইউনিজয়** দিতে চান, তাহলে **xml** ফোল্ডারটি থেকে -
> kbd_unijoy_ascii.xml ফাইলের সব কোড মুছে, [kbd_unijoy.xml](https://github.com/AdroitAdorKhan/RidmikBoard/raw/master/build_app/Unijoy_Layout/kbd_unijoy.xml) ফাইলটির সব কোড কপি পেস্ট করুন।
* লক্ষ্য রাখবেন যেন kbd_unijoy_ascii.xml'র সব কোড মুছে ফেলা হয়!
> এবার, kbd_unijoy_shift_ascii.xml ফাইলের সব কোড মুছে, [kbd_unijoy_shift.xml](https://github.com/AdroitAdorKhan/RidmikBoard/raw/master/build_app/Unijoy_Layout/kbd_unijoy_shift.xml) ফাইলটির সব কোড কপি পেস্ট করুন।
* লক্ষ্য রাখবেন যেন kbd_unijoy_shift_ascii.xml'র সব কোড মুছে ফেলা হয়!

**খ** **[গুরুত্বপূর্ণ]** এখন যদি আপনি **জাতীয়** লেয়াউটের বদলে **ইউনিজয়** দিতে চান, তাহলে **xml** ফোল্ডারটি থেকে -
> kbd_national_ascii.xml ফাইলের সব কোড মুছে, [kbd_unijoy.xml](https://github.com/AdroitAdorKhan/RidmikBoard/raw/master/build_app/Unijoy_Layout/kbd_unijoy.xml) ফাইলটির সব কোড কপি পেস্ট করুন।
* লক্ষ্য রাখবেন যেন kbd_unijoy_ascii.xml'র সব কোড মুছে ফেলা হয়!
> এবার, kbd_national_shift_ascii.xml ফাইলের সব কোড মুছে, [kbd_unijoy_shift.xml](https://github.com/AdroitAdorKhan/RidmikBoard/raw/master/build_app/Unijoy_Layout/kbd_unijoy_shift.xml) ফাইলটির সব কোড কপি পেস্ট করুন।
* লক্ষ্য রাখবেন যেন kbd_unijoy_shift_ascii.xml'র সব কোড মুছে ফেলা হয়!

**কাজ - ০৬:** ব্যাস, এবার Apk Editor'র উপরের ডান দিকের **'Build'** বাটন প্রেস করে বিল্ড দিয়ে নিন!

**কাজ - ০৭:** তৈরি হওয়া Apk ইন্সটল করে নিন! 

ধন্যবাদ! Keep Sharing! :heart:
