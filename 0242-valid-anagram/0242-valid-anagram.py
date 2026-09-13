class Solution(object):
    def isAnagram(self, s, t):
        freq = {}
        for i in s:
            if i in freq:
                freq[i] += 1
            else:
                freq[i] = 1

        freq2 = {}
        for i in t:
            if i in freq2:
                freq2[i] += 1
            else:
                freq2[i] = 1

        return freq == freq2