

@Entry
@Component
export default struct LayoutPage {
    @State message: string = 'Hello World';

    aboutToAppear(): void {
    }

    build() {
        Column() {
            Text("LayoutPage")
        }
    }
}
