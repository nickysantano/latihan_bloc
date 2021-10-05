part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coba Bloc"),
      ),
      body: BlocBuilder<ColorsBloc, ColorsState>(
        builder: (context, state){
          return Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                Text(
                  "Changing Text",
                  style: TextStyle(
                    color: (state is ColorsValue) ? state.value : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        
                ElevatedButton(
                  onPressed: (){
                    context.read<ColorsBloc>().add(ChangeColor()) ;
                  }, 
                  child: const Text("Click Me")
                ),
        
              ],
            ),
          );
        }
      ),
    );
  }
}