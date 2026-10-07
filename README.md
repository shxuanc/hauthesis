# HauThesis

> **H**uai'**a**n **U**niversity **T**hesis LaTeX Template
>
> 淮安大学本科毕业设计（论文）LaTeX 模板

> English version: [scroll down ↓](#english)

[![License](https://img.shields.io/badge/license-LPPL%201.3c-blue.svg)](https://www.latex-project.org/lppl/lppl-1-3c/)
[![Engine](https://img.shields.io/badge/engine-XeLaTeX-orange.svg)](https://tug.org/xetex/)
[![TeX Live](https://img.shields.io/badge/TeX%20Live-2023%2B-green.svg)](https://www.tug.org/texlive/)

---

## 简介

HauThesis 是面向淮安大学本科毕业设计（论文）的 LaTeX 模板。

它依据淮安大学教务处发布的**本科毕业设计（论文）撰写规范**及其配套 Word 模板编写，
逐项测量并复现了页面设置、字号字体、行距、标题层级、页眉页脚、图表与公式编号、
参考文献著录格式等版式要求。

**使用者只需在示例文档中填写内容，不必关心版式细节。**

> 规范若有修订，请以教务处发布的最新版本为准。

---

## 特性

- **完整覆盖论文结构** —— 封面、中英文摘要、目录、正文各章、参考文献、注释、总结与展望、致谢、附录
- **版式自动处理** —— 章节标题、页码编排、页眉页脚、图表编号与交叉引用
- **跨平台字体** —— 通过 `windows`、`macos`、`linux` 选项自动切换中文字体
- **代码环境** —— Roman 与等宽两套字形，四套配色方案可切换
- **算法与伪代码** —— 浮动体排版，五号字，与图表一致
- **编号方式可配** —— 图、表、公式、算法的编号可各自单独设为「带章号」或「连续」
- **文学化源码** —— 全部实现与说明集中在单个 `.dtx` 文件

---

## 环境要求

| 项 | 要求 |
|---|---|
| **发行版** | TeX Live 2023 或更高（MiKTeX 亦可，需保证宏包完整）|
| **引擎** | **XeLaTeX**（必须，不支持 pdfLaTeX）|
| **文献** | **biber** |
| **索引** | **makeindex**（随 TeX Live 提供）|

### 字体

模板按操作系统自动选择中文字体，**不需要手动安装字体**：

| 选项 | 中文字体 |
|---|---|
| `windows`（默认）| 宋体、黑体、楷体、仿宋（系统自带）|
| `macos` | Songti SC、Heiti SC、Kaiti SC |
| `linux` | Fandol 系列（随 TeX Live 提供）|

**在 macOS 或 Linux 上写作时，建议显式指定对应选项**，避免因缺少 Windows 字体而回退。

---

## 安装

### 方式一：直接使用源码（推荐）

```bash
git clone https://github.com/shxuanc/hauthesis.git
cd hauthesis
```

模板不需要安装到系统目录，在源码目录内直接编译即可。

### 方式二：从 CTAN 安装

```bash
tlmgr install hauthesis
```

安装后可在任意目录使用。

### 方式三：下载发布包

到 [Releases](https://github.com/shxuanc/hauthesis/releases) 页面下载对应版本的压缩包，解压后使用。

---

## 快速开始

**① 生成文档类**

`.dtx` 是文学化源文件，需要先剥离注释生成 `.cls`：

```bash
latex hauthesis.ins
```

这一步会同时生成 `hauthesis.cls` 与 `dtx-style.sty`。

> **每次修改 `.dtx` 之后都要重新执行本步骤**，否则改动不会反映到论文中。

**② 编译论文**

```bash
latexmk -xelatex main.tex
```

**③ 查看结果**

打开生成的 `main.pdf`。正文内容在 `contents/` 目录下，一章一个文件。

---

## 构建

模板提供了 `make.bat`（Windows）与 `Makefile`（Linux / macOS），也支持直接用 `latexmk`。

### 用 `latexmk`（推荐）

```bash
latexmk main.tex            # 编译示例论文 → main.pdf
latexmk hauthesis.dtx       # 编译说明文档 → hauthesis.pdf
latexmk -c                  # 清理辅助文件，保留 PDF
latexmk -C                  # 连 PDF 一并删除
latexmk -pvc main.tex       # 持续监听，改动后自动重编译
```

### 用 `make.bat`（Windows）

```bat
make.bat all        :: 生成类 + 编译说明文档 + 编译论文（默认）
make.bat cls        :: 只生成文档类
make.bat doc        :: 只编译说明文档
make.bat thesis     :: 只编译论文
make.bat clean      :: 删除辅助文件
```

### 用 `make`（Linux / macOS）

```bash
make            # 生成类 + 编译说明文档 + 编译论文
make cls        # 只生成文档类
make doc        # 只编译说明文档
make thesis     # 只编译论文
make clean      # 删除辅助文件
```

---

## 目录结构

| 文件或目录 | 用途 |
|---|---|
| `hauthesis.dtx` | 模板的全部源码与说明文档，**唯一的源文件** |
| `hauthesis.ins` | 从 `.dtx` 中提取 `.cls` 的脚本 |
| `hauthesis.cls` | 文档类（由 `.ins` 生成，**不要手工编辑**）|
| `dtx-style.sty` | 说明文档的样式（由 `.ins` 生成）|
| `hauthesis.pdf` | 说明文档成品 |
| `main.tex` | 论文主文件，在此组织全文结构 |
| `contents/` | 各章节内容，一章一个文件 |
| `reference/` | 参考文献数据（`.bib`）|
| `figures/` | 插图文件 |
| `code/` | 需要引入的代码文件 |
| `make.bat` | Windows 构建脚本 |
| `Makefile` | Linux / macOS 构建脚本 |
| `latexmkrc` | `latexmk` 配置 |
| `.vscode/` | VS Code + LaTeX Workshop 配置 |

---

## 文档

**完整的使用说明见 [`hauthesis.pdf`](hauthesis.pdf)。**

说明文档分两部分：

- **使用说明** —— 面向论文作者，讲每个环境怎么用
- **实现细节** —— 面向模板维护者，讲每处版式为什么这样设

### 文档类选项

```latex
\documentclass[windows]{hauthesis}
```

| 选项 | 作用 |
|---|---|
| `windows` / `macos` / `linux` / `none` | 选择中文字体方案（默认 `windows`）|
| `plainfig` | 图不带章号，全文连续编号 |
| `plaintab` | 表不带章号 |
| `plaineqn` | 公式不带章号 |
| `plainalg` | 算法不带章号 |

**四个编号选项互相独立，可任意组合：**

```latex
\documentclass[plainfig, plaineqn]{hauthesis}
```

未被模板占用的选项会原样传给 `ctexbook`（如 `zihao=-4`、`scheme=chinese`）。

### 最小示例

```latex
\documentclass[windows]{hauthesis}

% 封面信息与宏包加载见 main.tex

\begin{document}

\frontmatter
\maketitle
\input{contents/abstract}
\tableofcontents

\mainmatter
\input{contents/ch01}
\input{contents/ch02}

\backmatter
\input{contents/conclusion}
\input{contents/acknowledgements}
\printbibliography

\end{document}
```

---

## 常见问题

<details>
<summary><b>编译报错说找不到 <code>hauthesis.cls</code></b></summary>

还没有生成文档类。先执行：

```bash
latex hauthesis.ins
```

</details>

<details>
<summary><b>改了 <code>.dtx</code> 但论文里没变化</b></summary>

`.dtx` 不是直接使用的文件，改完必须重新生成 `.cls`：

```bash
latex hauthesis.ins
```

</details>

<details>
<summary><b>交叉引用显示为 <code>??</code></b></summary>

引用需要编译两遍：第一遍把标签写入辅助文件，第二遍才排进正文。
用 `latexmk` 会自动处理；手动编译时连跑两次即可。

</details>

<details>
<summary><b>说明文档的目录里没有「索引」</b></summary>

索引需要三遍编译：`xelatex` → `makeindex` → `xelatex` → `xelatex`。
用 `latexmk` 或 `make doc` 会自动完成。

若手动编译，注意 `makeindex` 必须带 `gind.ist`：

```bash
makeindex -s gind.ist -o hauthesis.ind hauthesis.idx
```

</details>

<details>
<summary><b>提示字体找不到</b></summary>

说明文档类选项与当前系统不符。macOS 上应写：

```latex
\documentclass[macos]{hauthesis}
```

Linux 上写 `linux`。也可以选 `none` 自行配置字体。

</details>

<details>
<summary><b>公式里写中文报错</b></summary>

数学环境不能直接写中文，需要包在 `\text{}` 里：

```latex
\begin{equation}
  \text{目标函数} = \sum_{i=1}^{n} w_i x_i
\end{equation}
```

</details>

<details>
<summary><b>引用代码文件时提示样式未定义</b></summary>

`\codeinputhl` 的方括号里传的是 `listings` 的选项，
语言名也要写成选项的形式：

```latex
\codeinputhl[language=python]{code/test.py}
```

</details>

<details>
<summary><b>提交前要删掉哪些文件</b></summary>

只保留源码。编译产物（`*.aux`、`*.log`、`*.out`、`*.toc`、`*.fls`、
`*.fdb_latexmk`、`*.synctex.gz` 等）都可以删：

```bash
latexmk -c
```

或

```bash
make clean
```

`.gitignore` 里已经列好了这些文件名，`git add .` 时会自动跳过。

</details>

---

## 参与贡献

欢迎提交 Issue 与 Pull Request。

模板涉及版式参数、宏包兼容以及各版本 TeX Live 的差异，维护工作繁杂，
**长期欢迎新的维护者加入**。

有意参与者最好具备以下基础：

1. 能读懂 LaTeX 宏包与文档类的源码，看得懂 `.dtx` 与 `.cls` 的组织方式
2. 了解 `ctex` 宏集的标题、字号与页面机制（本模板由 `ctexbook` 派生）
3. 会用 Git 进行版本管理
4. 愿意耐心核对版式细节，并记录每处改动的依据

其中前两项可以在参与过程中逐步熟悉，**并不构成入门门槛**。

### 修改源码的注意事项

- **改动一律写在 `hauthesis.dtx` 里**，不要直接编辑 `hauthesis.cls` 或 `dtx-style.sty` —— 它们由 `.ins` 生成，会被覆盖
- `.dtx` 中 `%<*cls>` … `%</cls>` 之间的内容进入文档类，其余是说明文字
- 改完执行 `latex hauthesis.ins` 重新生成，再编译验证

---

## 许可

本项目采用 **LaTeX Project Public License 1.3c**（LPPL 1.3c）发布。

这意味着你可以自由使用、修改和分发本模板，但**修改后的版本必须换一个文件名**，
以免与原始版本混淆。

许可全文见 [LICENSE](LICENSE)，或访问 <https://www.latex-project.org/lppl/lppl-1-3c/>。

---

## 作者

**程世轩**（[@shxuanc](https://github.com/shxuanc)）

- 邮箱：3058778192@qq.com
- 仓库：<https://github.com/shxuanc/hauthesis>
- 问题反馈：<https://github.com/shxuanc/hauthesis/issues>

---

<div id="english"></div>

# HauThesis (English)

> **H**uai'**a**n **U**niversity **T**hesis LaTeX Template

A LaTeX thesis template for undergraduate theses of Huai'an University, China.
It reproduces the layout required by the university's formatting guidelines:
page geometry, fonts and sizes, line spacing, heading levels, headers and footers,
caption and cross-reference styles, bibliography format, and the organization of
front matter, main matter, and back matter.

The template is based on `ctexbook` and **requires XeLaTeX and biber**.

## Requirements

- TeX Live 2023 or later (MiKTeX should also work)
- XeLaTeX (required; pdfLaTeX is not supported)
- biber
- makeindex (included in TeX Live)

No manual font installation is needed: Chinese fonts are selected automatically
according to the operating system (`windows`, `macos`, or `linux`).

## Installation

**From source (recommended):**

```bash
git clone https://github.com/shxuanc/hauthesis.git
cd hauthesis
```

**From CTAN:**

```bash
tlmgr install hauthesis
```

## Usage

This template is written as a literate `.dtx` file, so the class must first be
extracted:

```bash
latex hauthesis.ins
```

Then compile the example thesis:

```bash
latexmk -xelatex main.tex
```

The document class accepts the following options:

```latex
\documentclass[windows]{hauthesis}
```

| Option | Effect |
|---|---|
| `windows` / `macos` / `linux` / `none` | Select the Chinese font set (default: `windows`) |
| `plainfig` | Number figures continuously instead of per chapter |
| `plaintab` | Number tables continuously |
| `plaineqn` | Number equations continuously |
| `plainalg` | Number algorithms continuously |

The four numbering options are independent and may be combined freely.

## Building

`make.bat` is provided for Windows and `Makefile` for Linux / macOS:

```bash
make            # extract class, build manual, build thesis
make cls        # extract class only
make doc        # build manual only
make thesis     # build thesis only
make clean      # remove auxiliary files
```

## Documentation

The full manual is available as [`hauthesis.pdf`](hauthesis.pdf).
It is written in Chinese and consists of two parts: a user guide and
implementation notes.

## License

Distributed under the **LaTeX Project Public License 1.3c**.
See [LICENSE](LICENSE) for the full text. Modified versions must be
renamed.

## Author

**Cheng Shixuan** ([@shxuanc](https://github.com/shxuanc)) — 3058778192@qq.com
