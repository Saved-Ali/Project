#include <iostream>
using namespace std;

struct TreeNode {
    int val;
    TreeNode *left, *right;
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
};

int findKth(TreeNode* root, int &k) {
    if (!root) return -1;
    int left = findKth(root->left, k);
    if (k == 0) return left;
    if (--k == 0) return root->val;
    return findKth(root->right, k);
}

int main() {
    TreeNode* root = new TreeNode(5);
    root->left = new TreeNode(3);
    root->right = new TreeNode(6);
    root->left->left = new TreeNode(2);
    root->left->right = new TreeNode(4);
    root->left->left->left = new TreeNode(1);
    
    int k = 3;
    cout << findKth(root, k);
}
