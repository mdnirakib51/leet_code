class Solution {
  int maxArea(List<int> height) {
    int left = 0; 
    // 0
    // left+++; 1
    // 1
    int right = height.length - 1;
    // 9 - 1 = 8
    // 8
    // right--; 7
    int maxArea = 0;

    while (left < right) {
      int h = height[left] < height[right] ? height[left] : height[right];
      // h = 1 < 7 ? 7 : 1; = 7
      // h = 8 < 7 ? 7 : 1; = 7
      // h = 8 < 3 ? 7 : 1; = 1

      int w = right - left;
      // w = 8 - 0 = 8
      // w = 8 - 1 = 7
      // w = 7 - 1 = 6

      // area বের করা
      int area = h * w;
      // area =  7 * 8 = 56
      // area =  7 * 7 = 49
      // area =  1 * 6 = 6

      if (area > maxArea) { 
        // 56 > 0
        // 49 > 56
        maxArea = area; 
        // maxArea = 56
        // maxArea = 49
      }

      // ছোট side এর pointer move করা
      if (height[left] < height[right]) { 
        // 1 < 7
        // 8 < 7
        left++; // left = 1
      } else {
        right--;
      }
    }

    return maxArea;
  }
}
