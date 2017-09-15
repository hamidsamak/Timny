<!DOCTYPE html>
<html dir="{$this->direction}" lang="{$this->langcode}">
<head>
<title>{$this->title}</title>
<meta charset="utf8">
<link rel="stylesheet" type="text/css" href="{BASE}/misc/style.css">
{$this->head}</head>
<body>

	<header>
		<div class="container">
			<h1>Timny</h1>
		</div>
	</header>

	<section>
		<div class="container">
			<div id="sidebar">
				<ul>
					<li><a href="{BASE}">Home</a></li>
					<li><a href="{BASE}?q=examples">Examples</a></li>
				</ul>
			</div>
			<div id="content">{$this->content}</div>
			<div style="clear:both;"></div>
		</div>
	</section>

	<footer>
		<div class="container">
			<a href="https://github.com/hamidsamak/timny" target="_blank">Timny 0.7</a> &copy; {date('Y')} - <i>page generated in {round(microtime(true) - $GLOBALS['start'], 5)} seconds</i>
		</div>
	</footer>

</body>
</html>