import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    
    // last non-placeholder index
    var index1 = m - 1
    
    // end of nums2
    var index2 = n - 1
    
    // end of nums1
    var targetIndex = nums1.count - 1
    
    // while still w/in array covering all values to organize
    // once both arrays are done organization is done
    while index1 >= 0 || index2 >= 0 {
        
        // defer: before leaving this while loop targetIndex --
        defer {
            targetIndex -= 1
        }
        
        // if all values checked and out of second arr
        // placeholder index set to whats left in first arr
        // this assumes no more values in other array so only thing
        // to add in order of greatest to least is in other array
        // continue: all that's required in loop is done go back to beginning
        if index2 < 0 {
            nums1[targetIndex] = nums1[index1]
            index1 -= 1
            continue
        }
        
        // if at -1 in first arr
        // placeholder set to whats left in nums 2
        // continue: all that's required in loop is done go back to beginning
        if index1 < 0 {
            nums1[targetIndex] = nums2[index2]
            index2 -= 1
            continue
        }
        
        // if current last element of second arr is greater than first
        // take current last non-placeholder and insert what we found in second arr
        // move down the index of second arr to keep checking highest to lowest value
        // continue: all that's required in loop is done go back to beginning
        if nums2[index2] >= nums1[index1] {
            nums1[targetIndex] = nums2[index2]
            index2 -= 1
            continue
        }
        
        // if none of the other conditionals where triggered by default
        // we'll assume first array w/ placeholder has higher value
        // then same relative spot in nums 2, so current non-placeholder
        // is set to this value
        nums1[targetIndex] = nums1[index1]
        index1 -= 1
    }
}

var mainArs = [2, 3, 5, 0, 0, 0]
merge(&mainArs, 3, [2, 6, 8], 3)
