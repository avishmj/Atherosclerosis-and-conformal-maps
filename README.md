# A New Approach To Calculating Fiber Fields In 2D Vessel Cross Sections Using Conformal Maps (MATLAB files)

**seg.m (Developed by Dr. Pak-Wing Fok):** Gives the coefficients of the Fourier series representation of the Jordan boundaries of the physical cross section. It takes as input the (x,y) coordinates of the Jordan boundaries.

**FS_IEL.m:** Implements seg.m to find the Fourier series representation of the Jordan boundaries.

**chebtest.m (Developed and Provided by Dr. Lloyd N. Trefethen):** This code should be executed first to establish the functions necessary to run the conformal mapping codes.

**VAorthog.m (Developed and Provided by Dr. Lloyd N. Trefethen):** This sets up the Vandermonde-Arnoldi orthogonalization necessary to add stability and ensure convergence of the conformal map

**conformal2.m (Developed and Provided by Dr. Lloyd N. Trefethen):** This returns the function handles for the forward and the inverse confomal maps along with the conformal modulus taking as input the points on the Jordan boundaries of a smooth doubly connected domain. 

**conformalmapping_end_IEL.m:** Uses conformal2.m for creating the conformal map and plotting the physical cross section and the corresponding reference annulus. It takes as input the points on the Jordan boundaries of a smooth doubly connected domain.

**inverseprimeratappr.m:** Creates the barycentric rational approximation for the inverse conformal maps for the intima.

**med_inverseprimeratappr.m** Creates the barycentric rational approximation for the inverse conformal maps for the media

**ad_inverseprimeratappr.m** Creates the barycentric rational approximation for the inverse conformal maps for the adventitia

**fast3layerfiberfield2.m** Plots the fiber field of the arterial cross section using inverseprimeratappr.m, med_inverseprimeratappr.m, ad_inverseprimeratappr.m

**NOTE 1:** The inverse conformal map g in the paper is represented as finv in the MATLAB codes

**NOTE 2:** The codes must be executed in order as given in the above list
