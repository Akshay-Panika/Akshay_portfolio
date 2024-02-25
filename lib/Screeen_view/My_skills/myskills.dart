import 'package:akshay_portfolio/Reusable_widget/widgets_.dart';
import 'package:flutter/material.dart';
import '../../Reusable_widget/animated_counterner.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width  < 900 ? MediaQuery.of(context).size.width *0.9 :((MediaQuery.of(context).size.width * 0.8)/3);

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
            children: [
              20.height,

              const Text("My Skills",style: TextStyle(fontSize:20,color: Colors.grey,fontWeight: FontWeight.w500),),
              50.height,
              Wrap(
                spacing:8,
                runSpacing:20,
                alignment: WrapAlignment.center,
                children: [
                  /// Programming Languages
                  Container(
                      margin:const EdgeInsets.symmetric(horizontal:10),
                      padding:const EdgeInsets.symmetric(vertical: 20),
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade900,
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Programming Languages",style: TextStyle(color: Colors.grey),),
                          const Divider(),
                          const SizedBox(height: 10,),
                          Wrap(
                            spacing:20,
                            runSpacing:20,
                            children: [
                              Animeted_Container(
                                image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ5GETbDLvMosDKDd88VtugLJjiLD5PI_YwFE1Is-G&s',
                                onTap: (){},
                                title: 'Dart',
                              ),
                              Animeted_Container(
                                image:'',
                                onTap: (){},
                                title: 'Nothing',
                              ),
                            ],
                          )
                        ],
                      )
                  ),

                  /// Framework
                  Container(
                      margin:const EdgeInsets.symmetric(horizontal:10),
                      padding:const EdgeInsets.all(20),
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade900,
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Framework",  style: TextStyle(color: Colors.grey),),
                          const Divider(),
                          const SizedBox(height: 10,),
                          Wrap(
                            spacing:20,
                            runSpacing:20,
                            children: [
                              Animeted_Container(
                                image: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQYAAADACAMAAADRLT0TAAAAxlBMVEX///9ot/dCpfUNR6Fes/fB4PvV6v0APJ2crdJbsvY0oPUKRqHN5vwVSJcUSJnF4vwRSJ0ANZuGwvgWR5IAMZq73fug0PqVy/l5vPcXRYyo1Pqez/oXQH9ce7nE4fzF0OUWPHgADTATNmsTMWAbSXcKI0oGHUG9yeJOrfa02vsRWKDN0t0kXqEONXYAKnsANIkTM2wkW5chU4kNJlQUM2QBFjsNJ08POXoMMWwFGjsKLF8NO4QZRXAAQX0AJ2NYcaYAIpaPo80Qi5BHAAADdklEQVR4nO3c61bTUBRF4UKAipVaLqIgogWKqCDQggLF2/u/lFkNlUDaJCcjmObsOR+gY+cbOzn50zQaRERERETkTUvuvah65vLbXl5w7ehT1UOX3vbynGvLr6oeuvRQUCgoFBQKCgWFgkJBoaBQUCgoFNT2AgooRHFHKBQUCgoFhYJCQRVRWKx66NLbRCFss8BbEwoooOC3AmeEQkFxUioUFAoKBcVJqVBQKCgUFAoKBYWCQkGhoFBQKKgiCrtVD116KCgUFAoKBYWCQkGhoFBQKCgU1NsCCi+rHrr0UFBF7gj/FNgFhYJCQaGgUFAoKBQUCgoFhYJCQaGgUFAoKBQUCgoFhYJCQZWrsLvo3Ez8RbVchdcFvhA4C5tVskKBX5uFz0WioFBQKKgic/un0FhzHtxHBXcHPxVcHXxVcHNImbvmCi4OPivkd/BbIa9DyQpL//ECc5bHwfddUNkOFhSyHWwoZDlYUUh3sKOQ5mBJYbpDytxrR94pTHNIU3g+77oNs68w2SFdYd7RYRbfmpIlHbIU3BzqoZB0yFZwcaiLwmOHPAr5Heqj8NAhn0JehzopxB3yKuRzqJfCvUN+hTwOdVMYO7goZDvUTyFycFPIcqijghxcFdId6qkQXqqzQppDXRVSmqow3cGWwjQHawqTHewpTHKwqJB0sKnw2MGqwkMHuwpxB8sK9w4LphXGDrZ3YeyAghxQGDn4p9CYc2f4/KXqoZ+gN64Oxydf31c99BPk6HB8srN1at7h+Gpna2vdusP5mRRW2k3TDudnH3ZChZV2x7LDSGHEYNlBCuEyRAydVaMO5zd7o2W4YwhsOvSlEGcw6SAFLUOMIdgw59Af7EXLEGcw59AfXExiMObQH+xfSCHB0LLk0O/tR8uQYLD0nOwf7msZ4gxjBEMOB5ffRsvwjyGOYMYhVIgzrLeDVhCYczi47IUKI4bwtWGl03qMYMLhoHsYLUPosD7RwIJDqNALGUKHYWgwBcH7czNUGDF8bweJJ4IdBykc9q6GwfQ9MOBw272+vhlmAfjucNsdnHSyr99zhx8/h52OA0PQWv1Y9dBP0K/TtpNCmJ8OTUcFTx3eNV0ZcMABh2StDRwiBx/fH3CI4r6IwiEKh6gCDpybUTjgEIv74s6B5yQO/jusNl377aPDM/f+VD0zEREREZHV/gIjQI05SCxcngAAAABJRU5ErkJggg==',
                                onTap: (){},
                                title: 'Flutter',
                              ),
                              Animeted_Container(
                                image: '',
                                onTap: (){},
                                title: 'Nothing',
                              ),

                            ],
                          )
                        ],
                      )
                  ),

                  /// Other tools
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal:10),
                      padding: const EdgeInsets.all(20),
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade900,
                         /* boxShadow:const [
                            BoxShadow0
                          ]*/
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const  Text("Other tools", style: TextStyle(color: Colors.grey)),
                          const Divider(),
                          const SizedBox(height: 10,),
                          Wrap(
                            spacing:20,
                            runSpacing:20,
                            children: [
                              Animeted_Container(
                                image: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Adobe_Photoshop_CC_icon.svg/640px-Adobe_Photoshop_CC_icon.svg.png",
                                onTap: (){},
                                title: 'Photoshop',
                              ),
                              Animeted_Container(
                                image: "https://qph.cf2.quoracdn.net/main-qimg-4c0bd495aefde6d192afb4c0831a2f7e",
                                onTap: (){},
                                title: 'Illustrator',
                              ),
                              Animeted_Container(
                                image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Adobe_After_Effects_CC_icon.svg/493px-Adobe_After_Effects_CC_icon.svg.png',
                                onTap: (){},
                                title: 'After Effects',
                              ),
                              Animeted_Container(
                                image: 'https://static.macupdate.com/products/14085/l/blender-logo.png?v=1670567811',
                                onTap: (){},
                                title: 'Blender',
                              ),

                            ],
                          )
                        ],
                      )
                  ),
                ],
              ),
            ],
      ),
    );
  }
}
