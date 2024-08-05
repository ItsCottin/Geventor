package rcf.geventor.services.util;

import org.springframework.context.i18n.LocaleContextHolder;

import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.ResourceBundle;

/**
 * Utility class which loads the applications message resource bundle. This class can be used to internationalize string
 * values that are located in Beans.
 */
public class MessageBundleLoader {

    public static final String MESSAGE_PATH = "resources.messages";

    private static HashMap<String, ResourceBundle> messageBundles = new HashMap<>();

    /**
     * Gets a string for the given key from this resource bundle or one of its parents.
     *
     * @param key the key for the desired string
     * @return the string for the given key. If the key string value is not found the key itself is returned.
     */
    public static String getMessage(String key) {
        return getMessage(key, new Object[]{});
    }

    /**
     * Gets a string for the given key from this resource bundle or one of its parents.
     *
     * @param key    the key for the desired string
     * @param params message parameters.
     * @return the string for the given key. If the key string value is not found the key itself is returned.
     */
    public static String getMessage(String key, Object... params) {
        if (key == null) {
            return null;
        }
        try {
            Locale locale = LocaleContextHolder.getLocale();
            ResourceBundle messages = messageBundles.get(locale.toString());
            if (messages == null) {
                messages = ResourceBundle.getBundle(MESSAGE_PATH, locale);
                messageBundles.put(locale.toString(), messages);
            }
            return MessageFormat.format(messages.getString(key), params);
        } catch (Exception e) {
            return key;
        }
    }
}
