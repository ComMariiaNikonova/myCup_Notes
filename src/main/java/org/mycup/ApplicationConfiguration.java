package org.mycup;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@ComponentScan(basePackages = "org.mycup")
@Import({Neo4jConfig.class, MvcConfiguration.class, SecurityConfiguration.class})
public class ApplicationConfiguration {

    @Bean
    public ApplicationContextProvider applicationContextProvider() {
        return new ApplicationContextProvider();
    }

}
