; Binary Tree Node Types
(: BinaryTree Type)
(: NodeType Type)
(: NodeValue Type)


; Node value 
(: Value (-> Symbol NodeType NodeValue))

; Define the node types
(: AND NodeType)
(: OR NodeType)
(: NOT NodeType)
(: LITERAL NodeType)

; Define the tree structure
(: EmptyTree BinaryTree)
(: TreeNode (-> NodeValue BinaryTree BinaryTree BinaryTree))

