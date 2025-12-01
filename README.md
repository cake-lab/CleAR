# CleAR
The official repo for CleAR: Robust Context-Guided Generative Lighting Estimation for Mobile Augmented Reality (IMWUT'25)

[[arXiv]](https://arxiv.org/abs/2411.02179) [[Paper]](https://dl.acm.org/doi/10.1145/3749535)

## Release Schedule

- [x] Nov 10, 2025. dataset generation and model training code.
- [ ] Dec 15, 2025. model weights, inference code, and datasets.

## Citation

```bibtex
@article{10.1145/3749535,
author = {Zhao, Yiqin and Dasari, Mallesham and Guo, Tian},
title = {CleAR: Robust Context-Guided Generative Lighting Estimation for Mobile Augmented Reality},
year = {2025},
issue_date = {September 2025},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
volume = {9},
number = {3},
url = {https://doi.org/10.1145/3749535},
doi = {10.1145/3749535},
abstract = {High-quality environment lighting is essential for creating immersive mobile augmented reality (AR) experiences. However, achieving visually coherent estimation for mobile AR is challenging due to several key limitations in AR device sensing capabilities, including low camera FoV and limited pixel dynamic ranges. Recent advancements in generative AI, which can generate high-quality images from different types of prompts, including texts and images, present a potential solution for high-quality lighting estimation. Still, to effectively use generative image diffusion models, we must address two key limitations of content quality and slow inference. In this work, we design and implement a generative lighting estimation system called CleAR that can produce high-quality, diverse environment maps in the format of 360° HDR images. Specifically, we design a two-step generation pipeline guided by AR environment context data to ensure the output aligns with the physical environment's visual context and color appearance. To improve the estimation robustness under different lighting conditions, we design a real-time refinement component to adjust lighting estimation results on AR devices. To train and test our generative models, we curate a large-scale environment lighting estimation dataset with diverse lighting conditions. Through a combination of quantitative and qualitative evaluations, we show that CleAR outperforms state-of-the-art lighting estimation methods on both estimation accuracy, latency, and robustness, and is rated by 31 participants as producing better renderings for most virtual objects. For example, CleAR achieves 51\% to 56\% accuracy improvement on virtual object renderings across objects of three distinctive types of materials and reflective properties. CleAR produces lighting estimates of comparable or better quality in just 3.2 seconds---over 110X faster than state-of-the-art methods. Moreover, CleAR supports real-time refinement of lighting estimation results, ensuring robust and timely updates for AR applications.},
journal = {Proc. ACM Interact. Mob. Wearable Ubiquitous Technol.},
month = sep,
articleno = {154},
numpages = {26},
keywords = {generative model, lighting estimation, mobile augmented reality}
}
```
