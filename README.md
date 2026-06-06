<a id="readme-top"></a>


<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/platypod/pokeclicker">
    <img src="https://github.com/platypod/stack/raw/main/doc/images/logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">pokeclicker</h3>

  <p align="center">
    Multi-arch Docker image for <a href="https://github.com/pokeclicker/pokeclicker">PokéClicker</a>,
    a browser-based Pokémon idle/clicker game.
    <br />
    <a href="https://github.com/platypod/pokeclicker/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    ·
    <a href="https://github.com/platypod/pokeclicker/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#build">Build</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

A multi-arch (`linux/amd64` + `linux/arm64`) Docker image for
[pokeclicker/pokeclicker](https://github.com/pokeclicker/pokeclicker),
a browser-based Pokémon idle/clicker game built with TypeScript and served via Node.js.

Images are published to [ghcr.io/platypod/pokeclicker](https://ghcr.io/platypod/pokeclicker).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/) with [buildx](https://docs.docker.com/buildx/working-with-buildx/) support
- Authenticated to GHCR:
  ```sh
  echo $GITHUB_TOKEN | docker login ghcr.io -u <username> --password-stdin
  ```

### Build

```sh
make build                    # build v0.10.25 + latest, push to GHCR
make build VERSION=v0.10.8    # build a specific upstream tag
```

The `build` target automatically creates a `platypod-multiarch` buildx builder
(using the `docker-container` driver) on first run.

> **First publish only — make the package public.** GitHub creates new GHCR
> packages as **private**. After the very first push, set it public once:
> `github.com/orgs/platypod/packages` → `pokeclicker` → *Package settings* →
> *Danger Zone* → *Change visibility* → **Public**. This persists across all
> future versions — subsequent pushes stay public. There is no REST API for
> changing package visibility (GitHub limitation), so it's a one-time manual step.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE -->
## Usage

The game is served on port `3000`.

```sh
docker run -p 3000:3000 ghcr.io/platypod/pokeclicker:latest
```

Then open [http://localhost:3000](http://localhost:3000) in your browser.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are welcomed, either as issues tagged "enhancement" or pull requests. Ideally, please follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/#summary) standards.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feat/<feature>`)
3. Commit your Changes (`git commit -m '<type>[optional scope]: <description>'`)
4. Push to the Branch (`git push origin feat/<feature>`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [pokeclicker/pokeclicker](https://github.com/pokeclicker/pokeclicker) — the upstream game this image is built from.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/platypod/pokeclicker.svg?style=for-the-badge
[contributors-url]: https://github.com/platypod/pokeclicker/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/platypod/pokeclicker.svg?style=for-the-badge
[forks-url]: https://github.com/platypod/pokeclicker/network/members
[stars-shield]: https://img.shields.io/github/stars/platypod/pokeclicker.svg?style=for-the-badge
[stars-url]: https://github.com/platypod/pokeclicker/stargazers
[issues-shield]: https://img.shields.io/github/issues/platypod/pokeclicker.svg?style=for-the-badge
[issues-url]: https://github.com/platypod/pokeclicker/issues
[license-shield]: https://img.shields.io/github/license/platypod/pokeclicker.svg?style=for-the-badge
[license-url]: https://github.com/platypod/pokeclicker/blob/master/LICENSE.txt
