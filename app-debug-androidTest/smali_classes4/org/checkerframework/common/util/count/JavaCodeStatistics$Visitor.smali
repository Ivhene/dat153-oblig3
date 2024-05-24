.class Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;
.super Lorg/checkerframework/framework/source/SourceVisitor;
.source "JavaCodeStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/util/count/JavaCodeStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Visitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/source/SourceVisitor<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/util/count/JavaCodeStatistics;Lorg/checkerframework/common/util/count/JavaCodeStatistics;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/common/util/count/JavaCodeStatistics;
    .param p2, "l"    # Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    .line 77
    iput-object p1, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    .line 78
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/source/SourceVisitor;-><init>(Lorg/checkerframework/framework/source/SourceChecker;)V

    .line 79
    return-void
.end method


# virtual methods
.method public bridge synthetic visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "node"    # Lcom/sun/source/tree/AnnotationTree;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 83
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->annotationFromAnnotationTree(Lcom/sun/source/tree/AnnotationTree;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 84
    .local v0, "annotationMirror":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/SuppressWarnings;

    .line 85
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const-class v1, Ljava/lang/String;

    .line 87
    const-string v2, "value"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 89
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    .local v4, "foundKey":Ljava/lang/String;
    iget-object v5, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    iget-object v5, v5, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->warningKeys:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 91
    .local v8, "indexKey":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 92
    iget-object v2, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    iget v5, v2, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->numberOfIndexWarningSuppressions:I

    add-int/2addr v5, v3

    iput v5, v2, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->numberOfIndexWarningSuppressions:I

    .line 93
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Void;

    return-object v2

    .line 90
    .end local v8    # "indexKey":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 96
    .end local v4    # "foundKey":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 98
    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/ArrayAccessTree;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 165
    iget-object v0, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    iget v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->arrayAccesses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->arrayAccesses:I

    .line 166
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "tree"    # Lcom/sun/source/tree/AssertTree;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 103
    invoke-interface {p1}, Lcom/sun/source/tree/AssertTree;->getDetail()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 104
    .local v0, "detail":Lcom/sun/source/tree/ExpressionTree;
    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    iget-object v2, v2, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->warningKeys:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 107
    .local v5, "indexKey":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@AssumeAssertion("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 109
    iget-object v2, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    iget v3, v2, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->numberOfIndexWarningSuppressions:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->numberOfIndexWarningSuppressions:I

    .line 110
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Void;

    return-object v2

    .line 106
    .end local v5    # "indexKey":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/ClassTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 119
    iget-object v0, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->shouldSkipDefs(Lcom/sun/source/tree/ClassTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    iget v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->generics:I

    invoke-interface {p1}, Lcom/sun/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->generics:I

    .line 126
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 153
    iget-object v0, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    iget v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->generics:I

    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->generics:I

    .line 154
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 147
    iget-object v0, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    iget v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->generics:I

    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->generics:I

    .line 148
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 131
    iget-object v0, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    iget v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->arrayAccesses:I

    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->arrayAccesses:I

    .line 133
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 138
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isDiamondTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    iget v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->generics:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->generics:I

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    iget v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->generics:I

    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->generics:I

    .line 142
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/ParameterizedTypeTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 159
    iget-object v0, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    iget v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->generics:I

    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->generics:I

    .line 160
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 171
    iget-object v0, p0, Lorg/checkerframework/common/util/count/JavaCodeStatistics$Visitor;->this$0:Lorg/checkerframework/common/util/count/JavaCodeStatistics;

    iget v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->typecasts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/checkerframework/common/util/count/JavaCodeStatistics;->typecasts:I

    .line 172
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/source/SourceVisitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
