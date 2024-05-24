.class Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "SignatureAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignatureTreeAnnotator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 79
    iput-object p1, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;->this$0:Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    .line 80
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 81
    return-void
.end method


# virtual methods
.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 85
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isStringConcatenation(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;->this$0:Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->SIGNATURE_UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 88
    const-class v0, Lorg/checkerframework/checker/signature/qual/SignatureUnknown;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljava/lang/Class;)V

    .line 90
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 95
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isStringCompoundConcatenation(Lcom/sun/source/tree/CompoundAssignmentTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;->this$0:Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->SIGNATURE_UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 98
    const-class v0, Lorg/checkerframework/checker/signature/qual/SignatureUnknown;

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljava/lang/Class;)V

    .line 100
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 9
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 114
    iget-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;->this$0:Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    invoke-static {v0}, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->access$000(Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;->this$0:Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    invoke-static {v1}, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->access$100(Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;->this$0:Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    .line 116
    invoke-static {v0}, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->access$200(Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;->this$0:Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    invoke-static {v1}, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->access$300(Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v1

    .line 115
    invoke-static {p1, v0, v1}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 117
    :cond_0
    const/16 v0, 0x20

    .line 118
    .local v0, "oldChar":C
    const/16 v1, 0x20

    .line 119
    .local v1, "newChar":C
    iget-object v2, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;->this$0:Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    invoke-static {v2}, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->access$000(Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;->this$0:Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    invoke-static {v3}, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->access$400(Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 120
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/ExpressionTree;

    .line 121
    .local v2, "arg0":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/ExpressionTree;

    .line 122
    .local v3, "arg1":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v2}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->CHAR_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_1

    .line 123
    invoke-interface {v3}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->CHAR_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_1

    .line 124
    move-object v4, v2

    check-cast v4, Lcom/sun/source/tree/LiteralTree;

    invoke-interface {v4}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 125
    move-object v4, v3

    check-cast v4, Lcom/sun/source/tree/LiteralTree;

    invoke-interface {v4}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 127
    .end local v2    # "arg0":Lcom/sun/source/tree/ExpressionTree;
    .end local v3    # "arg1":Lcom/sun/source/tree/ExpressionTree;
    :cond_1
    goto :goto_0

    .line 128
    :cond_2
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/ExpressionTree;

    .line 129
    .restart local v2    # "arg0":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/ExpressionTree;

    .line 130
    .local v5, "arg1":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v2}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v7, :cond_3

    .line 131
    invoke-interface {v5}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v6, v7, :cond_3

    .line 132
    move-object v6, v2

    check-cast v6, Lcom/sun/source/tree/LiteralTree;

    invoke-interface {v6}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 133
    .local v6, "const0":Ljava/lang/String;
    move-object v7, v5

    check-cast v7, Lcom/sun/source/tree/LiteralTree;

    invoke-interface {v7}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 134
    .local v7, "const1":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v3, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v3, :cond_3

    .line 135
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 136
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 140
    .end local v2    # "arg0":Lcom/sun/source/tree/ExpressionTree;
    .end local v5    # "arg1":Lcom/sun/source/tree/ExpressionTree;
    .end local v6    # "const0":Ljava/lang/String;
    .end local v7    # "const1":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    .line 141
    .local v2, "receiver":Lcom/sun/source/tree/ExpressionTree;
    iget-object v3, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;->this$0:Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 142
    .local v3, "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/16 v4, 0x2f

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_4

    if-ne v1, v4, :cond_4

    const-class v6, Lorg/checkerframework/checker/signature/qual/BinaryName;

    .line 143
    invoke-virtual {v3, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 144
    iget-object v4, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;->this$0:Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->INTERNAL_FORM:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_1

    .line 145
    :cond_4
    if-ne v0, v4, :cond_5

    if-ne v1, v5, :cond_5

    const-class v4, Lorg/checkerframework/checker/signature/qual/InternalForm;

    .line 146
    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 147
    iget-object v4, p0, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory$SignatureTreeAnnotator;->this$0:Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/signature/SignatureAnnotatedTypeFactory;->BINARY_NAME:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 150
    .end local v0    # "oldChar":C
    .end local v1    # "newChar":C
    .end local v2    # "receiver":Lcom/sun/source/tree/ExpressionTree;
    .end local v3    # "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
