.class public Lannotator/find/LocalVariableCriterion;
.super Ljava/lang/Object;
.source "LocalVariableCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fullMethodName:Ljava/lang/String;

.field private final loc:Lscenelib/annotations/el/LocalLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lscenelib/annotations/el/LocalLocation;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "loc"    # Lscenelib/annotations/el/LocalLocation;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/LocalVariableCriterion;->fullMethodName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lannotator/find/LocalVariableCriterion;->loc:Lscenelib/annotations/el/LocalLocation;

    .line 29
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 117
    sget-object v0, Lannotator/find/Criterion$Kind;->LOCAL_VARIABLE:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 13
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 42
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 43
    return v0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 47
    .local v1, "parentPath":Lcom/sun/source/util/TreePath;
    if-nez v1, :cond_1

    .line 48
    return v0

    .line 51
    :cond_1
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 52
    .local v2, "parent":Lcom/sun/source/tree/Tree;
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 53
    .local v3, "leaf":Lcom/sun/source/tree/Tree;
    instance-of v4, v2, Lcom/sun/source/tree/VariableTree;

    if-eqz v4, :cond_7

    .line 56
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v4

    instance-of v4, v4, Lcom/sun/source/tree/MethodTree;

    if-eqz v4, :cond_2

    .line 58
    return v0

    .line 61
    :cond_2
    move-object v4, v2

    check-cast v4, Lcom/sun/source/tree/VariableTree;

    .line 62
    .local v4, "vtt":Lcom/sun/source/tree/VariableTree;
    invoke-interface {v4}, Lcom/sun/source/tree/VariableTree;->getInitializer()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 64
    return v0

    .line 67
    :cond_3
    invoke-interface {v4}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "varName":Ljava/lang/String;
    iget-object v6, p0, Lannotator/find/LocalVariableCriterion;->loc:Lscenelib/annotations/el/LocalLocation;

    iget-object v6, v6, Lscenelib/annotations/el/LocalLocation;->varName:Ljava/lang/String;

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    .line 70
    invoke-static {p1, v4, v5}, Lannotator/scanner/LocalVariableScanner;->indexOfVarTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;Ljava/lang/String;)I

    move-result v6

    .line 71
    .local v6, "varIndex":I
    iget-object v8, p0, Lannotator/find/LocalVariableCriterion;->loc:Lscenelib/annotations/el/LocalLocation;

    iget v8, v8, Lscenelib/annotations/el/LocalLocation;->varIndex:I

    if-ne v8, v6, :cond_4

    move v0, v7

    :cond_4
    return v0

    .line 74
    .end local v6    # "varIndex":I
    :cond_5
    iget-object v6, p0, Lannotator/find/LocalVariableCriterion;->fullMethodName:Ljava/lang/String;

    iget-object v8, p0, Lannotator/find/LocalVariableCriterion;->loc:Lscenelib/annotations/el/LocalLocation;

    iget v8, v8, Lscenelib/annotations/el/LocalLocation;->index:I

    .line 75
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lannotator/find/LocalVariableCriterion;->loc:Lscenelib/annotations/el/LocalLocation;

    iget v9, v9, Lscenelib/annotations/el/LocalLocation;->scopeStart:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sun/tools/javac/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sun/tools/javac/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/Pair;

    move-result-object v6

    .line 76
    .local v6, "key":Lcom/sun/tools/javac/util/Pair;, "Lcom/sun/tools/javac/util/Pair<Ljava/lang/String;Lcom/sun/tools/javac/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    nop

    .line 77
    invoke-static {v6}, Lannotator/scanner/LocalVariableScanner;->getFromMethodNameIndexMap(Lcom/sun/tools/javac/util/Pair;)Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "potentialVarName":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 79
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 83
    iget-object v9, p0, Lannotator/find/LocalVariableCriterion;->fullMethodName:Ljava/lang/String;

    .line 84
    invoke-static {v9, v8}, Lannotator/scanner/LocalVariableScanner;->getFromMethodNameCounter(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 86
    .local v9, "allOffsetsWithThisName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lannotator/find/LocalVariableCriterion;->loc:Lscenelib/annotations/el/LocalLocation;

    iget v10, v10, Lscenelib/annotations/el/LocalLocation;->scopeStart:I

    .line 87
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 91
    .local v10, "thisVariablesOffset":Ljava/lang/Integer;
    invoke-static {p1, v2, v8}, Lannotator/scanner/LocalVariableScanner;->indexOfVarTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;Ljava/lang/String;)I

    move-result v11

    .line 93
    .local v11, "i":I
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v11, v12, :cond_6

    .line 94
    return v7

    .line 98
    .end local v9    # "allOffsetsWithThisName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "thisVariablesOffset":Ljava/lang/Integer;
    .end local v11    # "i":I
    :cond_6
    return v0

    .line 107
    .end local v4    # "vtt":Lcom/sun/source/tree/VariableTree;
    .end local v5    # "varName":Ljava/lang/String;
    .end local v6    # "key":Lcom/sun/tools/javac/util/Pair;, "Lcom/sun/tools/javac/util/Pair<Ljava/lang/String;Lcom/sun/tools/javac/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .end local v8    # "potentialVarName":Ljava/lang/String;
    :cond_7
    instance-of v4, v2, Lcom/sun/source/tree/MethodTree;

    if-eqz v4, :cond_8

    .line 108
    return v0

    .line 110
    :cond_8
    invoke-virtual {p0, v1}, Lannotator/find/LocalVariableCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 33
    if-nez p1, :cond_0

    .line 34
    const/4 v0, 0x0

    return v0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 37
    invoke-virtual {p0, p1}, Lannotator/find/LocalVariableCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalVariableCriterion: in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/LocalVariableCriterion;->fullMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/LocalVariableCriterion;->loc:Lscenelib/annotations/el/LocalLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
