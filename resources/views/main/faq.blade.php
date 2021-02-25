@extends('layout.script')
@section('content')

<!-- //navigation -->
<!-- banner-2 -->
<div class="page-head_agile_info_w3l">

</div>
<!-- //banner-2 -->
<!-- page -->
<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">
        <div class="container">
            <ul class="w3_short">
                <li>
                    <a href="index.html">Home</a>
                    <i>|</i>
                </li>
                <li>Faqs</li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- FAQ-help-page -->
<div class="faqs-w3l">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">Faqs
            <span class="heading-style">
                <i></i>
                <i></i>
                <i></i>
            </span>
        </h3>
        <!-- //tittle heading -->
        <h3 class="w3-head">Top 10 Frequently asked questions</h3>
        <div class="faq-w3agile">
            <ul class="faq">
                <li class="item1">
                    <a href="#" title="click here">How to make payment/ pay?</a>
                    <ul>
                        <li class="subitem1">
                            <p>
                                Again, customers asked this question because they were not accustomed to the “shopping cart” purchase method. It is the same thing that you do in Walmart or other Super Shops but virtually. In Walmart, you gather all the necessary ingredients in a cart and then you go to the payment booth. Similarly, here you would not see the payment method page unless you create an order. So, customers always faced some difficulty. Then there was the issue of payment method itself. The most preferred form of payment was online banking. But again, not all people had access to the privileges of online banking and those who did, felt unsafe or unsure whether to put their banking information in online shopping sites like ours.</p>
                        </li>
                    </ul>
                </li>
                <li class="item2">
                    <a href="#" title="click here">How to order/ buy?</a>
                    <ul>
                        <li class="subitem1">
                            <p>
                                This was probably the most popular question asked by people. Although we put a how to buy/ order tutorial button on every single product page with detailed step by step walk-through as well as video, yet that didn’t stop the customers from asking the question. As I have said earlier, Malaysian people were not used to the concept of e-shopping. They just simply hand over the money and get their choice of product. So, putting a lot of details and completing a set of steps for e-shopping seemed a bit hassling to them.</p>
                        </li>
                    </ul>
                </li>
                <li class="item3">
                    <a href="#" title="click here"> What are the features of E-commerce?</a>
                    <ul>
                        <li class="subitem1">
                            <p>
                                The features of e-commerce are non-cash payment, service availability (24*7), Improved sales, support, advertising and marketing, inventory management, communication efficient, faster, reliable, less time consuming, on the go service and saving time. It is available at any time and anywhere, helps in making a better management of product and services.</p>
                        </li>
                    </ul>
                </li>
                <li class="item4">
                    <a href="#" title="click here">Miscellaneous technical questions?</a>
                    <ul>
                        <li class="subitem1">
                            <p>
                                Since a large portion of Malaysian people is Muslim, there are some restrictions about the usage of certain materials such as pig skin or anything that is of pig origin. So, we had to face this question a lot whether a particular product contained any pig material, especially in the case of shoes if it was made of pig skin. I believe, ethnicity and religion are very important facets to consider before selecting target customers so that their values and ideologies do not get hurt.</p>
                        </li>
                    </ul>
                </li>
                <li class="item5">
                    <a href="#" title="click here">Can I get discount?</a>
                    <ul>
                        <li class="subitem1">
                            <p>
                                People normally asked this question when they ordered a lot of items at a time. Providing ample discount opportunities is a great way of drawing your customers. However, this could lead you into some trouble. You could save yourself from this trouble by making a standard guideline for discounts to be followed by your company.</p>
                        </li>
                    </ul>
                </li>
                <li class="item6">
                    <a href="#" title="click here">Still solving E-commerce issue?</a>
                    <ul>
                        <li class="subitem1">
                            <p>
                                Now, I am no longer in customer support. Currently, my team and I have developed Picmote, an online software tool for creating e-commerce image content.
                                From my personal experience in E-commerce, what I have learned is that E-commerce image creation for advertisement and selling purpose can be a huge headache. Keeping that in mind, we have developed Picmote, an online tool for E-commerce sellers to easily create image content such as banners, social posts, Ads image and product thumbnail.</p>
                        </li>
                    </ul>
                </li>
                <li class="item7">
                    <a href="#" title="click here">When can I get hands on my parcel?</a>
                    <ul>
                        <li class="subitem1">
                            <p>
                                Another very hard to answer questions. Though, the minimum waiting period wa
                                s already stated in the website, people would still ask the question. Apparently, customers could be very impatient. They wanted their desired product at the earliest possible date. What they did not want to realize was that delivery mostly depended on the courier service rather than our own. Thus, we faced this question over and over again.</p>
                        </li>
                    </ul>
                </li>



            </ul>
        </div>
    </div>
</div>
<!-- //FAQ-help-page -->

<!-- newsletter -->
<div class="footer-top">
    <div class="container-fluid">
        <div class="col-xs-8 agile-leftmk">
            <h2>Get your Groceries delivered from local stores</h2>
            <p>Free Delivery on your first order!</p>
            <form action="#" method="post">
                <input type="email" placeholder="E-mail" name="email" required="">
                <input type="submit" value="Subscribe">
            </form>
            <div class="newsform-w3l">
                <span class="fa fa-envelope-o" aria-hidden="true"></span>
            </div>
        </div>
        <div class="col-xs-4 w3l-rightmk">
            <img src="images/tab3.png" alt=" ">
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //newsletter -->
<!-- footer -->
@include('layout.simpfoot')
@endsection()