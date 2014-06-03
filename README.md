#My Emacs config files

"~/.emacs.d/" by @[xtetsuji](https://twitter.com/xtetsuji)

This repositry is my emacs config files.

Based on https://github.com/typester/emacs-config-sample

If you use it, clone this as your "~/.emacs.d/".

```shell
if [ -d "~/.emacs.d/" ] ; then
   echo "Already exists \"~/.emacs.d/\". rename it to \".emacs.d.bak\"."
   mv ~/.emacs.d ~/.emacs.d.bak
fi
git clone git@github.com:xtetsuji/emacs-config.git ~/.emacs.d
```

OGATA Tetsuji at 2014/02/03.

----

xtetsuji の Emacs 設定ファイルです。上述のように git clone することで使えるようになります。必要な部分だけ取り出してもいいですし、特にこだわりなければそのままcloneしてくださっても構いません。

ただ2014年4月現在、この設定は重いかなーと思っていて、少し設定を削減する方向で考えています。

2014年6月に設定をガシガシと削っています。

OGATA Tetsuji at 2014/04/19
OGATA Tetsuji at 2014/06/03
