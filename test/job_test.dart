import 'package:flutter_test/flutter_test.dart';
import 'package:time_tracker_flutter_course/app/home/models/job.dart';

void main() {
  group('fromMap', () {
    test('null data', () {
      final job = Job.fromMap(null, 'abc');
      expect(job, null);
    });

    test('job with all properties', () {
      final job = Job.fromMap({
        'name': 'something',
        'ratePerHour': 10,
      }, 'abc');
      expect(job.name, 'something');
      expect(job.ratePerHour, 10);
      expect(job.id, 'abc');
      expect(
          job,
          Job(
              name: 'something',
              ratePerHour: 10,
              id: 'abc')); // hashCode & operator added to class Job
    });

    test('missing name', () {
      final job = Job.fromMap({
        'ratePerHour': 10,
      }, 'abc');
      expect(job, null);
    });
  });

  group('toMap', () {
    test('valid name, ratePerHour', () {
      final job = Job(name: 'something', ratePerHour: 12, id: 'abc');
      expect(job.toMap(), {'name': 'something', 'ratePerHour': 12});
    });
  });
}
