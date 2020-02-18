$NetBSD$

--- configure.py.orig	2020-01-27 05:37:35.000000000 -0500
+++ configure.py	2020-02-06 02:15:38.000000000 -0500
@@ -261,7 +262,7 @@
 if '--bootstrap' in configure_args:
     configure_args.remove('--bootstrap')
 n.variable('configure_args', ' '.join(configure_args))
-env_keys = set(['CXX', 'AR', 'CFLAGS', 'CXXFLAGS', 'LDFLAGS'])
+env_keys = set(['CXX', 'AR', 'CFLAGS', 'CPPFLAGS', 'CXXFLAGS', 'LDFLAGS'])
 configure_env = dict((k, os.environ[k]) for k in os.environ if k in env_keys)
 if configure_env:
     config_str = ' '.join([k + '=' + pipes.quote(configure_env[k])
@@ -405,15 +406,11 @@
         return "'%s'" % str.replace("'", "\\'")
     return str
 
-if 'CFLAGS' in configure_env:
-    cflags.append(configure_env['CFLAGS'])
-    ldflags.append(configure_env['CFLAGS'])
-if 'CXXFLAGS' in configure_env:
-    cflags.append(configure_env['CXXFLAGS'])
-    ldflags.append(configure_env['CXXFLAGS'])
+cflags += configure_env.get('CFLAGS', '').split(' ')
+cflags += configure_env.get('CPPFLAGS', '').split(' ')
+cflags += configure_env.get('CXXFLAGS', '').split(' ')
 n.variable('cflags', ' '.join(shell_escape(flag) for flag in cflags))
-if 'LDFLAGS' in configure_env:
-    ldflags.append(configure_env['LDFLAGS'])
+ldflags += configure_env.get('LDFLAGS', '').split(' ')
 n.variable('ldflags', ' '.join(shell_escape(flag) for flag in ldflags))
 n.newline()
 
