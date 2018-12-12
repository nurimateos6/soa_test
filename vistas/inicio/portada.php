<div id="main">
	<div class="inner">
		<h1>Tu test</h1>
		<section>
			<h2>Intalación mediante PIP para MAC OSX</h2>
			<p>Ejecutar el siguiente código en la Terminal</p>
			<pre><code class="console">
promt$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
promt$ export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
promt$ brew update
promt$ brew install python  # Python 3
promt$ sudo pip3 install -U virtualenv  # system-wide install
promt$ pip3 install --user --upgrade tensorflow  # instalar en directorio $HOME
			</code></pre>
			<h2>Instalar dependencias PIP</h2>
			<pre><code class="console">
promt$ pip install -U --user pip six numpy wheel mock
promt$ pip install -U --user keras_applications==1.0.5 --no-deps
promt$ pip install -U --user keras_preprocessing==1.0.3 --no-deps
			</code></pre>
			<h2>Iniciar Tensorboard</h2>
			<pre><code class="console">
promt$ tensorboard --logdir=./logs
			</code></pre>

		</section>

	<pre><code class="javascript">
function $initHighlight(block, cls) {
  try {
    if (cls.search(/\bno\-highlight\b/) != -1)
      return process(block, true, 0x0F) +
             ` class="${cls}"`;
  } catch (e) {
    /* handle exception */
  }
  for (var i = 0 / 2; i < classes.length; i++) {
    if (checkCondition(classes[i]) === undefined)
      console.log('undefined');
  }
}

export  $initHighlight;
		
}</code></pre>
<pre><code class="json" >{
  "name": "John",
  "age": 30,
  "cars": [{
      "name": "Ford",
      "models": ["Fiesta", "Focus", "Mustang"]
    },
    {
      "name": "BMW",
      "models": ["320", "X3", "X5"]
    },
    {
      "name": "Fiat",
      "models": ["500", "Panda"]
    }
  ]
}
</code></pre>
	</div>
</div>

