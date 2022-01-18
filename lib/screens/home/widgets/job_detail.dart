import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/widgets/icon_text.dart';

class JobDetail extends StatelessWidget {
  final Job job;
  const JobDetail(this.job, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      padding: const EdgeInsets.all(25),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 60,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(job.logoUrl!),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          job.company!,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          job.isMarked!
                              ? Icons.bookmark
                              : Icons.bookmark_outline_outlined,
                          color: job.isMarked!
                              ? Theme.of(context).primaryColor
                              : Colors.grey,
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  job.title!,
                  style: const TextStyle(fontSize: 26),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(Icons.location_on_outlined, job.location!),
                    IconText(Icons.access_time_outlined, job.jobType!),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Requirement',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ...job.req!
                    .map((e) => Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ConstrainedBox(
                              child: Text(
                                e,
                                style: const TextStyle(
                                    wordSpacing: 2.5, height: 1.5),
                              ),
                              constraints: BoxConstraints(maxWidth: 300),
                            ),
                          ],
                        ))
                    .toList(),
                Container(
                  margin: EdgeInsets.all(25),
                  height: 45,
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    onPressed: () {},
                    child: const Text('Apply Now'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
