package org.springframework.sandbox.netty;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.ChannelOption;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.nio.NioServerSocketChannel;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.PropertySource;

import java.net.InetSocketAddress;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import io.netty.handler.logging.LogLevel;
import io.netty.handler.logging.LoggingHandler;
import com.zbum.example.socket.server.netty.ChannelRepository;
import com.zbum.example.socket.server.netty.TCPServer;
import com.zbum.example.socket.server.netty.handler.SomethingChannelInitializer;

@SpringBootApplication
@PropertySource(value= "classpath:/properties/local/nettyserver.properties")
public class MyServer {
	private final static Logger logger = LoggerFactory.getLogger(MyServer.class);

	//private final int port;

	//public MyServer(int port) {
	//	this.port = port;
	//}

	//@Value("${server.port}")
	private int port = 8041;

	private int keepAlive = 1;

	private int bossCount = 4;
	private int workerCount = 8;

	public void run() throws Exception {
		ServerBootstrap server = new ServerBootstrap();
		NioEventLoopGroup group = new NioEventLoopGroup();
		try {
			server.group(new NioEventLoopGroup(), new NioEventLoopGroup())
					.channel(NioServerSocketChannel.class)
					.localAddress(port)
					.childHandler(new DispatcherServletChannelInitializer());

			logger.info("Netty server has started on port : " + port);

			server.bind().sync().channel().closeFuture().sync();
		}
		finally {
			group.shutdownGracefully();
		}
	}

	public static void main(String[] args) throws Exception {

		ConfigurableApplicationContext ctx = SpringApplication.run(MyServer.class, args);
		ctx.getBean(MyServer.class).run();
		//new MyServer().run();
	}
}
