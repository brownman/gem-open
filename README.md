= gem-open

gem-open opens the source directory of the given gem.

== Examples

To open the directory of the latest version of the given gem.

<pre><code>$ gem open rake</code></pre>

To open the directory of a specific version.

<pre><code>$ gem open rake -v 0.8.7</code></pre>

To open the directory by Mac OS X Finder.

<pre><code>$ GEM_EDITOR=open gem open rake</code></pre>

The program used to open the directory is taken from first found
one from the environment variables GEM_EDITOR, VISUAL or EDITOR.
