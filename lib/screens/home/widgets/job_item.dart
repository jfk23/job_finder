import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/widgets/icon_text.dart';

class JobItem extends StatelessWidget {
  final Job job;
  final bool showType;
  const JobItem(this.job, {this.showType = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image.asset(job.logoUrl!),
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.1),
                ),
              ),
              Text(
                job.company!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Icon(
                job.isMarked!
                    ? Icons.bookmark
                    : Icons.bookmark_outline_outlined,
                color: job.isMarked!
                    ? Theme.of(context).primaryColor
                    : Colors.black,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            job.title!,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconText(
                Icons.location_on_outlined,
                job.location!,
              ),
              if (showType)
                IconText(
                  Icons.access_time_outlined,
                  job.jobType!,
                )
            ],
          )
        ],
      ),
    );
  }
}
