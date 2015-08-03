<title>Examples</title>

<b>TPL Example:</b>
<ol>
	<li>Create your page file in /data directory (my-tpl-page.tpl)</li>
	<li>Write anything in the file</li>
	<li>Browse it using index.php?q=my-tpl-page (also /my-tpl-page if rewrite mod is enabled)</li>
</ol>

<b>my-tpl-page.tpl:</b>
<pre>
&lt;title&gt;my title&lt;/title&gt;
&lt;head&gt;&lt;style type="text/css"&gt;body &#123; background: black; &#125;&lt;/style&gt;&lt;/head&gt;
&lt;php&gt;
$today = date('Y/m/d');
&lt;/php&gt;

Today is: &#123;$today&#125;

Including an external file: &#123;/default.tpl&#125;
</pre>

<hr size="1" style="color:#CCCCCC;" />

<b>PHP Example:</b>
<ol>
	<li>Create your page file in /data directory (my-php-page.php)</li>
	<li>Write PHP codes there</li>
	<li>Browse it using index.php?q=my-php-page (also /my-php-page if rewrite mod is enabled)</li>
</ol>

<b>my-php-page.php:</b>
<pre>
&lt;?php

$this-&gt;title = 'my title';
$this-&gt;head = '&lt;style type="text/css"&gt;body &#123; background: black; &#125;&lt;/style&gt;';

$today = date('Y/m/d');

$this-&gt;content = 'Today is: ' . $today;

?&gt;
</pre>

<hr size="1" style="color:#CCCCCC;" />

<b>Directories:</b>
<p>Your file address is depended on where is the file located. For example for browsing the page under three directories, we must call the file with full path.<br /><br />File: <i>/data/articles/hello-world.tpl</i><br />Address in browser: <i>index.php?q=articles/hello-world</i></p>

<hr size="1" style="color:#CCCCCC;" />

<b>Default pages:</b>
<p>When the browser address call a directory with no file, the default page could be launch. For example when the browser call <i>index.php?q=articles</i>, at first the Timny try to load <i>articles.tpl</i> or <i>articles.php</i>, if not the <i>/data/articles/default.tpl</i> or <i>/data/articles/default.php</i> will be load.</p>

<hr size="1" style="color:#CCCCCC;" />

<b>Global pages:</b>
<p>Sometimes we have a long and variable address which we want to refer to a single page. For example we want to refer <i>index.php?=search/query</i> and <i>index.php?q=search/another/query</i> to a single page.<br />In this case we can create a file called <i>/data/search/global.tpl</i> and create content for every browser request using this file.</p>

<hr size="1" style="color:#CCCCCC;" />

<b>Extensions:</b>
<p>Extensions are the objects and libraries which we use them in our codes. The files with php and inc extentions under /exts directory will be included in Timny and there is no need to include them.</p>

<b>/exts/test.class.php:</b>
<pre>
&lt;?php

class Test
&#123;
	function get_time()
	&#123;
		return time();
	&#125;
&#125;

?&gt;
</pre>

<b>Usage (my-file.tpl):</b>

<pre>
&lt;php&gt;
$class['test'] = new Test;
&lt;/php&gt;

&#123;$class['test']-&gt;get_time()&#125;
</pre>

<b>or (my-file.php):</b>

<pre>
&lt;?php

$class['test'] = new Test;
$this->content = $class['test']-&gt;get_time();

?&gt;
</pre>