using LeGia.Services.IRepository;
using LeGia.Services.Repository;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using System;

namespace LeGia
{
    public class Startup
    {
        public Startup(IHostingEnvironment env)
        {
            var builder = new ConfigurationBuilder()
                .SetBasePath(env.ContentRootPath)
                .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
                .AddJsonFile($"appsettings.{env.EnvironmentName}.json", optional: true)
                .AddEnvironmentVariables();
            Configuration = builder.Build();
        }

        public static IConfigurationRoot Configuration { get; set; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            // Add framework services.
            services.AddMvc();

            services.AddAuthentication(authen =>
            {
                authen.DefaultAuthenticateScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                authen.DefaultChallengeScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                authen.DefaultSignInScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                authen.DefaultSignOutScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                authen.DefaultScheme = CookieAuthenticationDefaults.AuthenticationScheme;
            }).AddCookie(CookieAuthenticationDefaults.AuthenticationScheme, cookie =>
            {
                cookie.LoginPath = new PathString("/admin/Account/Login");
                cookie.AccessDeniedPath = new PathString("/admin/Account/Forbidden/");
                cookie.ExpireTimeSpan = TimeSpan.FromHours(1);
            });

            //dependences
            services.AddSingleton<ICompanyRepository, CompanyRepository>();
            services.AddSingleton<ICategoryRepository, CategoryRepository>();
            services.AddSingleton<IImageRepository, ImageRepository>();
            services.AddSingleton<IPostRepository, PostRepository>();
            services.AddSingleton<IContactRepository, ContactRepository>();
            services.AddSingleton<IUserRepository, UserRepository>();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env, ILoggerFactory loggerFactory)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseBrowserLink();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
            }

            app.UseAuthentication();

            app.UseStaticFiles();

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                    name: "areaRoute",
                    template: "{area:exists}/{controller=Account}/{action=Login}/{id?}");

                routes.MapRoute(
                    name: "default",
                    template: "{controller=Home}/{action=Index}/{alias?}");
            });
        }
    }
}
