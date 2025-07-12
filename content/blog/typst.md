+++
title = "Typst is Love"
date = 2025-07-12
[taxonomies]
writings=["Articles"]
[extra]
katex = true
+++

Let me start by saying, I just love typst. A bit too must at this point. Whenever I get the chance I just sit down and open typst. Electricity goes down, I open typst. I feel bored I open typst.

_Now that I think of it, I don't have anything else to do on my laptop and only interactive thing is typst._ 

You might be thinking what `typst` is. So, let me introduce you to typst.

## Introduction to typst

Typst is a typesetting software that help you make documents. And since documents are the things we all just need to make, it is one of the most essential piece of software for everyone.

It is no new idea [_I mean, it is a new idea but, making documents using a typesetting in plaintext has been a thing since ages._] There has been LaTeX and Markdown and org and other typesetting software and each of them have their own strengths and weaknesses. Typst aims to achieve all their strengths and none of their weaknesses. At least, that is how I see typst to be.

### Comparing Typst with other typesetting software

|Properties|Typst|LaTex|Markdown|Org|
|---|---|---|---|---|
|Fast Preview| Yes| No| Yes| Yes|
|Lightweight| Yes| No| Yes| No|
|Extensible|Yes| Yes| No| Yes|
|Simple Syntax|Yes| No| Yes| Yes|
|Platform Agnostic|Yes| Yes| Yes| No|
|Automatic Dependency Management|Yes| No| Not Supported| Not Supported|
|Single Binary|Yes| No| No| No|

Let me tell you what all these means too:  
1. **Fast Preview:** If you can see the changes live as you type.  

2. **Lightweight**: If it can be installed quickly and has a small footprint(storage consumption).  

3. **Extensible:** If modules/packages can be made and used as dependencies that you can just import. Like templates, styles and formatting that can just be imported to use.  

4. **Simple Syntax:** If you can do the basic formatting without needing to know complex syntax for it. For e.g.
```

"\list{begin} \item{<Text>} \list{end}" makes a bullet list in LaTeX
"- <Text>" Makes a bullet list in Typst
"* <Text>" Makes a bullet list in Markdown
"- <Text>" Makes a bullet list in Org

```

5. **Platform Agnostic**: Here technically every software is platform agnostic and can be used in any text editor of your choice but the complete "Org-mode" is only available in `emacs` and is very difficult to replicate it anywhere else.  

6. **Automatic Dependency Management:** I only realised that it is a thing when I actually used Typst, but if you import something, the LSP automatically installs the module if it isn't available on your device. Latex cannot do that and the other software are not extensible so, you cannot use modules at all.

7. **Single Binary:** This makes typst very portable and easy to install since it doesn't need to rely on other packages in the system to work. Which is not the case with Latex at all and not for others too unless they are, in that case, sorry I didn't know.

## How I use it
I use typst with my text editor of choice `neovim`. If you ask a person who uses Neovim as their text editor, they'll say how much they hate it when they have to type text in a normal text editor. Since it is just plain text, I surely can write it without the need of any LSP or Plugins and use the typst compiler to render it continuously on save. But, it has a LSP called `tinymist` and it has a previewer plugin for Neovim called `typst-preview` which generates live SVG preview and any good browser can render it.

The best thing about `tinymist` and `typst-preview` coming from `vimtex` for LaTeX, the preview is instant and it also follows the cursor as I move in neovim. When, I am bored I just scroll on my `neovim` to see the preview scroll automatically on the browser.

Talking about browser, I use `qutebrowser` for preview since it supports the VIM keys by default and I can remove all the UI elements to just see the preview while it being a full fledged browser. And it is just awesome.

I use `lazy` as my plugin manager for `neovim` and the following snippet sets my whole environment for typst apart from installing `typst` itself and `qutebrowser`:
```lua

return {
  "chomosuke/typst-preview.nvim",
  ft = "typst",
  version = '1.*',
  opts = {
    formatterMode = "typstyle",
    invert_colors = '{"rest": "auto","image": "never"}',
    open_cmd = 'qutebrowser %s'
  },
  config = function(_, opts)
    require('typst-preview').setup(opts)
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "typst",
      callback = function()
        vim.defer_fn(function()
          vim.cmd("TypstPreview")
        end, 10)
      end,
    })
  end,

}
```

Here is how my typst setup looks like. It doesn't look like much but it works too well. I use `harper-ls` for my grammar checking and with everything on the single environment I can write my documents in the editor I want with proper formatting, live preview and offline grammar checking. What more can I ask for?

![My Typst Environment](/images/typst/typst-environment.png)

If you want to check the document and see how I have formatted it you can see the source code [here](/images/typst/creative-suite-that-doesnt-trap-you/creative-suite-that-doesnt-trap-you.typ), and the compliled PDF [here](/images/typst/creative-suite-that-doesnt-trap-you/creative-suite-that-doesnt-trap-you.pdf). You can also visit the directory in [github](https://github.com/scientiac/scientiac.github.io/tree/main/static/images/typst/creative-suite-that-doesnt-trap-you).

### You might be wondering, why I didn't mention Microsoft or Google Docs.
I forgot about it. I am being honest here, I forgot about it while writing the comparison but the [typst homepage](https://typst.app/#:~:text=Why%20should%20I%20use%20Typst%20instead%20of%20...) has a pretty nice comparison between `LaTeX`, `Typst` and `Google Docs`.

  But, if you want to know my take on these Word Processing Software is that I just hate aligning and placing figures and images in them. The age old meme still holds true. (_Or, maybe it's my skill issue._)

![Microsoft Word Meme](/images/typst/meme.png)

### Mandatory "In the end"
I love using typst. I feel like I have made documents in typst more than I have used any other software to make documents in my life. And after the `neovim` setup I just fell madly, deeply, truly in love with it. And I just recommend it to everyone and want typst to grow to the point where all academic journals accept it as a format to support papers in. It will be just smooth sailing from there on.

My only wish is being able to do Literate Programming in `typst`, then it'll be the best for writing reproducable technical documents, kinda like what org can do with `org-tangle`. But, it is just a wish and if someone esle doesn't, I might try to make it a reality.

This much for today, I might add more to this if I feel like I missed something. Or, maybe I will write a follow up blog on this. Seeya soon...
