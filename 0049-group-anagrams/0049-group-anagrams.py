class Solution:
    def groupAnagrams(self, strs: list[str]) -> list[list[str]]:
        hash = {}
        for word in strs:
            x = "".join(sorted(word))
            if x not in hash:
                hash[x] = []
            hash[x].append(word)

        return list(hash.values())
