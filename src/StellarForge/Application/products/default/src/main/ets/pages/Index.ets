@Entry
@Component
struct Index {
    pageStack: NavPathStack = new NavPathStack();

    @Builder
    pathMap(routeName: string) {
        if (routeName === 'CloudFunction') {
        } else if (routeName === 'CloudDb') {
        } else if (routeName === 'CloudStorage') {
        } else if (routeName === 'DbInsert') {
        }
    }

    build() {
        Navigation(this.pageStack) {
            Text("test")
        }
        .width("100%")
        .height("100%")
        .title("123")
    }
}
