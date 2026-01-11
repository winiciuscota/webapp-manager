# Maintainer: Your Name <your.email@example.com>
pkgname=webapp-manager
pkgver=1.0.0
pkgrel=1
pkgdesc="A modern Rofi-based interface for managing web applications with icon search"
arch=('any')
url="https://github.com/YOUR_USERNAME/webapp-manager"
license=('MIT')
depends=('python' 'rofi' 'webkit2gtk' 'gtk3')
makedepends=('git')
source=("git+https://github.com/YOUR_USERNAME/webapp-manager.git")
sha256sums=('SKIP')

package() {
    cd "$srcdir/$pkgname"
    
    # Install main script
    install -Dm755 webapps "$pkgdir/usr/bin/webapps"
    
    # Install backend script
    install -Dm755 webapps.old "$pkgdir/usr/lib/webapp-manager/webapps.old"
    
    # Install documentation
    install -Dm644 README.md "$pkgdir/usr/share/doc/$pkgname/README.md"
    
    # Install license if exists
    if [ -f LICENSE ]; then
        install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
    fi
}
