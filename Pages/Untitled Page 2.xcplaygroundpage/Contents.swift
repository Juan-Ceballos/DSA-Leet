import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    var c = (m + n) - 1
    var i = m - 1
    var j = n - 1
    
    print("hello")
    while c >= 0 {
        print(c)
        print("in while")
        print("i \(i)")
        print("j \(j)")
        
        if nums2[j] > nums1[i]  {
            print("a")
            nums1[c] = nums2[j]
            print("b")
            j -= 1
            print(nums1)
        } else {
            print("c")
            nums1[c] = nums1[i]
            print("d")
            if i == 0 {
                nums1[0] = nums2[0]
            }
            else {i -= 1}
            print(nums1)
            
        }
        c -= 1
    }
}

var arr = [2,0]
merge(&arr, 1, [1], 1)
