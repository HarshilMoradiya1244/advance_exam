import 'package:advance_exam/screen/home/provider/home_provider.dart';
import 'package:advance_exam/utils/color_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerr;
  HomeProvider? providerw;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<HomeProvider>();
    providerw = context.watch<HomeProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text(
            "Welcome To The Quotes",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ))
          ],
        ),
        body: providerw!.quotesModel == null
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                  itemCount: providerw!.quotesModel!.resultsList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.21,
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                             color: Colors.blue
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                      "${providerw!.quotesModel!.resultsList[index].content}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                ),
                                const Spacer(),
                                Text(
                                    "- ${providerw!.quotesModel!.resultsList[index].author}"),
                                const Spacer(),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.favorite_border),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.edit),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.copy),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.share),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                      ],
                    );
                  },
                ),
              ),
    floatingActionButton: FloatingActionButton.extended(
    onPressed: () {},
      backgroundColor: Colors.green,
      label: const Text("Next Page"),
      icon: const Icon(Icons.arrow_forward_ios),
      ),
      ),
    );
  }
}
