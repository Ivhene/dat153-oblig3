.class public Lannotator/scanner/LocalClassScanner;
.super Lcom/sun/source/util/TreePathScanner;
.source "LocalClassScanner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/TreePathScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private found:Z

.field private index:I

.field private localClass:Lcom/sun/source/tree/ClassTree;


# direct methods
.method private constructor <init>(Lcom/sun/source/tree/ClassTree;)V
    .locals 1
    .param p1, "localClass"    # Lcom/sun/source/tree/ClassTree;

    .line 61
    invoke-direct {p0}, Lcom/sun/source/util/TreePathScanner;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lannotator/scanner/LocalClassScanner;->index:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lannotator/scanner/LocalClassScanner;->found:Z

    .line 64
    iput-object p1, p0, Lannotator/scanner/LocalClassScanner;->localClass:Lcom/sun/source/tree/ClassTree;

    .line 65
    return-void
.end method

.method public static indexOfClassTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/ClassTree;)I
    .locals 4
    .param p0, "path"    # Lcom/sun/source/util/TreePath;
    .param p1, "localClass"    # Lcom/sun/source/tree/ClassTree;

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "classesFound":I
    const/4 v1, 0x0

    .line 33
    .local v1, "localClassFound":Z
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 35
    const/4 v1, 0x1

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object p0

    .line 38
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_2
    new-instance v2, Lannotator/scanner/LocalClassScanner;

    invoke-direct {v2, p1}, Lannotator/scanner/LocalClassScanner;-><init>(Lcom/sun/source/tree/ClassTree;)V

    .line 43
    .local v2, "lcs":Lannotator/scanner/LocalClassScanner;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lannotator/scanner/LocalClassScanner;->scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-boolean v3, v2, Lannotator/scanner/LocalClassScanner;->found:Z

    if-eqz v3, :cond_3

    .line 45
    iget v3, v2, Lannotator/scanner/LocalClassScanner;->index:I

    return v3

    .line 47
    :cond_3
    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method public bridge synthetic visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lannotator/scanner/LocalClassScanner;->visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/BlockTree;
    .param p2, "level"    # Ljava/lang/Integer;

    .line 72
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 75
    invoke-interface {p1}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/StatementTree;

    .line 76
    .local v2, "statement":Lcom/sun/source/tree/StatementTree;
    iget-boolean v3, p0, Lannotator/scanner/LocalClassScanner;->found:Z

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/sun/source/tree/StatementTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_1

    .line 77
    move-object v3, v2

    check-cast v3, Lcom/sun/source/tree/ClassTree;

    .line 78
    .local v3, "c":Lcom/sun/source/tree/ClassTree;
    iget-object v4, p0, Lannotator/scanner/LocalClassScanner;->localClass:Lcom/sun/source/tree/ClassTree;

    if-ne v4, v2, :cond_0

    .line 79
    iput-boolean v1, p0, Lannotator/scanner/LocalClassScanner;->found:Z

    goto :goto_1

    .line 80
    :cond_0
    invoke-interface {v3}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    iget-object v5, p0, Lannotator/scanner/LocalClassScanner;->localClass:Lcom/sun/source/tree/ClassTree;

    invoke-interface {v5}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    iget v4, p0, Lannotator/scanner/LocalClassScanner;->index:I

    add-int/2addr v4, v1

    iput v4, p0, Lannotator/scanner/LocalClassScanner;->index:I

    .line 84
    .end local v2    # "statement":Lcom/sun/source/tree/StatementTree;
    .end local v3    # "c":Lcom/sun/source/tree/ClassTree;
    :cond_1
    :goto_1
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/sun/source/util/TreePathScanner;->visitBlock(Lcom/sun/source/tree/BlockTree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
