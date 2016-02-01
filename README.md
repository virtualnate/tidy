## Run Analysis 

The function run_analysis.R takes test and training data from the Human Activity Recognition Using Smartphones Dataset, combines them, and calculates the mean of the features grouped by the subject and the activity being performed.

The original data comes from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) wearing a smartphone (Samsung Galaxy S II) on the waist.

The variables selected for this database come from the accelerometer and gyroscope 3-axial raw signals (the prefix 't' to denote time). The acceleration signal was then separated into body and gravity acceleration signals.  The body linear acceleration and angular velocity were derived in time to obtain Jerk signals. The magnitude of these three-dimensional signals were calculated using the Euclidean norm. Finally a Fast Fourier Transform (FFT) was applied to some of these signals (the 'f' indicates frequency domain signals). 

To summarize, the variables are:

1. subject - One of the 30 volunteers numbered 1-30

2. activity - The six activities performed by the subjects: walking, walking upstairs, walking downstairs, sitting, standing and laying.

3. tbodyaccmeanx - Mean of the body linear acceleration in the x direction.

4. tbodyaccmeany - Mean of the body linear acceleration in the y direction.

5. tbodyaccmeanz - Mean of the body linear acceleration in the z direction

6. tbodyaccstdx - Standard deviation of the body linear acceleration in the x direction.

7. tbodyaccstdy - Standard deviation of the body linear acceleration in the y direction.

8. tbodyaccstdz - Standard deviation of the body linear acceleration in the z direction.

9. tgravityaccmeanx - Mean of the gravitational acceleration in the x direction.

10. tgravityaccmeany - Mean of the gravitational acceleration in the y direction.

11. tgravityaccmeanz - Mean of the gravitational acceleration in the z direction.

12. tgravityaccstdx - Standard deviation of the gravitational acceleration in the x direction

13. tgravityaccstdy - Standard deviation of the gravitational acceleration in the y direction

14. tgravityaccstdz - Standard deviation of the gravitational acceleration in the z direction

15. tbodyaccjerkmeanx - Mean of the body acceleration jerk signal in the x direction.

16. tbodyaccjerkmeany - Mean of the body acceleration jerk signal in the y direction.

17. tbodyaccjerkmeanz - Mean of the body acceleration jerk signal in the z direction.

18. tbodyaccjerkstdx - Standard deviation of the body acceleration jerk signal in the x direction.

19. tbodyaccjerkstdy - Standard deviation of the body acceleration jerk signal in the y direction.

20. tbodyaccjerkstdz - Standard deviation of the body acceleration jerk signal in the z direction.

21. tbodygyromeanx - Mean of the body gyroscope signal in the x direction.

22. tbodygyromeany - Mean of the body gyroscope signal in the y direction.

23. tbodygyromeanz - Mean of the body gyroscope signal in the z direction.

24. tbodygyrostdx - Standard deviation of the body gyroscope signal in the x direction.

25. tbodygyrostdy - Standard deviation of the body gyroscope signal in the y direction.

26. tbodygyrostdz - Standard deviation of the body gyroscope signal in the z direction.

27. tbodygyrojerkmeanx - Mean of the body gyroscope jerk signal in the x direction.

28. tbodygyrojerkmeany - Mean of the body gyroscope jerk signal in the y direction.

29. tbodygyrojerkmeanz - Mean of the body gyroscope jerk signal in the z direction.

30. tbodygyrojerkstdx - Standard deviation of the body gyroscope jerk signal in the x direction.

31. tbodygyrojerkstdy - Standard deviation of the body gyroscope jerk signal in the y direction.

32. tbodygyrojerkstdz - Standard deviation of the body gyroscope jerk signal in the z direction.

33. tbodyaccmagmean - Mean of the body acceleration magnitude.

34. tbodyaccmagstd - Standard deviation of the body acceleration magnitude.

35. tgravityaccmagmean - Mean of the gravitational acceleration magnitude.

36. tgravityaccmagstd - Standard deviation of the gravitational acceleration magnitude.

37. tbodyaccjerkmagmean - Mean of the body acceleration jerk magnitude.

38. tbodyaccjerkmagstd - Standard deviation of the body acceleration jerk magnitude.

39. tbodygyromagmean - Mean of the body gyro magnitude.

40. tbodygyromagstd - Standard deviation of the body gyro magnitude.

41. tbodygyrojerkmagmean - Mean of the body gyro jerk magnitude.

42. tbodygyrojerkmagstd - Standard deviation of the body gyro jerk magnitude

43. fbodyaccmeanx - Mean of the FFT of the body acceleration in the x direction.

44. fbodyaccmeany - Mean of the FFT of the body acceleration in the y direction.

45. fbodyaccmeanz - Mean of the FFT of the body acceleration in the z direction.

46. fbodyaccstdx - Standard deviation of the FFT of the body acceleration in the x direction.

47. fbodyaccstdy - Standard deviation of the FFT of the body acceleration in the y direction.

48. fbodyaccstdz - Standard deviation of the FFT of the body acceleration in the z direction.

49. fbodyaccjerkmeanx - Mean of the FFT of the body acceleration jerk in the x direction.

50. fbodyaccjerkmeany - Mean of the FFT of the body acceleration jerk in the y direction.

51. fbodyaccjerkmeanz - Mean of the FFT of the body acceleration jerk in the z direction.

52. fbodyaccjerkstdx - Standard deviation of the body acceleration jerk in the x direction.

53. fbodyaccjerkstdy - Standard deviation of the body acceleration jerk in the y direction.

54. fbodyaccjerkstdz - Standard deviation of the body acceleration jerk in the z direction.

55. fbodygyromeanx - Mean of the FFT of the body gyro in the x direction.

56. fbodygyromeany - Mean of the FFT of the body gyro in the y direction.

57. fbodygyromeanz - Mean of the FFT of the body gyro in the z direction.

58. fbodygyrostdx - Standard deviation of the body gyro in the x direction.

59. fbodygyrostdy - Standard deviation of the body gyro in the y direction.

60. fbodygyrostdz - Standard deviation of the body gyro in the z direction.

61. fbodyaccmagmean - Mean of the FFT of the body acceleration magnitude.

62. fbodyaccmagstd - Standard deviation of the FFT of the body acceleration magnitude.

63. fbodybodyaccjerkmagmean - Mean of the FFT of the body acceleration jerk magnitude.

64. fbodybodyaccjerkmagstd - Standard Deviation of the FFT of the body acceleration jerk magnitude.

65. fbodybodygyromagmean - Mean of the FFT of the body gyro magnitude.

66. fbodybodygyromagstd - Standard deviation of the FFT of the body gyro magnitude.

67. fbodybodygyrojerkmagmean - Mean of the FFT of the body gyro jerk magnitude.

68. fbodybodygyrojerkmagstd - Standard deviation of the FFT of the body gyro jerk magnitude.


