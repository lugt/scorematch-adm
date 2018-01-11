package smart.mall.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import smart.mall.common.UtilContext;
import smart.mall.domain.SysUserDO;
import smart.mall.service.SysUserService;
import com.google.code.kaptcha.impl.DefaultKaptcha;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import smart.mall.service.SysUserService;

/**
 * 页面导航
 */
@Controller
public class IndexController extends AbstractController {

	@Autowired
	private DefaultKaptcha captchaProducer;

	@Autowired
	private SysUserService sysUserService;

	@RequestMapping("/")
	public String index() {
		return "redirect:/login";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		// 操作注销
		session.invalidate();
		return "redirect:/login";
	}

	@RequestMapping("/admin")
	public String admin() {
		return "index";
	}

	@Autowired
	private HttpServletRequest request;

	@RequestMapping("/examfile/*")
	@ResponseBody
	public byte[] getFile() throws IOException {
		String path = request.getServletPath();
		if(path.contains("$") || path.contains("..") || path.length() < 2){
			return "{\"ret\":\"-1000\",\"msg\":\"null\"}".getBytes("utf-8");
		}
		File f = new File(path.substring(1));
		String absolute = f.getAbsolutePath();
		logger.debug(absolute);
		FileInputStream fis = new FileInputStream(f);
		int max = fis.available();
		if(max > 30000*1000) {
			// 30M
			return "{\"ret\":\"-1000\",\"msg\":\"length\"}".getBytes("utf-8");
		}else{
			byte[] reader = new byte[max];
			fis.read(reader);
			return reader;
		}		
	}

	@RequestMapping(value = "/code", method = RequestMethod.GET)
	public ResponseEntity<byte[]> code() {
		String code = captchaProducer.createText();
		BufferedImage bi = captchaProducer.createImage(code);
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.IMAGE_GIF);
		ByteArrayOutputStream out = null;
		try {
			UtilContext.getCurrentSession().setAttribute("code", code);
			out = new ByteArrayOutputStream();
			ImageIO.write(bi, "gif", out);
			return new ResponseEntity<byte[]>(out.toByteArray(), headers, HttpStatus.CREATED);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (out != null) {
				try {
					out.close();
				} catch (IOException e) {
				}
			}
		}
		return null;
	}

	/**
	 * 
	 * @param u
	 *            用户名
	 * @param p
	 *            密码
	 * @param c
	 *            验证码
	 * @return
	 */
	@RequestMapping("/login")
	public String login(Model model, HttpSession session, String u, String p, String c, @RequestParam(name="from",required=false) String from) {

		// 验证码检测
		Object code = session.getAttribute("code");
		if (!StringUtils.isEmpty(u) && !StringUtils.isEmpty(u)) {
			if (code == null || !code.equals(c)) {
				model.addAttribute("prompt", "验证码错误");
				model.addAttribute("loginName", u);
				model.addAttribute("password", p);
				return "login";
			} else {
				session.removeAttribute("code");
				SysUserDO sysUser = this.sysUserService.verifyUser(u, p);
				if (sysUser == null) {
					model.addAttribute("prompt", "用户名或者密码错误");
					model.addAttribute("loginName", u);
					model.addAttribute("password", p);
					return "login";
				} else {
					session.setAttribute("sysUser", sysUser);
					if(from == null || from.isEmpty()) {
						return "redirect:/admin";
					} else if(from.contains("from")){
						return "redirect:/admin";
					}else{
						return "redirect:"+from;
					}

				}
			}
		}
		// 登录页面
		return "login";
	}

}
