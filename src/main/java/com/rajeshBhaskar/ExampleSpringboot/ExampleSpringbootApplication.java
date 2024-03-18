package com.rajeshBhaskar.ExampleSpringboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
//@EnableSwagger2
public class ExampleSpringbootApplication {

    public static void main(String[] args) {
        SpringApplication.run(ExampleSpringbootApplication.class, args);
    }

    /*	@Bean
        public Docket productApi() {
            return new Docket(DocumentationType.SWAGGER_2).select()
                    .apis(RequestHandlerSelectors.basePackage("com.tutorialspoint.swaggerdemo")).build();
        }*/
/*    @Bean
    public RouteLocator routerBuilder(RouteLocatorBuilder routeLocatorBuilder) {
        return routeLocatorBuilder.routes()
                .route("Microservice1", r -> r.path("/serviceA/**")
                        .uri("http://localhost:8081/"))
                .route("microservice2", r -> r.path("/serviceB/**")
                        .uri("http://localhost:8082/")).build();
    }*/
}
