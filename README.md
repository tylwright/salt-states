# Salt States
A collection of useful Salt states, formulas, and templates.

## How to Run
Since some of these states are deeply nested, you may be able to perform a series of tasks with the parent state.  For example:

vim will be installed:
```
salt-call grains.append roles linux.packages.editors.vim
```

Emacs, gedit, nano, and vim will be installed:
```
salt-call grains.append roles linux.packages.editors
```

## States
### Apache
<table>
    <tr>
        <th>URL</th>
        <td>
            <a href='https://httpd.apache.org'>https://httpd.apache.org</a>
        </td>
    </tr>
    <tr>
        <th>Description</th>
        <td>Web server</td>
    </tr>
</table>
<dl>
  <dt>linux.packages.web-servers.apache</dt>
  <dd>Installs Apache (CentOS 7)</dd>
</dl>

### Emacs
<table>
    <tr>
        <th>URL</th>
        <td>
            <a href='https://www.gnu.org/software/emacs/'>https://www.gnu.org/software/emacs/</a>
        </td>
    </tr>
    <tr>
        <th>Description</th>
        <td>Text editor</td>
    </tr>
</table>
<dl>
  <dt>linux.packages.editors.emacs</dt>
  <dd>Installs Emacs</dd>
</dl>

### Gedit
<table>
    <tr>
        <th>URL</th>
        <td>
            <a href='https://wiki.gnome.org/Apps/Gedit'>https://wiki.gnome.org/Apps/Gedit</a>
        </td>
    </tr>
    <tr>
        <th>Description</th>
        <td>Graphical text editor</td>
    </tr>
</table>
<dl>
  <dt>linux.packages.editors.gedit</dt>
  <dd>Installs gedit</dd>
</dl>

### GitLab
<table>
    <tr>
        <th>URL</th>
        <td>
            <a href='https://about.gitlab.com'>https://about.gitlab.com</a>
        </td>
    </tr>
    <tr>
        <th>Description</th>
        <td>Source control (git) server and CI tools</td>
    </tr>
</table>
<dl>
  <dt>linux.packages.source-control.gitlab</dt>
  <dd>Installs GitLab (CE) (CentOS 7)</dd>
  <dt>linux.repositories.gitlab</dt>
  <dd>Installs GitLab (CE) repo (CentOS 7)</dd>
</dl>

### MySQL
#### MariaDB
<table>
    <tr>
        <th>URL</th>
        <td>
            <a href='https://mariadb.org'>https://mariadb.org</a>
        </td>
    </tr>
    <tr>
        <th>Description</th>
        <td>Database based on MySQL</td>
    </tr>
</table>
<dl>
  <dt>linux.packages.databases.mysql</dt>
  <dd>Installs MariaDB client and server (CentOS 7)</dd>
  <dt>linux.packages.databases.mysql.client</dt>
  <dd>Installs MariaDB client (CentOS 7)</dd>
  <dt>linux.packages.databases.mysql.server</dt>
  <dd>Installs MariaDB server (CentOS 7)</dd>
</dl>

### nano
<table>
    <tr>
        <th>URL</th>
        <td>
            <a href='https://www.nano-editor.org'>https://www.nano-editor.org</a>
        </td>
    </tr>
    <tr>
        <th>Description</th>
        <td>Text editor</td>
    </tr>
</table>
<dl>
  <dt>linux.packages.editors.nano</dt>
  <dd>Installs nano</dd>
</dl>

### Postfix
<table>
    <tr>
        <th>URL</th>
        <td>
            <a href='http://www.postfix.org'>http://www.postfix.org</a>
        </td>
    </tr>
    <tr>
        <th>Description</th>
        <td>Send mail service</td>
    </tr>
</table>
<dl>
  <dt>linux.packages.communications.postfix</dt>
  <dd>Installs Postfix (CentOS 7)</dd>
  <dt>linux.packages.communications.postfix.server</dt>
  <dd>Installs Postfix (CentOS 7)</dd>
</dl>

### Python
<table>
    <tr>
        <th>URL</th>
        <td>
            <a href='https://www.python.org'>https://www.python.org</a>
        </td>
    </tr>
    <tr>
        <th>Description</th>
        <td>Programming language</td>
    </tr>
</table>
<dl>
  <dt>linux.packages.languages.python</dt>
  <dd>Installs Python 2.7</dd>
</dl>

### SSH
#### OpenSSH
<table>
    <tr>
        <th>URL</th>
        <td>
            <a href='https://www.openssh.com'>https://www.openssh.com</a>
        </td>
    </tr>
    <tr>
        <th>Description</th>
        <td>Like telnet but secure</td>
    </tr>
</table>
<dl>
  <dt>linux.packages.connectivity.ssh</dt>
  <dd>Installs OpenSSH</dd>
  <dt>linux.packages.connectivity.ssh.server</dt>
  <dd>Installs OpenSSH</dd>
</dl>

### Vim
<table>
    <tr>
        <th>URL</th>
        <td>
            <a href='https://www.vim.org'>https://www.vim.org</a>
        </td>
    </tr>
    <tr>
        <th>Description</th>
        <td>Text editor</td>
    </tr>
</table>
<dl>
  <dt>linux.packages.editors.vim</dt>
  <dd>Installs vim</dd>
</dl>

### Zabbix
<table>
    <tr>
        <th>URL</th>
        <td>
            <a href='https://www.zabbix.com'>https://www.zabbix.com</a>
        </td>
    </tr>
    <tr>
        <th>Description</th>
        <td>Alerting software used to monitor hosts and their services</td>
    </tr>
</table>
<dl>
  <dt>linux.packages.alerting.zabbix</dt>
  <dd>Installs Zabbix {repo, server, agent}, Apache, and MariaDB (CentOS 7)</dd>
  <dt>linux.packages.alerting.zabbix.agent</dt>
  <dd>Installs Zabbix agent (CentOS 7)</dd>
  <dt>linux.packages.alerting.zabbix.server</dt>
  <dd>Installs Zabbix server, Apache, and MariaDB (CentOS 7)</dd>
</dl>

## Notes
This repo contains a collection of states that I find useful.  Please note that the structure of these states is unorthodox; the structure usually isn't this nested.  For me, I prefer this structure but you may wish to deviate from it.
