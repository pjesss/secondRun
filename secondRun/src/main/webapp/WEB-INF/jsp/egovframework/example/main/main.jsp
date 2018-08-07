<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!-- Properties Map Section -->
<section class="properties-map">
	<div class="row row-fit">
		<div class="col-md-9 col-lg-7">
			<div class="map-filter-box">
				<div class="box-caption">
					<h4>Search</h4>
					<p>Where are you looking?</p>
				</div>

				<div class="select-box">
					<input class="filter-box-input js-input no-select" type="text" readonly value="" placeholder="Residential" />
					<ul>
						<li>Residential</li>
						<li>Corporate</li>
						<li>Vacantion</li>
					</ul>
				</div>

				<div class="select-box">
					<input class="filter-box-input js-input no-select" type="text" readonly value="" placeholder="For sale" />
					<ul>
						<li>For Sale</li>
						<li>Reting</li>
					</ul>
				</div>

				<div class="select-box">
					<input class="filter-box-input js-input no-select" type="text" readonly value="" placeholder="All types" />
					<ul>
						<li>All types</li>
						<li>Apartments</li>
						<li>Houses</li>
					</ul>
				</div>

				<div class="select-box">
					<input class="filter-box-input js-input no-select" type="text" readonly value="" placeholder="All types" />
					<ul>
						<li>All types</li>
						<li>Apartments</li>
						<li>Houses</li>
					</ul>
				</div>

				<div class="select-box">
					<input class="filter-box-input js-input no-select" type="text" readonly value="" placeholder="All cities" />
					<ul>
						<li>All cities</li>
						<li>Berlin</li>
						<li>LA</li>
						<li>London</li>
						<li>New York</li>
					</ul>
				</div>

				<div class="row row-fit-10">
					<div class="col-xs-12">
						<input class="filter-box-input js-input nr-only" type="text" placeholder="Min bedrooms" />
					</div>

					<div class="col-xs-12">
						<input class="filter-box-input js-input nr-only" type="text" placeholder="Min bathrooms" />
					</div>
				</div>

				<div class="row row-fit-10">
					<div class="col-xs-12">
						<input class="filter-box-input js-input nr-only" type="text" placeholder="Min area (Sq ft)" />
					</div>

					<div class="col-xs-12">
						<input class="filter-box-input js-input nr-only" type="text" placeholder="Max area (Sq ft)" />
					</div>
				</div>

				<div class="price-box">
					<p class="caption"><i>Price</i> &#40;$<span class="min"></span> - $<span class="max"></span>&#41;</p>

					<div class="price-slider" data-min="0" data-max="20000" data-start="2500" data-stop="11000" data-step="500"></div>

					<div class="price-limits clearfix">
						<span class="lower">$0</span>
						<span class="upper">$20 000</span>
					</div>
				</div>

				<a href="#" class="button theme-button-1 update-properties">Find Property</a>
			</div>
		</div>

		<div class="col-md-15 col-lg-17">
			<!-- Map Popup -->
			<div id="property-popup" class="property-popup">
				<i class="close-popup icon-cross2"></i>
				<div class="popup-loader">
					<div class="spinner">
						<div class="spinner-container container1">
							<div class="circle1"></div>
							<div class="circle2"></div>
							<div class="circle3"></div>
							<div class="circle4"></div>
						</div>
						<div class="spinner-container container2">
							<div class="circle1"></div>
							<div class="circle2"></div>
							<div class="circle3"></div>
							<div class="circle4"></div>
						</div>
						<div class="spinner-container container3">
							<div class="circle1"></div>
							<div class="circle2"></div>
							<div class="circle3"></div>
							<div class="circle4"></div>
						</div>
					</div>
				</div>
				<div class="popup-cover">
					<a href="#">
						<img src="img/map-card.jpg" alt="popup cover" />
					</a>
				</div>
				<div class="popup-body">
					<h2><a href="#">Penthouse bar</a></h2>
					<p>Manhattan 125 off 55</p>

					<span class="price">$500</span>
					<a class="propery-page" href="#">
						<i class="fa fa-angle-right"></i>
					</a>
				</div>
			</div>

			<!-- Loader -->
			<div class="map-loader">
				<div class="spinner">
					<div class="spinner-container container1">
						<div class="circle1"></div>
						<div class="circle2"></div>
						<div class="circle3"></div>
						<div class="circle4"></div>
					</div>
					<div class="spinner-container container2">
						<div class="circle1"></div>
						<div class="circle2"></div>
						<div class="circle3"></div>
						<div class="circle4"></div>
					</div>
					<div class="spinner-container container3">
						<div class="circle1"></div>
						<div class="circle2"></div>
						<div class="circle3"></div>
						<div class="circle4"></div>
					</div>
				</div>
			</div>

			<!-- Map Canvas -->
			<div class="map" id="map-canvas"></div>
		</div>
	</div>
</section>

<!-- Hot Offer Section -->
<section class="hot-offer">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<div class="caption">
					<h2><i class="icon icon-home4"></i> <span>Hot Offer</span></h2>
				</div>
			</div>

			<div class="col-sm-18">
				<div class="hot-offer-slider">
					<p>
						<a href="single-full-width.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra venenatis nisl, et venenatis nulla tincidunt non. Nulla sed dui est. Viverra venenatis nisl, et venenatis nulla tincidunt non.</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Listing Section -->
<section class="listing-section">
	<div class="container">
		<div class="section-header">
			<h1>Recent Listed</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec viverra erat. Aenean elit tellus mattis quis maximus et malesuada congue velit</p>
		</div>
	</div>

	<div class="listing-items">
		<div class="row">
			<div class="col-xs-12 col-md-8 col-lg-6">
				<div class="listing-item">
					<div class="item-cover type-1">
						<div class="cover">
							<p>Nulla posuere, egestas neque quis, suscipit eros. Vestibulum ut eros neque. Nam viverra maximus neque id convallis.</p>

							<a href="single.html">
								<i class="icon"></i>
							</a>
						</div>
						<img src="img/listing-1.jpg" alt="item cover" />
					</div>

					<div class="item-body">
						<div class="block services">
							<p class="caption">Services</p>
							<ul>
								<li class="bathrooms">Bathrooms: <span>1</span></li>
								<li class="bedrooms">Bedrooms: <span>2</span></li>
								<li class="area">Area: <span>100</span></li>
							</ul>
						</div>

						<div class="block location-info">
							<div class="location">
								<h3>
									<a href="single-full-width.html">Grand hotel room</a>
								</h3>
								<p>LA 325</p>
							</div>

							<div class="price">
								<p>$450 000 <span>For sale</span></p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-md-8 col-lg-6">
				<div class="listing-item">
					<div class="item-cover type-2">
						<div class="cover">
							<p>Nulla posuere, egestas neque quis, suscipit eros. Vestibulum ut eros neque. Nam viverra maximus neque id convallis.</p>

							<a href="single.html">
								<i class="icon"></i>
							</a>
						</div>
						<img src="img/listing-2.jpg" alt="item cover" />
					</div>

					<div class="item-body">
						<div class="block services">
							<p class="caption">Services</p>
							<ul>
								<li class="bathrooms">Bathrooms: <span>1</span></li>
								<li class="bedrooms">Bedrooms: <span>2</span></li>
								<li class="area">Area: <span>100</span></li>
							</ul>
						</div>

						<div class="block location-info">
							<div class="location">
								<h3>
									<a href="single-full-width.html">Grand hotel room</a>
								</h3>
								<p>LA 325</p>
							</div>

							<div class="price">
								<p>$450 000 <span>For sale</span></p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-md-8 col-lg-6">
				<div class="listing-item">
					<div class="item-cover type-2">
						<div class="cover">
							<p>Nulla posuere, egestas neque quis, suscipit eros. Vestibulum ut eros neque. Nam viverra maximus neque id convallis.</p>

							<a href="single.html">
								<i class="icon"></i>
							</a>
						</div>
						<img src="img/listing-3.jpg" alt="item cover" />
					</div>

					<div class="item-body">
						<div class="block services">
							<p class="caption">Services</p>
							<ul>
								<li class="bathrooms">Bathrooms: <span>1</span></li>
								<li class="bedrooms">Bedrooms: <span>2</span></li>
								<li class="area">Area: <span>100</span></li>
							</ul>
						</div>

						<div class="block location-info">
							<div class="location">
								<h3>
									<a href="single-full-width.html">Grand hotel room</a>
								</h3>
								<p>LA 325</p>
							</div>

							<div class="price">
								<p>$450 000 <span>For sale</span></p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-md-8 col-lg-6">
				<div class="listing-item">
					<div class="item-cover type-2">
						<div class="cover">
							<p>Nulla posuere, egestas neque quis, suscipit eros. Vestibulum ut eros neque. Nam viverra maximus neque id convallis.</p>

							<a href="single.html">
								<i class="icon"></i>
							</a>
						</div>
						<img src="img/listing-4.jpg" alt="item cover" />
					</div>

					<div class="item-body">
						<div class="block services">
							<p class="caption">Services</p>
							<ul>
								<li class="bathrooms">Bathrooms: <span>1</span></li>
								<li class="bedrooms">Bedrooms: <span>2</span></li>
								<li class="area">Area: <span>100</span></li>
							</ul>
						</div>

						<div class="block location-info">
							<div class="location">
								<h3>
									<a href="single-full-width.html">Grand hotel room</a>
								</h3>
								<p>LA 325</p>
							</div>

							<div class="price">
								<p>$450 000 <span>For sale</span></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Most viewed Section -->
<section class="most-viewed-section">
	<div class="container">
		<div class="section-header">
			<h1>Most viewed</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec viverra erat. Aenean elit tellus mattis quis maximus et malesuada congue velit</p>
		</div>

		<ul class="most-viewed-carousel most-viewed-items">
			<li class="item">
				<div class="most-viewed-item">
					<div class="item-cover">
						<div class="cover">
							<div class="text">
								<a href="single.html">Info</a>
								<p>Nulla posuere, egestas neque quis, suscipit eros. Vestibulum ut eros neque. Nam viverra maximus neque id convallis. In auctor eu quam sit amet</p>
							</div>
						</div>
						<img src="img/most-viewed-1.jpg" alt="item cover" />
					</div>

					<div class="item-body">
						<ul class="services">
							<li><p class="bathrooms">Bathrooms: <span>1</span></p></li>
							<li><p class="bedrooms">Bedrooms: <span>2</span></p></li>
							<li><p class="area">Area: <span>100</span></p></li>
						</ul>

						<div class="location">
							<h3>
								<a href="single.html">Grand hotel room</a>
							</h3>
							<p>LA 325</p>

							<span class="price">$450 000</span>
						</div>
					</div>
				</div>

				<div class="most-viewed-item">
					<div class="item-cover">
						<div class="cover">
							<div class="text">
								<a href="single.html">Info</a>
								<p>Nulla posuere, egestas neque quis, suscipit eros. Vestibulum ut eros neque. Nam viverra maximus neque id convallis. In auctor eu quam sit amet</p>
							</div>
						</div>
						<img src="img/most-viewed-4.jpg" alt="item cover" />
					</div>

					<div class="item-body">
						<ul class="services">
							<li><p class="bathrooms">Bathrooms: <span>1</span></p></li>
							<li><p class="bedrooms">Bedrooms: <span>2</span></p></li>
							<li><p class="area">Area: <span>100</span></p></li>
						</ul>

						<div class="location">
							<h3>
								<a href="single.html">Grand hotel room</a>
							</h3>
							<p>LA 325</p>

							<span class="price">$450 000</span>
						</div>
					</div>
				</div>
			</li>

			<li class="item">
				<div class="most-viewed-item">
					<div class="item-cover">
						<div class="cover">
							<div class="text">
								<a href="single.html">Info</a>
								<p>Nulla posuere, egestas neque quis, suscipit eros. Vestibulum ut eros neque. Nam viverra maximus neque id convallis. In auctor eu quam sit amet</p>
							</div>
						</div>
						<img src="img/most-viewed-2.jpg" alt="item cover" />
					</div>

					<div class="item-body">
						<ul class="services">
							<li><p class="bathrooms">Bathrooms: <span>1</span></p></li>
							<li><p class="bedrooms">Bedrooms: <span>2</span></p></li>
							<li><p class="area">Area: <span>100</span></p></li>
						</ul>

						<div class="location">
							<h3>
								<a href="single.html">Grand hotel room</a>
							</h3>
							<p>LA 325</p>

							<span class="price">$450 000</span>
						</div>
					</div>
				</div>

				<div class="most-viewed-item">
					<div class="item-cover">
						<div class="cover">
							<div class="text">
								<a href="single.html">Info</a>
								<p>Nulla posuere, egestas neque quis, suscipit eros. Vestibulum ut eros neque. Nam viverra maximus neque id convallis. In auctor eu quam sit amet</p>
							</div>
						</div>
						<img src="img/most-viewed-5.jpg" alt="item cover" />
					</div>

					<div class="item-body">
						<ul class="services">
							<li><p class="bathrooms">Bathrooms: <span>1</span></p></li>
							<li><p class="bedrooms">Bedrooms: <span>2</span></p></li>
							<li><p class="area">Area: <span>100</span></p></li>
						</ul>

						<div class="location">
							<h3>
								<a href="single.html">Grand hotel room</a>
							</h3>
							<p>LA 325</p>

							<span class="price">$450 000</span>
						</div>
					</div>
				</div>
			</li>

			<li class="item">
				<div class="most-viewed-item">
					<div class="item-cover">
						<div class="cover">
							<div class="text">
								<a href="single.html">Info</a>
								<p>Nulla posuere, egestas neque quis, suscipit eros. Vestibulum ut eros neque. Nam viverra maximus neque id convallis. In auctor eu quam sit amet</p>
							</div>
						</div>
						<img src="img/most-viewed-3.jpg" alt="item cover" />
					</div>

					<div class="item-body">
						<ul class="services">
							<li><p class="bathrooms">Bathrooms: <span>1</span></p></li>
							<li><p class="bedrooms">Bedrooms: <span>2</span></p></li>
							<li><p class="area">Area: <span>100</span></p></li>
						</ul>

						<div class="location">
							<h3>
								<a href="single.html">Grand hotel room</a>
							</h3>
							<p>LA 325</p>

							<span class="price">$450 000</span>
						</div>
					</div>
				</div>

				<div class="most-viewed-item">
					<div class="item-cover">
						<div class="cover">
							<div class="text">
								<a href="single.html">Info</a>
								<p>Nulla posuere, egestas neque quis, suscipit eros. Vestibulum ut eros neque. Nam viverra maximus neque id convallis. In auctor eu quam sit amet</p>
							</div>
						</div>
						<img src="img/most-viewed-6.jpg" alt="item cover" />
					</div>

					<div class="item-body">
						<ul class="services">
							<li><p class="bathrooms">Bathrooms: <span>1</span></p></li>
							<li><p class="bedrooms">Bedrooms: <span>2</span></p></li>
							<li><p class="area">Area: <span>100</span></p></li>
						</ul>

						<div class="location">
							<h3>
								<a href="single.html">Grand hotel room</a>
							</h3>
							<p>LA 325</p>

							<span class="price">$450 000</span>
						</div>
					</div>
				</div>
			</li>

			<li class="item">
				<div class="most-viewed-item">
					<div class="item-cover">
						<div class="cover">
							<div class="text">
								<a href="single.html">Info</a>
								<p>Nulla posuere, egestas neque quis, suscipit eros. Vestibulum ut eros neque. Nam viverra maximus neque id convallis. In auctor eu quam sit amet</p>
							</div>
						</div>
						<img src="img/most-viewed-1.jpg" alt="item cover" />
					</div>

					<div class="item-body">
						<ul class="services">
							<li><p class="bathrooms">Bathrooms: <span>1</span></p></li>
							<li><p class="bedrooms">Bedrooms: <span>2</span></p></li>
							<li><p class="area">Area: <span>100</span></p></li>
						</ul>

						<div class="location">
							<h3>
								<a href="single.html">Grand hotel room</a>
							</h3>
							<p>LA 325</p>

							<span class="price">$450 000</span>
						</div>
					</div>
				</div>

				<div class="most-viewed-item">
					<div class="item-cover">
						<div class="cover">
							<div class="text">
								<a href="single.html">Info</a>
								<p>Nulla posuere, egestas neque quis, suscipit eros. Vestibulum ut eros neque. Nam viverra maximus neque id convallis. In auctor eu quam sit amet</p>
							</div>
						</div>
						<img src="img/most-viewed-4.jpg" alt="item cover" />
					</div>

					<div class="item-body">
						<ul class="services">
							<li><p class="bathrooms">Bathrooms: <span>1</span></p></li>
							<li><p class="bedrooms">Bedrooms: <span>2</span></p></li>
							<li><p class="area">Area: <span>100</span></p></li>
						</ul>

						<div class="location">
							<h3>
								<a href="single.html">Grand hotel room</a>
							</h3>
							<p>LA 325</p>

							<span class="price">$450 000</span>
						</div>
					</div>
				</div>
			</li>
		</ul>
	</div>
</section>

<!-- Agents Section -->
<section class="agents-section">
	<div class="container">
		<div class="section-header">
			<h1>Our agents</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec viverra erat. Aenean elit tellus mattis quis maximus et malesuada congue velit</p>
		</div>

		<div class="row">
			<div class="col-md-10">
				<div class="agents-container">
					<ul class="agents-carousel">
						<li class="item">
							<div class="agent">
								<div class="image">
									<a href="agent.html">
										<img src="img/agent-1.jpg" alt="agent photo" />
									</a>
								</div>

								<h3><a href="agent.html">John Doe</a></h3>
								<p class="position">agent</p>

								<ul class="social-block">
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-github-alt"></i></a></li>
								</ul>

								<p>Duis vel eros mi. Nunc eu sem dolor. Nulla venenatis, augue at rhoncus tincidunt, nisi dolor fringilla nibh, sed tristique quam leo vel arcu. Sed ultricies, odio vel aliquet ultricies.</p>
							</div>

							<div class="agent">
								<div class="image">
									<a href="agent.html">
										<img src="img/agent-2.jpg" alt="agent photo" />
									</a>
								</div>

								<h3><a href="agent.html">Elias Doe</a></h3>
								<p class="position">agent</p>

								<ul class="social-block">
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-github-alt"></i></a></li>
								</ul>

								<p>Duis vel eros mi. Nunc eu sem dolor. Nulla venenatis, augue at rhoncus tincidunt, nisi dolor fringilla nibh, sed tristique quam leo vel arcu. Sed ultricies, odio vel aliquet ultricies.</p>
							</div>
						</li>

						<li class="item">
							<div class="agent">
								<div class="image">
									<a href="agent.html">
										<img src="img/agent-1.jpg" alt="agent photo" />
									</a>
								</div>

								<h3><a href="agent.html">John Doe</a></h3>
								<p class="position">agent</p>

								<ul class="social-block">
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-github-alt"></i></a></li>
								</ul>

								<p>Duis vel eros mi. Nunc eu sem dolor. Nulla venenatis, augue at rhoncus tincidunt, nisi dolor fringilla nibh, sed tristique quam leo vel arcu. Sed ultricies, odio vel aliquet ultricies.</p>
							</div>

							<div class="agent">
								<div class="image">
									<a href="agent.html">
										<img src="img/agent-2.jpg" alt="agent photo" />
									</a>
								</div>

								<h3><a href="agent.html">Elias Doe</a></h3>
								<p class="position">agent</p>

								<ul class="social-block">
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-github-alt"></i></a></li>
								</ul>

								<p>Duis vel eros mi. Nunc eu sem dolor. Nulla venenatis, augue at rhoncus tincidunt, nisi dolor fringilla nibh, sed tristique quam leo vel arcu. Sed ultricies, odio vel aliquet ultricies.</p>
							</div>
						</li>
					</ul>
				</div>
			</div>

			<div class="col-md-14">
				<div class="agent featured-agent">
					<div class="row">
						<div class="col-sm-10">
							<div class="image">
								<a href="agent.html">
									<img src="img/featured-agent.jpg" alt="featured agent photo" />
								</a>
							</div>
							<h3><a href="agent.html">Ryan Elias</a></h3>
							<p class="position">agent</p>

							<ul class="social-block">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-github-alt"></i></a></li>
							</ul>
						</div>

						<div class="col-sm-14">
							<div class="featured-agent-info">
								<p>Duis vel eros mi. Nunc eu sem dolor. Nulla venenatis, augue at rhoncus tincidunt, nisi dolor fringilla nibh, sed tristique quam leo vel arcu. Sed ultricies, odio vel aliquet ultricies, turpis ipsum ultrices massa, vitae pulvinar nibh erat</p>

								<p>Duis vel eros mi. Nunc eu sem dolor. Nulla venenatis, augue at rhoncus tincidunt, nisi dolor fringilla nibh, sed tristique quam leo vel arcu. Sed ultricies, odio vel aliquet ultricies, turpis ipsum ultrices massa, vitae pulvinar nibh erat</p>

								<ul>
									<li>
										<p>Duis vel eros mi. Nunc eu sem dolor. Nulla venenatis, augue at rhoncus tincidunt, nisi dolor fringilla nibh, sed tristique quam leo vel arcu. Sed ultricies, odio vel aliquet ultricies.</p>
									</li>
									<li>
										<p>Duis vel eros mi. Nunc eu sem dolor. Nulla venenatis, augue at rhoncus tincidunt, nisi dolor fringilla nibh, sed tristique quam leo vel arcu. Sed ultricies, odio vel aliquet ultricies.</p>
									</li>
									<li>
										<p>Duis vel eros mi. Nunc eu sem dolor. Nulla venenatis, augue at rhoncus tincidunt, nisi dolor fringilla nibh, sed tristique quam leo vel arcu. Sed ultricies, odio vel aliquet ultricies.</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Featured Blogposts -->
<section class="featured-bloposts-section">
	<div class="bg-wrapper">
		<div class="container">
			<div class="section-header">
				<h1>From Blog</h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec viverra erat. Aenean elit tellus mattis quis maximus et malesuada congue velit</p>
			</div>

			<div class="row row-fit-10">
				<div class="col-md-12">
					<div class="blog-post sticky">
						<div class="post-body">
							<div class="blog-post-meta">
								<div class="post-cover">
									<a href="blogpost.html">
										<img src="img/featured-post-1.jpg" alt="featured blogpost cover" />
									</a>
								</div>

								<div class="post-author">
									<div class="image">
										<img src="img/blog-author-1.jpg" alt="blog author" />
									</div>

									<p>Robert Doe</p>
								</div>
							</div>
							<h2 class="post-title"><a href="blogpost.html">Blogpost 1</a></h2>

							<p>Duis vel eros mi. Nunc eu sem dolor. Nulla venenatis, augue at rhoncus tincidunt, nisi dolor fringilla nibh, sed tristicu.</p>

							<div class="post-meta">
								<ul class="meta">
									<li class="date">11.3</li>
									<li class="comments">&#40;2&#41;</li>
								</ul>

								<a class="post-link" href="blogpost.html">Read More</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-12">
					<div class="blog-post">
						<div class="post-body">
							<div class="blog-post-meta">
								<div class="post-cover">
									<a href="blogpost.html">
										<img src="img/featured-post-2.jpg" alt="featured blogpost cover" />
									</a>
								</div>

								<div class="post-author">
									<div class="image">
										<img src="img/blog-author-2.jpg" alt="blog author" />
									</div>

									<p>Andrew Doe</p>
								</div>
							</div>

							<h2 class="post-title"><a href="blogpost.html">Blogpost 2</a></h2>

							<p>Duis vel eros mi. Nunc eu sem dolor. Nulla venenatis, augue at rhoncus tincidunt, nisi dolor fringilla nibh, sed tristicu.</p>

							<div class="post-meta">
								<ul class="meta">
									<li class="date">11.3</li>
									<li class="comments">&#40;2&#41;</li>
								</ul>

								<a class="post-link" href="blogpost.html">Read More</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-12">
					<div class="blog-post">
						<div class="post-body">
							<div class="blog-post-meta">
								<div class="post-cover">
									<a href="blogpost.html">
										<img src="img/featured-post-3.jpg" alt="featured blogpost cover" />
									</a>
								</div>

								<div class="post-author">
									<div class="image">
										<img src="img/blog-author-3.jpg" alt="blog author" />
									</div>

									<p>Roberta Doe</p>
								</div>
							</div>

							<h2 class="post-title"><a href="blogpost.html">Blogpost 3</a></h2>

							<p>Duis vel eros mi. Nunc eu sem dolor. Nulla venenatis, augue at rhoncus tincidunt, nisi dolor fringilla nibh, sed tristicu.</p>

							<div class="post-meta">
								<ul class="meta">
									<li class="date">11.3</li>
									<li class="comments">&#40;2&#41;</li>
								</ul>

								<a class="post-link" href="blogpost.html">Read More</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-12">
					<div class="blog-post">
						<div class="post-body">
							<div class="blog-post-meta">
								<div class="post-cover">
									<a href="blogpost.html">
										<img src="img/featured-post-4.jpg" alt="featured blogpost cover" />
									</a>
								</div>

								<div class="post-author">
									<div class="image">
										<img src="img/blog-author-4.jpg" alt="blog author" />
									</div>

									<p>Anastasia Doe</p>
								</div>
							</div>

							<h2 class="post-title"><a href="blogpost.html">Blogpost 4</a></h2>

							<p>Duis vel eros mi. Nunc eu sem dolor. Nulla venenatis, augue at rhoncus tincidunt, nisi dolor fringilla nibh, sed tristicu.</p>

							<div class="post-meta">
								<ul class="meta">
									<li class="date">11.3</li>
									<li class="comments">&#40;2&#41;</li>
								</ul>

								<a class="post-link" href="blogpost.html">Read More</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<a class="button theme-button-2" href="blog.html">Go to blog</a>
		</div>
	</div>
</section>