using Microsoft.AspNetCore.Mvc;
using MovieTheatreWebApp.Controllers;
using MovieTheatreWebApp.Models;

namespace MovieTestProject
{
    public class ProductControllerTest
    {
        [Fact]
        public void ProductCount()
        {//Arrange
            var controller = new ProductController();

            var result = (controller.Index()) as ViewResult;
            //Act
            var productList = (List<Product>?)result?.ViewData.Model;
            //Assert
            Assert.Equal(3, productList?.Count);  
        }
        [Fact]
        public void DetailsReturnsViewName()
        {
            var controller = new ProductController();
            var result = (controller.Index()) as ViewResult;
            Assert.Equal("Details",result?.ViewName);

        }
        [Fact]
        public void DetailsRedirectToIndexIfIdLessThenOne()
        {
            var controller = new ProductController();
            var result = (RedirectToActionResult)controller.Details(-1) ;
            Assert.Equal("Index", result.ActionName);

        }
        [Fact]
        public void DetailsReturnsViewData()
        {
            var controller = new ProductController();
            var result = controller.Details(2) as ViewResult;
            var product = result?.ViewData?.Model;
            Assert.Equal("Liger Movie", product?.ToString());
        }
        [Fact]
        public void DetailsReturnsViewData1()
        {
            var controller = new ProductController();
            var result = controller.Details(2) as ViewResult;
            var product = result?.ViewData?.Model;
            Assert.Equal("KGF Movie", product?.ToString());
        }


    }
}