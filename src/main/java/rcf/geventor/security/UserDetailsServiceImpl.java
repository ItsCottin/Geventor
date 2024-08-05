package rcf.geventor.security;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import rcf.geventor.data.Role;
import rcf.geventor.data.UsuarioDAO;
import rcf.geventor.data.Usuario;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    private final UsuarioDAO userRepository;

    public UserDetailsServiceImpl(UsuarioDAO userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Usuario user = userRepository.findByLogin_v2(username);
        if (user == null) {
            throw new UsernameNotFoundException("No user present with username: " + username);
        } else {
            return new org.springframework.security.core.userdetails.User(user.getLogin(), user.getSenha(),
                    getAuthorities(user));
        }
    }

    private static List<GrantedAuthority> getAuthorities(Usuario user) {
        List<GrantedAuthority> authorities = new ArrayList<>();
        if (user.getRoles() == Role.ADMIN) {
            authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
            authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
        } else {
            authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
        }
        return authorities;
    }

}
