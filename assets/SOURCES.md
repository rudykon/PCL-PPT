# 参考素材来源

原始标识和结束页背景来自作为设计参考的 `PCL汇报PPT模板.pptx`，于 2026-09-30 直接从 OOXML 包提取。
目录页照片于 2026-10-15 替换为用户提供的圆形建筑照片。
编译依赖本目录中的矢量标识 PDF 与两张照片，无需原始 PPTX 文件。

| 本地文件 | 来源 / 位置 | 用途 |
| --- | --- | --- |
| `pcl-emblem-vector.pdf` | 根据 `pcl-emblem.jpg` 在 Illustrator 中分层重绘 | 封面、页眉、目录、章节与结束页的矢量圆形标识 |
| [logo/pcl-emblem-vector.svg](logo/pcl-emblem-vector.svg) | 从已确认的 Illustrator 主稿导出 | 文字已转轮廓的通用矢量版本 |
| [logo/pcl-emblem-editable.ai](logo/pcl-emblem-editable.ai) | 根据原始标识重绘并精修 | 按组件分层的可编辑主稿，保留可编辑文字；原始 [JPEG](pcl-emblem.jpg) 另存于 `assets/` 中供对照 |
| `pcl-emblem.jpg` | `ppt/media/image1.jpeg` | 保留的原始低分辨率标识，供比对，不参与默认排版 |
| `campus.jpg` | 用户于 2026-10-15 提供的照片，1080 × 699 像素 | 目录中的圆形建筑照片，使用 TikZ 进行菱形裁切显示 |
| `closing-background.jpg` | `ppt/media/image4.jpeg` | 结束页背景 |

原始标识 JPEG 和结束页背景按原始字节保留；目录照片保留用户提供文件的原始字节，取景由模板调整。
2026-10-15，圆形标识通过 Illustrator MCP 按核心轮廓重建，
以平滑矢量路径、连续渐变和可编辑组件替代位图，导出 PDF 用于模板排版。
分层 AI 源文件和 SVG 版本见本目录下的 [logo/](logo/)。
默认置入的 PDF 与 SVG 均为纯矢量，文字已转轮廓，保留连续渐变，使用时无需安装标识字体。
AI 主稿中的中文为 Microsoft YaHei Bold，英文为 Arial Regular，年份为 Arial Bold。
显示中的圆形和菱形裁切由 LaTeX/TikZ 完成。

球体大陆点阵参考 [Natural Earth 1:110m Land](https://www.naturalearthdata.com/downloads/110m-physical-vectors/110m-land/)，
使用其 [ne_110m_land.geojson](https://github.com/nvkelso/natural-earth-vector/blob/master/geojson/ne_110m_land.geojson)
陆地轮廓重采样为 1698 个矢量点，并采用中心 75°E、12°N 的正射投影。
经纬网采用相同投影；飘带遮挡和浅蓝点线按原图的视觉关系精修。
该地理点阵为重绘组件，原始 JPEG 仍保留供对照。

`fonts/` 内包含 Noto Sans SC 的完整静态字重实例（Regular 400 / Bold 700），
由本机安装的 NotoSansSC 可变字体生成，以适配 XeLaTeX；未按示例文本删减字符。
字体以 PCL Noto Sans SC 命名，遵循随附的 SIL Open Font License 1.1；
原始版权、许可来源和文件校验信息见 `fonts/OFL.txt`、`fonts/README.txt` 和 `fonts/font-provenance.json`。
源素材的权利归相应权利人所有。使用和传播这些素材时，应遵守权利人的适用要求。
本项目是参考设计的 LaTeX 版本，并非实验室官方发布的模板。
