package org.mycup;

import org.mycup.services.MyCupAuthenticationFailureHandler;
import org.mycup.services.MyCupAuthenticationSuccessHandler;
import org.mycup.services.MyCupUserDetailsService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

@Configuration
@EnableWebMvcSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(myCupUserDetailsService());
/*                .inMemoryAuthentication()
                .withUser("user").password("wakeup").roles("USER").and()
                .withUser("admin").password("wakeup").roles("USER", "ADMIN");*/
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable()
            .formLogin()
                .loginPage("/login")
                .loginProcessingUrl("/login/j_spring_security_check")
                .usernameParameter("j_username")
                .passwordParameter("j_password")
                .permitAll()
/*                .successHandler(successHandler())
                .failureHandler(failureHandler())*/
                .failureUrl("/login?login_error=true")
                .defaultSuccessUrl("/home")
            .and()
            .logout()
                .logoutUrl("/logout/j_spring_security_logout")
                .logoutSuccessUrl("/login")
            .and()
            .authorizeRequests()
                .antMatchers("/assets/**")
                .permitAll()
                .antMatchers("/layout/**")
                .permitAll()
                .antMatchers("/login")
                .permitAll()
                .antMatchers("/auth/**")
                .permitAll()
/*                .antMatchers("/protected*//**")
                .permitAll()*/
                .anyRequest().authenticated();


    }
/*    @Bean
    public SimpleUrlAuthenticationFailureHandler failureHandler() {
        return new SimpleUrlAuthenticationFailureHandler();
    }*/


    @Bean
    public AuthenticationFailureHandler failureHandler() {
        return new MyCupAuthenticationFailureHandler();
    }
/*    @Bean
    public SimpleUrlAuthenticationSuccessHandler successHandler() {
        return new SimpleUrlAuthenticationSuccessHandler();
    }*/

        @Bean
    public AuthenticationSuccessHandler successHandler() {
        return new MyCupAuthenticationSuccessHandler();
    }

    @Bean
    public MyCupUserDetailsService myCupUserDetailsService() {
        return new MyCupUserDetailsService();
    }

}
