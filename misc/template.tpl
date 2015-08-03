<!DOCTYPE html>
<html dir="{$this->direction}">
<head>
<title>{$this->title}</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="{BASE}/misc/style.css" />
{$this->head}</head>
<body>
<div id="header">
	<div class="fix">
		<h1>Timny</h1>
		<h2>tiny php framework</h2>
	</div>
</div>

<div class="fix">
	<div id="wrapper">
		<div id="sidebar">
			<ul>
				<li><a href="{BASE}">Home</a></li>
				<li><a href="{BASE}?q=examples">Examples</a></li>
			</ul>
		</div>
		<div id="content">{$this->content}</div>
		<div style="clear:both;"></div>
	</div>
	<div style="clear:both;"></div>
</div>

<div class="fix">
	<div id="footer">
		<a href="https://github.com/hamidsamak/Timny" target="_blank">Timny 0.6</a> &copy; 2012 - <i>page generated in {round(microtime(true) - $GLOBALS['start'], 5)} seconds</i>
	</div>
</div>
</body>
</html>