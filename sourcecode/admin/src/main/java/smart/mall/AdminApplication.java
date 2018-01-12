package smart.mall;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import smart.mall.common.CommonHandlerInterceptor;

@SpringBootApplication
@EnableAsync
@EnableConfigurationProperties
@EnableScheduling
//@EnableSpringHttpSession
//@EnableRedisHttpSession
public class AdminApplication extends WebMvcConfigurerAdapter {

	private static final Logger logger = LoggerFactory.getLogger(AdminApplication.class);

	@Autowired
	private CommonHandlerInterceptor commonHandlerInterceptor;

	public static void main(String[] args) {
		// http://localhost:8080/admin/fpExamDefine/list
		// http://localhost:8080/admin
		// 有关 freemarker (ftl) 语法, 参考官网用法
		// http://freemarker.apache.org/docs/ref_directives.html
		logger.info("系统启动中......");
		SpringApplication.run(AdminApplication.class, args);
	}

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(commonHandlerInterceptor);
		super.addInterceptors(registry);
	}

}
